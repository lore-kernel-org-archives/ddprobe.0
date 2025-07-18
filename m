Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327801BD9CE
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752865794; cv=none; b=PIrMwTxDes5W03V0gUm1uqdLNxFWFLzPolrybVmzw4nEMMXVybI6mWFc4y3l53xiCwABvI8kcK1cU0SYF4YtKtrhNvywryvD0C5ePx6UVFGKL2N/e7e8/wPgbm+vqJen+fyo6b+qof57CvTVci+2PUMqS6E7ajTbsO67AvcbbW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752865794; c=relaxed/simple;
	bh=UCt6KSXCsBrY6k6KNbkuwSWb6mAHuqihHrX57dcp5cE=;
	h=To:Subject:From:Message-Id:Date; b=LbWOdV9K0uA4ZfGuiPpjCwE2L1aH5lY9SyoB1dxAX2PsTnKr+cRYCu/8L2fEkMvYMRkvOsl50v+u7eIZg1VDQ2QRT8hdqVIqIc6tE1BbV+bLexxZlevuzd8slVFOFa92TAsmFSuCkr18M1h4rMDEB6QSvX23RDYppTIsFwQqutI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Azj0Z2dG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Azj0Z2dG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7B1C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752865793;
	bh=UCt6KSXCsBrY6k6KNbkuwSWb6mAHuqihHrX57dcp5cE=;
	h=To:Subject:From:Date:From;
	b=Azj0Z2dGaE+0fTEXtsEJ3Joewc0yCOHMQyBtUh7yocfJS8mIIJEjSCwfb2WG7WILP
	 0mmve2xUTQ2fAV28OWqotfKf1yKHC4Rlybc1IfdPyw24r9q9pq+CHYjhnGjvSxypV0
	 ecYG+qt5if2wp6VqUQBpNuTGTB4t2yDseC++QI+/0PEWEXEn8/ZIHCkVRoyzD07QcG
	 HTJVU0LQvO0u7R0J1YE9zFAnL+Vd+e4l6Amc77w0/Wc7EMhZaTVZEbqw1C2W0Vun5o
	 4iV4Ftgp5L/51gaB95GdtDvXkTpv3JK/OAtH1uYNN10NgnR5cjO+gquMofIs3avOnI
	 3mPheRn9mYAug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA88C83F34
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175286579358.24424.4465138613948377253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2ddb55e80c6c6ad96244c9169be2a0c445397fa6d7c3d78f00b2f8c11d081e5
Date: Fri, 18 Jul 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752865793
