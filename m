Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74DAC199B8
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 23:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716074543; cv=none; b=tW570wkue0VHbX/HQei8ADPiVP9UhLoTZcaTC5XehqyUB+l1/YLt/j9sMjghRNgzFxVNwnCY1qe7E9+wSQb96Hq7o6mG0IWkyJfQoTScunZEvamuAzGo1SsLxV/muihfetBMgq4X9veSaW0vrAMcNM5t7SdyFqk4hqWih8yxOVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716074543; c=relaxed/simple;
	bh=kbLDUh80/e/8TwVV/M3xH4uZbZW2FeKFrkJaX4VKWWc=;
	h=To:Subject:From:Message-Id:Date; b=i1fmwr53ieBnnXm/kVkEhS4D8lAEFXYV7taggDeI/403msRxuk3Nhk8T9NfmndR27UHaTxj7sWzISqA62RcUikdA6sileBiuorx2cRbq2HPKBokoJjoECMOmHy/iSlo4YVVsW8woSfcdbWPAWIph9ordHtVI8e2cDFDmLvfe64Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NXR4dPFp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NXR4dPFp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8C9EC32782
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 23:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716074542;
	bh=kbLDUh80/e/8TwVV/M3xH4uZbZW2FeKFrkJaX4VKWWc=;
	h=To:Subject:From:Date:From;
	b=NXR4dPFpwim3wwhjrrJlBkX8xXwYSXFRrfKZX7SZxSb7y5MK70LediVV6hjp1S/L2
	 h3xeKs+qhhE9clXQ+qR9HE6/rTcm/RLuESWPXznASCwPwYDpbm6vEPLENmKfdVJbl7
	 +gt8sXx1+dkpESqQGOU6fSGsdH2LTjLGbO1CyoR+aeOfJZ9ohvKtGTSFPux0Qvtpgx
	 NZn6j/aPzOcpAgHe/fvVWu6vzmLS16z226OC97RlyjzMKWp2eRJJVn6v3bC8lX86Yu
	 tzPbpb+2oqyWT1ddPR5ynnDlv1x2kkbNIy/JFRvugqLC4DCPH5p0JVvFlWskwbgDBo
	 FN2Cq1t1JF+3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0A97C25B74
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 23:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171607454276.27116.6874868875126374933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d38be3bae159b40fff61df760166e0a59d502af721879c62dea1fdb702a797a9
Date: Sat, 18 May 2024 23:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716074542
