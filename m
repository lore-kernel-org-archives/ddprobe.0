Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C2B75C5EC
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 21:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707601097; cv=none; b=rFgwbosHWc5VTvau5I+gMj6eDPY3vaOy79s9wEcQUabhreZmsUwOuDPrQ4uqI/Tzls65lVuOE4HOOIHbPa3uLx/LV5tyWqe2TTk6exuaZYf4wkZb834nb/H/bGwAuyH7v/CpYFPOSlet7YyiqX3eGPH0aCEZ9gbeSbP36/e8mq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707601097; c=relaxed/simple;
	bh=JdWSWnePfO0yCa9AyobGNixSzlU5pgYjSWzkPcr/aLI=;
	h=To:Subject:From:Message-Id:Date; b=n31/HJlkkiwJmY71W+Ff2RdruXykeWVhFfnxmFMsf8EZwvQqAgo8e+2Dz0duZwq0KZOEaC6Ey6ILcEHlaUezHeez9NQRRZpqRjh1H0knRTL+FiMLsVO+3pCRvclsgB56mreUzjLxew7dqmOji57kiPEn3Fe7eJ1mLzHFyg78e0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EM/x5VIp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EM/x5VIp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81E39C433C7
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 21:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707601096;
	bh=JdWSWnePfO0yCa9AyobGNixSzlU5pgYjSWzkPcr/aLI=;
	h=To:Subject:From:Date:From;
	b=EM/x5VIpmHp7Vp39rWHeTO48O45iDD7Q9xQ3hWJOgS3LU99DXe+tkbvEZP73Hl4GJ
	 7hEo4CKvgd/26INwdNACkTzT0u9y5VhsGEtsKC5t6Wxxxl5fXhft1SZOr3vdz+zJwI
	 VH4uU+xMl6v+mSzjSyCqKqdzcFuFT6wHQdAcbPtz56t727TRNiEDiJXPK84ADcRpwa
	 QSJgjBnhzVI4Jj/leWAniQTdLtn5Uv65l6dvAHAx4jiKIF4xzf8DI1Kex8ry9Ogjit
	 AiO29O7JydjqUDbBIonQC+w8qckWghEA9DiOawwCF7Gj/tf9BdufSv6jK7kmnB2A5s
	 aZDH5DaWE988Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 665F4C48260
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 21:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170760109639.431.13352009942840620309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14c64561a98aafa1e928884de789822a7c2b2ffc92369b169de691b40a15b5ab
Date: Sat, 10 Feb 2024 21:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707601096
