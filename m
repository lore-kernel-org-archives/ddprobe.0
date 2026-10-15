Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 912283E1692
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792033834; cv=none; b=b3MNODbX/wsT3nZRANU/9C5K9gbfcBrFxnbZ9vkn05cLURNi8BpXFJf8ogPXjJWgrHRponxMNLIdl40VZ4zAQs0tx8U3JWDoxZaGEhhvT10cRrgwMUpWjzD6gX/4uezN2k756WJMWGWRFsIMGFCegQ4p6paQ3c5NkahxKy+iZjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792033834; c=relaxed/simple;
	bh=yZnWkJc15KMaYcf4mP/dPrWHJX4nRoqk6Z9Bcqhm/Ew=;
	h=To:Subject:From:Message-Id:Date; b=fnfM/R02Zn6BD4a0vMFcVYJh4/Fzs3/26HmJubfGhHXztd123qjHoxvhF42FBIS3K5QyDj9d2y3VaaoCvl4v7ZFcDRg0Z+tAZOth5h8k+EkswZ536S8M61IlKYTcPPcS7YI/FCrd2TLqx9K+eo3q1B+HfgaC5bxigP/sMRiWvdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KtUMDrm0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KtUMDrm0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD88BC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792033833;
	bh=yZnWkJc15KMaYcf4mP/dPrWHJX4nRoqk6Z9Bcqhm/Ew=;
	h=To:Subject:From:Date:From;
	b=KtUMDrm0ZLIR1aMBMCtwmWboa5PztrmMHwXyiMt7qe42um6incL0x5GMewJnwwsRS
	 SbHaGu65qf1GLtC+4KBwg7T7bSjMpy5DL0vNhokodQsogam6gB3PskWFs53K71Vr6F
	 QURPHeC8xvNZM7sZ6TQisuaPHC7HxMbnwXNaDe3RaFLybkHFploFA5C7HG2U4EUmcv
	 IisRqG1JoasT6QGI2xJBN2tf9L9GBFO1kiFVm/mIzx0megqMVIbLvDV3xe9bMGBBb5
	 yRyikNhg6dGKQOVmziHFyrDW4weiQC7g/YuItFRxt3+jXc+8UDGsSn89Vj8D5L8c4C
	 4VxFO/vxmC77A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8640CC6B30
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179203383374.12794.11010134825753990688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11ae72a7484b3731e7edc5309b62681c93e774eb56d293e9a3a12e04fbde677b
Date: Thu, 15 Oct 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792033833
