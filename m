Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 419A014A62B
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751782195; cv=none; b=nCDwOGgMnJO4+U52lZ7UqjeRnjIkdEZs/fuCzt1D6NOlE1x1Q9ErVt9M6A3TfsfI+IksyUAYvd2EQBA5xCb+gIQY60x+BJ9WaT+VyK10uRgj2SYmWwK0WwSPmhCb3+pjsSu6NgOhvGASmw+C+DWppz+Fjq2nPouGaLR55L20UjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751782195; c=relaxed/simple;
	bh=zGBaF85UIz0Ozphxk6x75zp2H9nrZ2IHv7bFIfPebD0=;
	h=To:Subject:From:Message-Id:Date; b=m8mXYHAAWUY0y5gAHGm5Ttp51Z1kP8ov3A9LKdlarm1kKmFIv05FugXmjCt5XliJU/uGWPaur5Dg8UfsPeEI7Dl8RNJdsI0R9d5NubItPwiyAO5VcLN8yKjj9Dq3WYZGTLtHTIWRiahnEqQ4NKRSoeZxQQ6ZV8pbsbnGor06QPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UwfmkPRi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UwfmkPRi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D81C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751782193;
	bh=zGBaF85UIz0Ozphxk6x75zp2H9nrZ2IHv7bFIfPebD0=;
	h=To:Subject:From:Date:From;
	b=UwfmkPRi458BLXnSyENJo17YkmS6W1N7Vj69URJv2AU+I7L3Pt/5CaSIdIdUC27UJ
	 q685NXBK/v8NCY3i7frQGwtpYtCzYJvC9yCf6zJw8cDErdIrtbC/q3AqT3rEZkxMrF
	 zGVZ26hxE4Y1TtmQ2kD5xH6SpWJ2OwXgj9wutOyVF3o3KoVkmGo3GgK5pjledLQZbq
	 mjBG+3aj+z26KdARHbB2em6rhmiFTTTzjym8CzqXg/YlaFDuok8S+ATZDAVU4YzOoh
	 KTAarjJta4Y3hlVXCIa65Mgot3fPdWdR4Z71SH434wpNF/qgWGnu7gFmVveMcQu/ci
	 4CtME0k0Na7kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909EDC83F05
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175178219357.24909.15488845986864506774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc8a8c0c444336a9d48bbcefd613a7dd8a030239c6e7598eb0a225b15758f4ee
Date: Sun, 06 Jul 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751782193
