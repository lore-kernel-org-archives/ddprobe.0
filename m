Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D6F28A72F
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 15:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767195834; cv=none; b=eprd7pBOp439bFPTmNttcusxjLZujriPFHTskQfl9PmpUtLLCdclKnb2uDdWp5eAn+N7O9V1FPd7568YNOxoZsbD8haMt66eq3vXb+EB8kU2S1EtdbpgB75F+KifUoOdGmbo+C4DJHRDeEhJ7Am+Y03csyGuzGLghrusqhwp+Q0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767195834; c=relaxed/simple;
	bh=yGm9PxxR+4iGV7BCmenMk1/5a0h/6+Tw8WfjU3ZLSX0=;
	h=To:Subject:From:Message-Id:Date; b=aCh0Wzkm+PU/U4SM6mOwEFmKlp3B6QUbT3HGn+mdjLfGPKAxtGL3RqjRvudWTAVh4hU7x7+DtKqJQaWv5LojzJjnZYPMV//j9A/t/5iIGan3n4PbkCD3Z+5A3JGYgGbZcR4zgUKtSUof7x2l1SnOlSuFPqU7XofbMfWZDiQi5Y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=koAM/URC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="koAM/URC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2771C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767195833;
	bh=yGm9PxxR+4iGV7BCmenMk1/5a0h/6+Tw8WfjU3ZLSX0=;
	h=To:Subject:From:Date:From;
	b=koAM/URCHydcAMMcziR06R3bxXhCcsIfnBs2737WyCJncUT3QULSihfDphR3wIfus
	 2ieXKgEdTl8tgjv8LmG55mmcreNcavHsLrI37qMxfvMLTkXM5md9CwqN3pDgIoPhim
	 h5qmBKLD716JJrw/7HgoZX7GoGfKhWVbCArRYGr4LlEjtVH1NyXHYwPYsL6isWkvDQ
	 eUW9nMZuMx2VoyuIm/YW70wog5unzpBodyH7T2fK5VlT8+DlHX1uzldvWavwNLrdVC
	 cC2QOJ4rDFuowxAFdhM/Bco+GPMbSqbl8DDSuRYz1bqIcRJsx6BPB0FnuRbc3qHoV4
	 8qOo0QYghSGww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9163AEE6457
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 15:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176719583358.22635.9907426024787987658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 972fd68a1be6ca48df4696ca3f9d59b6649777b08011627bdcb8e429cb1908f3
Date: Wed, 31 Dec 2025 15:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767195833
