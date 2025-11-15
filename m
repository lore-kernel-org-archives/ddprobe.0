Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BE3D21D00A
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 17:20:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763227254; cv=none; b=eRPnpyMoqtVDuOqlkqeyKNEBXphQ2XfO5Yhcb5QTr7ugatYR2MQoQ+2gLMjmTPJzgJejiU2wvQV21alYO39LjhFCUIssYmfB1a+1j5ET51XV50/ZZLPbPFFRapOxytKKG1HG12bz4Umy0fjs2rFztqXhzIqYed+yoS/b+GflpGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763227254; c=relaxed/simple;
	bh=aeVtxNUVZOtjaIyo/buMehwhbJmuPtOZJKSrQAcZMo0=;
	h=To:Subject:From:Message-Id:Date; b=gdirsjlLd/Tqi05CIkEl1FV4WNQGk0Vz0TwxU57aqfhYA67XviPWTlxF6053smIazcJLBTKlogg4kTucQZQSlNo6CxQa83ckpiBtj0wFY9VuREPhPmaITN4JQQdKxlPLOY8mXCv+Qyh5P6pZeoT7a2GHN1YuflmJZMk/KNxtL7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ns2ttVq5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ns2ttVq5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAA96C2BC9E
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 17:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763227253;
	bh=aeVtxNUVZOtjaIyo/buMehwhbJmuPtOZJKSrQAcZMo0=;
	h=To:Subject:From:Date:From;
	b=ns2ttVq5flxl80beoti/I9rNQWUe2MbaFw+iRKqAvE41w63d/gQQxwkniol5Od+MP
	 kV491pC/jA/WN+YsO4+CLTqIY1YfAZdxUd/kcoc9vONodH9Ne/+P51Yw5DSYqZA+WY
	 JXYRXwln4SLI2siCITnecbwVAGJeUrz2njqUz+FC6N4qiAyaTJlbpsMBiXE26Q6ECz
	 8p6LNNLK/P0D3qPVlceXBjC60F+biENeeSoYYCYtEAtjY5zXT/trvIvI67AY9ykUwJ
	 9/YJcoAeoZtcqrPwzvs53pw4yQANChCzvSXJNVyH6jwFNm10PTpyg66Lj4MVC5FfXi
	 3T68FWy8+mJgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4F8BCEB2E4
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 17:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176322725366.20240.3255780670983343435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 406673a0e04f3c6c2cc0c406d1ac51c39116255365e9c6452ff97d7c91ba91b5
Date: Sat, 15 Nov 2025 17:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763227253
