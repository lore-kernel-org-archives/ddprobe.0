Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E0F2D6E56
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757710194; cv=none; b=vAQO37kYc5vDR3AtAjztWEpLTUXdKPtNfYBpR1qRRoYtnTRJU4/frf6n9SUy+HHm7fpzRc1mtWhX84rGZoEjBcq0N1YOuioko8ZeQXrAm2yedNbXB6hCMJvees4kabh/nHQZYCeM/TbpPdaBlN8K6eVa15NT+O5KilLtsm/6dNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757710194; c=relaxed/simple;
	bh=FTrkEiByKpxHduKBPmZdR4CiLTm17CjdtaVKjZb8Po8=;
	h=To:Subject:From:Message-Id:Date; b=jDfVnMELg93AEzB6X/Udn+xTejnwBPEa1eF0z7NKpqX+LFrvt5JBoVBbJw2GzkiN53jEkUt2DCuMLDd4G1ZAovcEDDjypfw6mnlFrO+DBtuPv7PmjINxu1i7S/al7GLcaBOLXCMypgoD+1aTto1j5dIx4w9aLxbFSJkSaHtWttI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lcy4gg02; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lcy4gg02"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78E4C4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757710193;
	bh=FTrkEiByKpxHduKBPmZdR4CiLTm17CjdtaVKjZb8Po8=;
	h=To:Subject:From:Date:From;
	b=Lcy4gg02RCzoFPaRMMUwDWNkmYH3D5ErReShlrdVzosSH8JMcKuardE4SQu/fqiBQ
	 qdmMe+9uIw85SoWGDFw6B73S1E2HsP/bN6gjint0CpALtsbos0OTc78QEs4J7V9g4g
	 i5gPkNqJFq2KwkfmWLKR+6hnJ0xTH7b26llyh6Fp5ULI9WWg+SBoanRdwIAC0lYi9l
	 3fG29Fxnu9yfqvIYfgSb4Cga8QXb438TC9GyHveychOge3gbKo7vRn7YJ5W6C9HZPB
	 pkXrxdoHZNyQje83HXLbgp789+Ja43dKEz5B8oBJISrkmaUjgm+XlrCnrsBTHMYUfH
	 7lLb0yp6Z4pUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93596CA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175771019359.25424.14013322340535534083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d549c89af41bb595b4b7b37307b3db20334414d40876fc2c3e58972296e51ecd
Date: Fri, 12 Sep 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757710193
