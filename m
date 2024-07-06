Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C3D34689
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 13:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720271723; cv=none; b=RixdngL4GGLdUxil6MD4r7jryOU6Ey/u0tNeFnvqX+Vb+I3vUWWV9nK3pVn2hKUGtZihYsBi80MepgpP/M1TDGcQ4C7jpqfvGaJK7VUmHcNG5JUPoD56O7ANmXQAdUDEV0elZxSTTM7y1loQuUniuY1hqXJu0KCWxWaiftbLCSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720271723; c=relaxed/simple;
	bh=6Gn2n2ow/9ZCrg7bZljPqsSA3KSBWbg8ytoGhFTYcd0=;
	h=To:Subject:From:Message-Id:Date; b=JNM0ZqYw/CN+opVVJpgfxxqhU5v4MRbW3LFL6/KeQtyT5ODrtK6YqG2EOwy7byVu8aftGU49Upx6UgkMC6JI3kPkza2K2D8VPT20rFouaDiLHyHGt3fBii5Wj5TBftwQSEJdxm3iV4s8Iy4piQBJ7pT7iK+jOH1YMuKmA1SW6fI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i2abizXv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i2abizXv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA2C9C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 13:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720271722;
	bh=6Gn2n2ow/9ZCrg7bZljPqsSA3KSBWbg8ytoGhFTYcd0=;
	h=To:Subject:From:Date:From;
	b=i2abizXvxQSm/5duzs6ddjrbpFWv4k5EeclF8ZbyhfFsn0JXDqxWLwCm9/4j0zhOi
	 +TfIvh38elAxAotChRibdPmYmfcIli+GFxtKaW6ES7XIlGURY/WFVX6Jj3QtgPB7Hj
	 lowrWOOcDPXqnWxuFOHmvf+ovB/tPwWHBaEe585f6SM/JKfvBq8MH3M3NO8Jdnf2nm
	 ZR7MqJzGoHpvjK807ZYWEW2oSnC8ENbJKQq/37wV8trNCx7zL75YwnOpnFnG+uJQT0
	 ZuZawSfKxl0r16pk2zE1keUiFwjd2vfbdrtXkxwWk75BggsA1R2wm8axJ3ZMQfPLSP
	 uSw7uRVQ2ug3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C380AC2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 13:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172027172276.30494.2883997064174234436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e9e06a51e4332f7c1f676e46842e43d6a1f16750e18114210836551b1a9ed80
Date: Sat, 06 Jul 2024 13:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720271722
