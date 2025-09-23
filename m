Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E5A7A48
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758666594; cv=none; b=jocpSKdncQqheZ+5xy5Eh9IrfCuFwfsFhAmmjfoHlb+RA7e28NWI5VrV/9IcwhcxPBkZNlZdLyi0wtYA7YA3Oi4THHvOdC2t1c9kzHgtGDHQDP/JyjuA/wU9xCOYYPmb1iLvRw7LwVgl42YrXSWwjKzI7e5vBCKoZhVQEe9tStI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758666594; c=relaxed/simple;
	bh=XdpzmK3SytE4IEXsfqx8uV8czk1JCdZMX7Pw3eTju+g=;
	h=To:Subject:From:Message-Id:Date; b=FoODQNb2u9+DtFq8Buiy28ximu0WwGrreWX00XKYvZjnWZl24SY3dznvNXtrsjw3Rgt/EtO66IZKS/jkVdaIACq9Uh8fw1+NVcqdC6alDNG2xi++ezTSE0Lsfwxupu34O7JpfDEqRGAm36VWSup/4I5eneZ5KllU/C5RJo8fH4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XS2cbP/K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XS2cbP/K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C1FC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758666593;
	bh=XdpzmK3SytE4IEXsfqx8uV8czk1JCdZMX7Pw3eTju+g=;
	h=To:Subject:From:Date:From;
	b=XS2cbP/KMSb1bHTCOnL02h9U04DMSPXoGru+xHTx8+dTJe8DVn4/vjiAwsNJqeyCW
	 6buZQKToZU8Ql6uiFp80CiT7NnJWdbhhSky7cDlCxjw8qYigtg4kiDv9IOw0YsqG1o
	 qUIyRQb+bCnizhOQKGSO3xQF3EiwRaEejn3IRqoSQPqSEVet67Z1JtRbtbpZWNvCUJ
	 QfszKFlEI8IsLGYqHmQhS5jMZV6PAueDKlvif40njybZ9+2PgDzqefy0Sr5C7NeXcl
	 BphFYCxI8RSk0e4ZuCEpWTCADVRO2dFkVqAAFQessAaPwFLYk2kinIniO19na23TqP
	 z8yzi5ohXgb1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956E6CAC5A5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175866659358.12856.5408228214451304472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d18ce48a2505173df3ca8fc1f0fe51b56755ed0bc6a8f87e2c0c9825f5320ae8
Date: Tue, 23 Sep 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758666593
