Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A191846F
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761098994; cv=none; b=FuJq4xA+6WMn8grIDCRHwUDor4yV5MeYydq2k8zT3h6M9i9ugIAI5P5YiXNpZ6H0yhaRnR89dXOVNHYDVO33oaOX40UdHMNMFAK9fNUUqsuv3bMoYeqsgwUKeSNUx5fRR4sSTeUbAxUYmy7ExDHLBQ5IMKkBghSxY7w3uOIEZi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761098994; c=relaxed/simple;
	bh=QVVdvwGnyY5NTv2eWf4YPPy5CbWx0D4WL+QlQ5iScvU=;
	h=To:Subject:From:Message-Id:Date; b=q5sjGOZXGTm9OeD3Thh7xtWR8YNeYQAJC535P6BJBa5cYfgY7qlyLY73yorUP/ii6QPuhFxpejFF1EjbJbF7aFvyxAIA8wY7YG6GVEsp1fDXXS/7l/DVFrNel+NoMqMhKBzytYZfW8c/PIjOEBaMFHaT/saRay+ipfJI7rxUKCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N6DW7VDJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N6DW7VDJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DC7C4CEFD
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761098993;
	bh=QVVdvwGnyY5NTv2eWf4YPPy5CbWx0D4WL+QlQ5iScvU=;
	h=To:Subject:From:Date:From;
	b=N6DW7VDJY7mi3/adCKzwLZxvMbU55qXz7kFRmtleV0HKja/6k0bGDMBKNHPFkk3Eq
	 h4tSDEsltGii08h0xfS5PoB8xmYXtmlG3zBMhZle/NaQjprG82s22lDVwjreZ5s2lb
	 CSgBhnaA/kS+NsVZjDYkYJncbNvj2Bue2bG0vOp/Aqbd8CEKnU7ZpkJosok/THRtjJ
	 9544KpfthYq2xKZTUmHfnoc0jchFYZEv5vyCtbm2jw7sUa4gI0NPGFBRR46BI2i0su
	 CmV0vMW31lMO0wjaFhxDILR0GfiNhU0gth4+PUxVuAoCbxtjKCXFvherYtgXJEyVnh
	 +hOy5PUUg6COQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D34CCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176109899358.12829.459433463205264913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29baa9203106a9e49d20d4d5f54108b21d3b34b23b72ca8c407b3b090573f2c6
Date: Wed, 22 Oct 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761098993
