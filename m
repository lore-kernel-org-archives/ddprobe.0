Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0711C3F2C
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733477154; cv=none; b=X0tfpLEct6CteSpcwcYquLLHxwzdsqYaRiFgtbDjaaf9wGJ6AOD246bla6UPJ00aQPTKxf7GskzxCxuIfihd5a/OmZF3BGnRVaFqBFAl2E5rccwbx0TbrYJ9Y7i0aM0kORVObU3aUY05+DowsFwTsHM7gn478hGp9Y8RV+icKoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733477154; c=relaxed/simple;
	bh=+Ir2Z3+6xqFrA3bgMi5k/JhdQmZ/seyBDRA61sAZp2s=;
	h=To:Subject:From:Message-Id:Date; b=aVZ96G/PiEVPj18/DfbgYzNTkDMhh+mSQDjl32Us0iF1l7FfS+dDEuy2GuOu+GJCgBesS3StcqaAL+8Q4lBnp7NZaGNM5Wn2HjXUy361tlKXTPq2ytJhANPfxlc/tZbgok1a7O+qRGgy9t8axF3iFLJu7iEcbWepJJ41tltE2b0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CQS3yB0T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CQS3yB0T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBA27C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733477153;
	bh=+Ir2Z3+6xqFrA3bgMi5k/JhdQmZ/seyBDRA61sAZp2s=;
	h=To:Subject:From:Date:From;
	b=CQS3yB0T8psMIskmYfAmsQB1GqSGb5pybxCv+nvk8YKootGqp9U3Bms9GFfOvjBzB
	 xAOD8IZfJDEfiQj0DFCpb1KNtYCpNjAnbdeKPi2Ta3Qe7ruw88pIsv2Cm6eDmcVncP
	 6TqVyTlRJw/ilGqLrWNdMXOftoY91IbQiTslR8tsEV+cINqqBhzZThtfiwmVdSjbGF
	 N5F+HA/XHSyro/LvPH+lOGMkvI1brFU+Ilsjj1XV6yKwEGFtgofxzOLpqflAcN3wO1
	 BE35wil4WYsRwOJpt/TKk1qwn+0H3S13S72kYRvLE1+KmHUWOp4+cHRdMftDq3DCv3
	 8v3s5erS7vOsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A43C7E77179
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173347715365.29539.14583825512945361870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fc168b28036eb64b6f686cf7fe5e413ed24687b948f4699b118313609df2561
Date: Fri, 06 Dec 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733477153
