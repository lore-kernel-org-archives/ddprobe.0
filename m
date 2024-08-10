Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2926114A4F3
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723283754; cv=none; b=cYUAVPB18NvygAmtzfYH04UBf5GOPjoKK9fgGvr5uF4NXBSqkj0yOi5+J5j8RS/D9sXWYULURNIbVGPVjAovFDKzNyyWhH/SJsg0uwIu/Ysg1Q6P/iy+SNLkCMl+3ZV6RLD4Sei9N/a+z5BuCah74bPIZb4fKzpugHw0aXxiwkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723283754; c=relaxed/simple;
	bh=9QrcK69bz2CDPW3eSrfQ8Kt9joNvZniQ/K3bSwcc9+k=;
	h=To:Subject:From:Message-Id:Date; b=u1h3mgK8ZzRAi0wKFyrvnm8jpr8Ouj/dcUxp5DDQoYFVWEmHkSGPsjPokUMp4pnpbsAIPyZLH9ihkPn+A7Iic3DBCf2igzhnd3GQy+gbwSeBxBu9o5sCV0I+6xx6kOre2VP3NwnWQo5YXE6WqyubnwD1pT9RnWWKp9MDOR7iCgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NQnI85sg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NQnI85sg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB1BC32781
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723283753;
	bh=9QrcK69bz2CDPW3eSrfQ8Kt9joNvZniQ/K3bSwcc9+k=;
	h=To:Subject:From:Date:From;
	b=NQnI85sgcJ1MHeFRzvCrHiztZ4yncimNzK300ZDzz5PVPIBwJ5/njqpNVtC9Ks9qU
	 LvnpNL0Cf80ifSRatljtE42iaHntak+JRklffVcmgaQyKhy00C3Y5ZsGCnA+CVt8yJ
	 A93gJ5qQPA/fRVrRmEgRNW9nSAyYT3CR1ZTgD/VAsWXeWyGIpMFt95w/F3UjAHJc4U
	 Ug0OIosKyfWdxqZY1oJwpQszJxw/dUPPJRkXyPKiRseKWF4TcydDRK7JtK2MAMj15k
	 3MN6+eRtfY2Fh6gGD2w/JDlsv7TsPYkeAebKCEFjtG0FkIKNGyEzFl/qH75NioONJf
	 UpBn3H4lUFMYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BE3FC3DA7F
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172328375360.29943.4127877255354479615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a27466c0845529add8b6d73c9014f4a9f0a3867f37a554af12009d36a87d72c1
Date: Sat, 10 Aug 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723283753
