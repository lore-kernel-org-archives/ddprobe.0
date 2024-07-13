Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6011B1CFB6
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 23:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720913423; cv=none; b=ZCfEtM8Kzd8yncCEZ0G6GovhoCjPx10YyqtV6M/6Dy6r/FNLjRk+9NjsZgy76yecr8PVeH2OM6LckadUkVF4TMRotFOK8x6qA4nJM9zSaLfneaM9UEJ7OuiMIo0YnhKjEhvXfx5kehul+vz+2a9aUlwtc81puB92s3SiklEAAeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720913423; c=relaxed/simple;
	bh=Vag1B+/ewQ5it8Y6Sw9laBdQUPP6yAjjJ187j9ixcTI=;
	h=To:Subject:From:Message-Id:Date; b=IztpMIPK17hXWj7tf+nqdp8uQ1eBOJw+qcDdEORO/2k2f0z1Ym+240Os4nPq8CdKO8MQSKeIZCVt7FBAxPZMIp/8NIjTOCTIu2Qrlwkt6nbsvs2vAcpqE4ko6h5umyT3t3p+od5DrvTV3dt0FiKoS6RqG8538jzgdpAcLxIIl6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LSAciwHt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LSAciwHt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6FCDC32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 23:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720913422;
	bh=Vag1B+/ewQ5it8Y6Sw9laBdQUPP6yAjjJ187j9ixcTI=;
	h=To:Subject:From:Date:From;
	b=LSAciwHtr6yTHmUb7ERKq1tEtfqsM9ph230/epKDKB0hAd+I4dujJCjH6ducCOyno
	 34UlPuMmcbYg7dwZGABrMEGxqgwx3PqEG1WUo/UvAgKzXTAijm+E85We1FdjTOTaVu
	 +hgErEkhLuVcUsPziWJnGH441whI8b9Us2ctqdK7ZmGeDGneLAd93QjOtnYYaCgg5w
	 zbcBeGulTb/EfpV66GPUfLSzItkSXhGJMDAtHJ0AD4ouJcOx8iLp9vs7Or+ef/Cj22
	 kHSbtMea9YhHhT+QcfjfdLQ9xRJKIWkzrEsW6kPHn9t5qeN3mdL6akuoLa53+jMfq0
	 DTqeA3wVwRJXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE59FC3DA42
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 23:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172091342280.7666.15342643114373750408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33f8cbb63590903c0a919ce3cfa8cd8363f4bdd3987d0f58c53a9c32e02ba35c
Date: Sat, 13 Jul 2024 23:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720913422
