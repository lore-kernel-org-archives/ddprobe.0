Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 180D339479B
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 16:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775578534; cv=none; b=JOtcQ8AzMWNkJ2ODce2NEZtK95BtKKS31NEygvrqIAXoyE6l9vLgnYPeYBj1ele55ghNOqNjF4XZ2yEPPP4HdjHM6O/JaKZLNxBACJs8KULv4EU+rEUb0KlXIuel+OkM4xgcalYK7ujHvQwudqOMJU58v6lnV3EzcBuIgWgZamI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775578534; c=relaxed/simple;
	bh=XbqH3/edECztzba52tEWlM5Bw+xKeR0zGjyzCMkYJjg=;
	h=To:Subject:From:Message-Id:Date; b=CZEPIxYcMPocDz1Yt7Mr7RSJpLQRgZMiBKMlznLqdIfVhiL3yz53VP0VZX7oAWcj5N/u9svGBO86PyFJCEHKyvH/U4HCervf+1XJLKkTnGpyN+7VLCOS3OGcq3ONi6ZhoW1uDjAP4uc9dybZjzAMCDhge8kfgulvELGjO73UebE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aH4ifQvR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aH4ifQvR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8D54C116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 16:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775578533;
	bh=XbqH3/edECztzba52tEWlM5Bw+xKeR0zGjyzCMkYJjg=;
	h=To:Subject:From:Date:From;
	b=aH4ifQvRYHnAJX15wBn9raRz5ZPeSthrfM21Kg2fPFenRSfB7PD9Dw7BkMCJ/p/Jb
	 kmIYARCWmXQT0n0I1hEZ0zYEAEJ571XgypNYsZFgpT5l8VWnF6FGq21Jjd7DX4NXJ2
	 4S0Vzf/zzyAKltqP50uYGMLkHiqx2NOvxKTpGkBIsMAAte1D/vxzNulyRi5DZMgoGd
	 47cx4WWF9IW/qEcy1i7GBBm78hAQBrMKXvviWXuTcf6RGdN73SV3B+mspNzjoStnnM
	 UJ782z66GqjgaLc8tYa/2XOngKjeqrMwalpRHCYnsCTUPD838GsoTRBfpUBH8WwDaz
	 HsgejeQRL58MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA263FF5112
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 16:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177557853368.5924.3712244276763063539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 713de86a5cdfbd0a7c55ee0f526c1b98dc605dd7fa820f2cdbac2e57826fd514
Date: Tue, 07 Apr 2026 16:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775578533
