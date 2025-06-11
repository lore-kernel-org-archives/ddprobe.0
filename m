Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1814717BBF
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749610194; cv=none; b=QIEXeqY8+YiXqEGKMB6c4jnNk0j4CeWJMx97qTwquV17TS2qrrVq/bc26RQ5XFXSDu/3Q5j18qhaTkDp2fZciDpgelCquVnVCwMgz7PMuMJV6j8DNDwfZ+7qZ+faPIJwDjlEgwmAA8ab+HfHLG95Fyi69M2TbUPbBp09wh7JokE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749610194; c=relaxed/simple;
	bh=dYWaUQwIExZJGmlVHbIZzHHNUV20MLY8JaOE/IumrAs=;
	h=To:Subject:From:Message-Id:Date; b=QmTb4ac0B+GNM//KF2Ys2ttsF41iDy9MWgjcug7ou1YlC+mt0jaJ4YYTQvHJmBmgD7iU36g34D22ymQADxTpNt2/sZpFwLPyLPwlWRup7LoD6F9tv2daIL6GiXyxMhWLiTKrs97VHtroRP3lTl9LZAJ3bdl0RgyzlzxgzRUDYBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kwTMgKyb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kwTMgKyb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D8BDC4CEED
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749610193;
	bh=dYWaUQwIExZJGmlVHbIZzHHNUV20MLY8JaOE/IumrAs=;
	h=To:Subject:From:Date:From;
	b=kwTMgKybKp437iqAQZPKGnVgvyIxVXCi8Eeq16e11nYKtzlUCSGGLVzuZ2uIzMQ40
	 HtUzWFTbL1YIrFYWy+4pG8Ajed+24aqiwZxSh/qLQedtDKoTqOovoGX6UWstezA/aR
	 35jDTEG/eq4ymkB1aNBf62Ysb1Uk2WfIvO7A4hpPUJz3RUEWFQvuzhp5R0k7mgbr4R
	 RVYdsgS3Iu0IFuWcnSbQ/UJw4nThEoyaKDcL/HJ1/Jpd5bBdZPBT5JRSMqRd7WxnmR
	 sK+zx0MxQ0g65j+qJ10BFRLg4jKEgx19d83dAswtwPUtQmVcm0Ub9HPxB+UOjWzF9k
	 ynLprxsATAGdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DFC8C61DB2
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174961019357.4489.6267665407479291054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 895b9ee48a4517579057e6a5376e7863877389512b5485e6560e620d7bbe196f
Date: Wed, 11 Jun 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749610193
