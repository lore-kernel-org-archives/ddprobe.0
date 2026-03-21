Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 016E92EDD69
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 04:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774068894; cv=none; b=tczCmZFOx+DmhewHlb3CJ431Zor6JfXYp504zpfBqVYMPOVp5O2m3SHVITK7BVRPCGswB3V8fCb0j2ngm6sVc56blnLoF+ZWc5iJUQ9jxnD/SWEMedlwNbtklYCvizLLG/wMJ/avCDMXr4Sl2lwmQvc9z3WunZtXI7M7ZgiXovg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774068894; c=relaxed/simple;
	bh=pGEWbKZrvFOiqimCWO/yrlTWPid4Zv4woHwSyfvyAT4=;
	h=To:Subject:From:Message-Id:Date; b=X4gMKL+RuBuv+pRgOhpk2w6IBYefBHLEV40GP6rjd3PCzKrv2Jqdm/7L8PU50nAzZmYzhZEKEwnQLbGiDDpV5qZFSTZ7broDgHtKULggBSd7OxfVphiABasdwQ++SLpMvdvrsOa1RrqoKYL/hSNxax43WZLuMiNuc22j/d0lgCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lpMFJ/7V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lpMFJ/7V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61C1C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 04:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774068893;
	bh=pGEWbKZrvFOiqimCWO/yrlTWPid4Zv4woHwSyfvyAT4=;
	h=To:Subject:From:Date:From;
	b=lpMFJ/7VcVa6HrP5C+kqnusFqMEG35T/Lac6gpz2RPVFOnJnJMmdYTFZLo8SF3Iqu
	 Axmr7XvqTUGzBQRYnEFcCHFM31sE5h6DRfRct1a+2KMcPi9bLAuNAjlOrMazX4eCta
	 cJqQs5113tiUJphaVltzC0L6axHf7I02SyxjaktaG4oS9lUfBR5/fljUV6CWC9M3GU
	 maMYKTuwiel2lM3vhaSAL7vJFA6mfmarS7+UOFlO8Cu0Ered6CG9RKPZ79BL1zfQST
	 S+HIxJbkB/gCGhIIE0PJCqriBCRpx4P8jrlCCFP+iLjGrPHDEQVeOfWzRK/DwgQKAF
	 3m5L4hb9Ihmng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9463F1093170
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 04:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177406889357.28552.6456421393065944310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ff530b6b7fcef9daef67269ce27201e93c2ab1bf5f207832b828e775fa05605
Date: Sat, 21 Mar 2026 04:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774068893
