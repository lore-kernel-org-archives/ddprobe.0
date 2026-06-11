Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 510282848BE
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 02:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781144794; cv=none; b=KDGZhyoZmuFu9WsbONyrz/Ta3toLaIw+omqvm/NZ+PuNMSGNO75Ap055fK8nUcWq7ZoE/O3nJyJD04mtQAbUx0gFU+YmnKkwspI2GlN/RAXpS4GFCcaRyUjoxXUbx2susz/sW0f8U6+XViq0DAHWmaWLkbv7AWHRI+dUdBWS+DA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781144794; c=relaxed/simple;
	bh=MIpz5ZMizDgw+p7eek3Gr41CmpASiR5YVlZIZP2dOck=;
	h=To:Subject:From:Message-Id:Date; b=L7T0dw/8kIlWMj5eEEflTo+X21/oGIP2eNycYxfCCISF95hp5dwEGKylS1YTJX8atNvLj2HOw4wsCdY9VBIsd39XRDkwh0t70JsUI9TZqhrf+gcZhkQs7RaV9NPAyAW3UjUR+1XcG/V2ux509GntL772EluVykofpI5eIc0MLIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rsmdrv2O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rsmdrv2O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C99E1C19425
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 02:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781144793;
	bh=MIpz5ZMizDgw+p7eek3Gr41CmpASiR5YVlZIZP2dOck=;
	h=To:Subject:From:Date:From;
	b=rsmdrv2OsyEz3YLWKuxrHRUlWNulq3Y+//wkgH56WFa29JYLwM46JwAcNuoQAFj15
	 zPFIRNFZfGcokFyN61wkMdQOinIU/QkGd3nZ+ugVNV16PvVMhxZog7BKDiEMtCH9CU
	 2B9tCbglG9UhkiN+5T9o+xPKp0YCVE3/mA4l2oceY23thWr7l3rFMuUdsSF9kxNzR5
	 PK38bawFchWLI0o33tw+nyI95eRAas1aytV3j89nR8cPAASWFBxL7HAfB8kv+jjHx2
	 ADZTGBEhAVT2MWKtVKIBdJgmuCUZttVVvywQaXntH5lutd7XncIMcHQ7LOEDU0Jubt
	 uKtyBqYAg8qjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1351CD98C6
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 02:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178114479368.10614.11467335797011188810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0f0ea83a0715a6f2caecee6dfa9672e4ff8f40c82ae337da2bc5e0df7468b13
Date: Thu, 11 Jun 2026 02:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781144793
