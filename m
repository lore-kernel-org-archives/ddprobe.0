Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 071F330F542
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758668394; cv=none; b=Opz23u+pmj8w+93xl2w/7szrQdher/KVHhd8fYey94+0uw4kKlW2y3JbFI/cLldkixSGVHJpeIm2YQU6MM/sl6uXKQ5eoOSTS2y2b+t0mE1E/OZhvRqWgpYSYk0sURAd7tOcv6S/1ZaD9K3K+can7rwO+Qxxkr3ELWgRIEASIrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758668394; c=relaxed/simple;
	bh=17T+45Wt4wX6JN4fB4yryRD7Ry8DRyVNdbyS5elpVYw=;
	h=To:Subject:From:Message-Id:Date; b=axxb+EBEqKXKgJxXCPjtXlQRPSGvZ5hpE7DMGPZxa0O9StcXOEssqcABLigHX4V51QlXSh4nhpyky6rbi2uhwo2Cb4iro4ICd7/6ou6O8ygt/+mAWpn2DbqGCNMMDrprsLBI11uO0aopOvQeOLzEFYehTwRVY51X7uGTEJZTzU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fsVHBaZB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fsVHBaZB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1281C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758668393;
	bh=17T+45Wt4wX6JN4fB4yryRD7Ry8DRyVNdbyS5elpVYw=;
	h=To:Subject:From:Date:From;
	b=fsVHBaZB7KD7NqB90HEW4F8bxzNofqAWcL4MeevcuGb6+RHoou0ahI/jxpAyRGilM
	 VANnbiQ4xX+tVvuC4qMXymoG4TPxBOfoLLiLeeUZvlfbAHtGbcUTMgIQ8nuodw24OQ
	 a3903d8FpPvZJaw3/UIr294mcrl7jOCDUPveq4Lo2Ch67MU5arZOn5M27m8jgJBVs1
	 VzJ6IqLr4B1QSw7FJA9+rFbmzdWsCvyIUdtwU7O+KzfUidsSmet2rm8X5dDbamDq8p
	 lJZwMufaVs/rtvivjeH/Za9J7hRzI9cdZJ8QYNMrPW/CnUJr77Pb8Ou9H61QOOabQK
	 CXb12Vs14sL5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E614CAC5AC
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175866839357.28687.1920915142037314956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64032ac33b5b359887cfcceaa0aa03c37d1d4557d0ffae06480b1a7611488377
Date: Tue, 23 Sep 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758668393
