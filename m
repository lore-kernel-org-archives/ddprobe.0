Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233722566
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 06:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711868297; cv=none; b=XtJBE6uMmk3OrFIjTYe8yYanzsFbL8HLocX4EFxefAFYN+J32E4jyVJpBqPM1Ug6sFuoVHnytDLZexuhxrfcBmJq/eM7UHUTgR4bdVBxSDkME9ozBbb9zfq9aJE9kfe55UcxNy5VmK+nURPj/YR24WRDdBMNWYoBsV1/6ngNA88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711868297; c=relaxed/simple;
	bh=sCF6J/4OB5lXA1y/DcVVMFNRZnp3/1IjhSVMFhM9m2M=;
	h=To:Subject:From:Message-Id:Date; b=AnSnii5nPAUAzvsbldeT042blaZnCaWBZ4LWB465WxhUhbKpv0wNJnGAxOn/xJp7DDPsati7ui+FIqnFrPoO+1LhJESVep9a84au1zv5kLrPmT1fsL5fTHA8Wfac4zie+mcSdcwuZIYgqks3dm+7nlMOsF0emIzcx91yVKYwWPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uvOVjVgc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uvOVjVgc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8173FC433C7
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 06:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711868296;
	bh=sCF6J/4OB5lXA1y/DcVVMFNRZnp3/1IjhSVMFhM9m2M=;
	h=To:Subject:From:Date:From;
	b=uvOVjVgchyb7aYmi5ZA0uCOB9pHt5LUzCMdzu40Tl7Rpn0bHoHiXU3hX5gyiwTRAZ
	 nQwmEOB2xeB0ED2TbIxwNHEjRrixuBIUDFEy5fAIibO3wyialaXYvaw6Ai+Zl14/ub
	 STfuBxalefGJGVe+1Jr0a5Sh5bSdlTrnq92MLX7zHKPmm6w0T2SUKRKMMs0hVGMmGz
	 Apl4TPAewyFPJ//EZlwXl0EK4rZ9WZz2ndfcJxB2S7o1+T/Gz54BD+h2j59i0iEAbG
	 J+M8hkKmvxeX5u5gIoEJy0RUM7ku5V6RouGwQKRYbXIFFLlt6bqmuKjBO8pJ30i2LB
	 b0BdIlI+pyKNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6926ACD1288
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 06:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171186829639.24558.17711793045963485349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5166db7ed8cd93c12d77b134bb1eb2aa66b5692b5981ac27ea62938c41567af
Date: Sun, 31 Mar 2024 06:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711868296
