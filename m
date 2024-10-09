Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24106DF5C
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728437754; cv=none; b=ujDQVVpy5yYGDrG/rcHab9NpMfZCqUG0SeOUGFXXsToYo3PEioMYglt+bSOE3A17GNc3d2COHM7H1KsYyu1w/2o9H1bYoGU8Kgv4bd2zUljiDqqwJuvaE73y3yVLs7o37MMNW8f+nGSWG0qZEKM9RnVSzsyvf5B9EpUnQHguNLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728437754; c=relaxed/simple;
	bh=6p2i4KSEBcGUNaI9cNd5TknCTniiHYkmnlsXe6Lnxe0=;
	h=To:Subject:From:Message-Id:Date; b=Bf2ccSxRqCwWkJXyz2XCEcKaUIvuRct+raYe2ffWekhzhB3+UNU/3L4HUDHrUkriSZDWzpYL73nmwBRP6kVhe8zzefbK0ogVDqh0DRJz8PXR0MrmJtSEJ67n6qi4nYhxkJpWSCZy+879s73LUdY6sOVJ02mOKpzXLLmcXDeY9Dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qz6zeGP0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qz6zeGP0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA08CC4CEC7
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728437753;
	bh=6p2i4KSEBcGUNaI9cNd5TknCTniiHYkmnlsXe6Lnxe0=;
	h=To:Subject:From:Date:From;
	b=Qz6zeGP09X0sIBgDoEkkqnXTv1xc6FiuvldzoHK0EfnKOgEau4jZ2vPUK+nnBMK3x
	 MggmbwWHPKoI4Eo26B5Jxda2C6VnvSYmo9OiGXIJ8SYpK++AMM30r7zOVCD/5on+aP
	 0Wb3zqH3L/p/NUq0hVBfCTPU2JjFu4P6xaTWDbjvOu3iLHDsnk6vphT06S5Imrw+3j
	 qRhdlTeb8GA2BCK8Lo6NEnc8+jgbuBQCA48D2VsfyU6oV62FMmNta7ZS9Z79Z/FREw
	 fnGc9DrNK6drV/1gtcwFtBpdmbY+ykHoCCtoj2cdiJLhicMBfevGeWO27mylo/OGkZ
	 +x7nyl7AxDjXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EC83CF042D
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172843775364.29622.11478474414725828215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a241e973ef48fb7f8a0673e0309d9d8601c1dd72efd5497081f3c42f4e6241f4
Date: Wed, 09 Oct 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728437753
