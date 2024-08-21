Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF801CA81
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724208954; cv=none; b=Ey/Lt8wex3/bizZivkY9bq6b4dmvmS5TRjDXjC2f5HlmbM634z6mPWb8MxbmT/3sfOsMDhhULXNjcCp4XXXkpOxVFAOzZCvFugCOkTuebTXA++eZR/RpOQUCDKa5pzzmQ7chqxFweSgrHJ2qEvux5/hYtE/h+O5xafsMBZfclS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724208954; c=relaxed/simple;
	bh=jDsbHoKWzomo1tGjY0do0NRiCtVROCW5zengwZ7NIN4=;
	h=To:Subject:From:Message-Id:Date; b=c6gWdwi1aO9cG3y/tqf8zmVVU746GKPbOd7GrCycVZSGR9T+eo/3THkiP2CUXGfrsve40vrVi1dwG9Al1ZAWlFSVQl5QSrvxU/1MPlUlSEW4uSzIDPAt4rs+9YR4r2u8imoEPtZcY8IdzRGXO9Cfs9HZ7yoIiOw1kRmhLjGspiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HGMJiBXG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HGMJiBXG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E79C4AF12
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724208953;
	bh=jDsbHoKWzomo1tGjY0do0NRiCtVROCW5zengwZ7NIN4=;
	h=To:Subject:From:Date:From;
	b=HGMJiBXGSa4uE9UgvqTC+tKiu73mql1T14Vh7wlTCOtTWOhAzGExQeDX4NFJomxCE
	 1RrXJU1tR/nZoOMd9lBS5GZ/j2rqmy7I7RP4kT6BkN7vweDyvKZsqL1qksaPDj1Gee
	 OLbmhwmCSn1HMCN1sRZIDWpcHM3VycCRrJp/+LD8ROv15/3AR23Qum8Eegqxn12Cgv
	 wRP9NIhYTDywCz93yxxWjpYGDaPsZImXaXooMg6bZTYXQe/iiQYYCgH+GZyTLwfGMn
	 bI1gLttF5e3tWFrvys49Mu2hzoAV1FHXQqV6qveaIyV+7iszQ23j/Bj//fvDdon6Pc
	 UOtwGOAzKaN+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96849C531DF
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172420895359.7648.16974448781082945380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28b39164cde09e41699e8f2af5db88ffa86014ba4adae67bf1032e9a6f2c073b
Date: Wed, 21 Aug 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724208953
