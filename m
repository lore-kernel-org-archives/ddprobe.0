Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 837801B86CF
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 17:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720547183; cv=none; b=orwqHR+rZSayqIqOVqEk5mlWkQwTYcWfJqLDrTz1UIYfWQjX6BThlDiKiPyK5BmS8P5wcYT1JZXxRZ0jYExMaN3chNNYAcal5PByse5lMqqIH+eKikjIlQanlN1+k0fQrRTfGA38VmX/jWKauX8tBLBKsFZ+6VgToV2n8I8P+7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720547183; c=relaxed/simple;
	bh=JxM64vUnpcGXb6kG8qCEKuy+libmvMbwnTT6HjtHzIw=;
	h=To:Subject:From:Message-Id:Date; b=Y7dRUT0tJFpO6cLfWiepALfF3A4TDp8+o21FdUIVpVGFZiZGGbXh50YeI0IyGJ4dt+W4t1sl/CW9TRqYuOWKIYU9uyXMnOaftiKMKMpgYVP3k8aWt/GAJXAjiAzz4Qf53FfxPc/rmjK+JA3yWHzjhnCvVF+8brFFnEs3R4X6/AM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JxEOQCXq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JxEOQCXq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06657C3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 17:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720547183;
	bh=JxM64vUnpcGXb6kG8qCEKuy+libmvMbwnTT6HjtHzIw=;
	h=To:Subject:From:Date:From;
	b=JxEOQCXq/DVLzyfvZV8dkZm0KlWpwSSqAQ0noKqQ9nlbwgb6xfMX2PyiM4hkEX/vF
	 ZzHySrmc58xvJVTENNIfJ0pkCAypjysGj/Ux5BIUcY69ftNtL6GyPGZxn5abygkzrl
	 vxBawsnlb57vJsrZEUAhjB0XFbtwoVSrJgws+dvLn5OrPsX3qW0ARLErAp+oQnCA16
	 e+2MOuT96BI22DTA15PGDlloYWTzhuWyTiRBCIo+FzT9XjkqMzAYwRHR3VmjK58bJn
	 of5rdCMaiyrspvnhMRFmaYUfuBlbISDIobkUPE4rmzsAz5E+tc7OyAdOugGQpRua2j
	 7PNmSXwYYEInw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DACCDC2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 17:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172054718285.29113.17348913462982168303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33d13aeacb6d12fa3692b0da28b0070b1ca3eabc019c4504300d6de42881d26e
Date: Tue, 09 Jul 2024 17:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720547182
