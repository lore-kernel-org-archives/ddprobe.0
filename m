Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C656381AF
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791635434; cv=none; b=ZINNgL0ixMPHsmLRyydP1gB43uJvMvv6XOOuqACnfQmlkqKnmRCgXjeHsbt9GVzng7sjlCmQO3gbHWEx5nrwC5BleLf1fJAR4BJTC1HMmc1F2BvsuOYMDGp96Wk4CPj4ejdTFtkMoZP8q7e3S0qaxIShJleD+Wfxqd6253Xn07g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791635434; c=relaxed/simple;
	bh=u2j3iZQtO/zc2uZOhlRoWa0Mmv0Jrmy41KrZQEUO/hg=;
	h=To:Subject:From:Message-Id:Date; b=eCk9klNonbxIfbemmUtx6rpPl6g1+cZ/48lRfoBPAPnpUkSlisBIpY6TeeHnhZd2IK4UOoitfu/7AiNThBbth6inxXl4bhaioPXSskEvvpvjbdgB7Af6zbM2ueh6GB44d8MCEJTWTdBBIJLsfdFPc4jQ0+TnnQPNxTrnz40pQgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dx6FuAUU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dx6FuAUU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C960BC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791635433;
	bh=u2j3iZQtO/zc2uZOhlRoWa0Mmv0Jrmy41KrZQEUO/hg=;
	h=To:Subject:From:Date:From;
	b=Dx6FuAUUtoMohVnSLwrB6kzmHkKJleSWS3orVL4v9+ARrTPVulGHC3S/Tj9u8Ka9j
	 Kl8C/4oiRY6IYshtPlbFORsUrrUKnkyzKdPqQGykdaKdT0fhP04RlDKe6b8XBoh+93
	 TjCdt0vaQnnxWoYTv8ATR/UEGqflawE4XsakgbC7waSG4ndY3GTklnongYE/WM9WEV
	 J9sxfmjTc4N18iJa/l6Zc7CVOJwIw2wsHEGexNT8bQMbi3AQCWeGwem8HL6aYYYUrU
	 8igspzuaNyN6MdN/+pofJFrkatxRSVOcWks9YCu2hEXzQDNvT8+oA9UMqZH9lVC1oG
	 k33axB2fWtHVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9756CA9EBE
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179163543368.5462.17371782009263649594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05df819273c91f22c4a76ca9867c991d33eccc24cbe8cd05ef1dac0c6c44feb0
Date: Sat, 10 Oct 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791635433
