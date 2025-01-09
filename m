Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09FEF4A2D
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736450154; cv=none; b=cEhp7mJa2cYkAVCC77DCHir73dCYqM/5YGqoCWXe91prQiqS//PkaXnwCxpssN8Urj9XseNT6yajdFDJ26b9XyeUTOZy6eqsmH4AKX5xcNjti1e/fcMBhS/FKQgFtaxRDpjzRlVdUfRHLUtpHzfCxsF5WFPcBSMK6XrfP3ntUw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736450154; c=relaxed/simple;
	bh=nVWs+c0IRaiGP+OWQvDTIwYKnTit4pifKYj13taf+0I=;
	h=To:Subject:From:Message-Id:Date; b=OxrzoCkauC2U2OUo2GoMEPOX8zS/7fyLmh53oG+UYutqkB8a0mZmqGpkbjszAdSsKoz1bqlJSuqd7IUxHQFCAvryUbzHWCqpJgiwTcRx2btsSv2U8g4w4k1PdYsKxSGzSOuzpnUsB97SWiSyfYyxkOTZgrrh45r2IlC3fkVxiBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hWo7R4Ri; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hWo7R4Ri"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EB1C4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736450153;
	bh=nVWs+c0IRaiGP+OWQvDTIwYKnTit4pifKYj13taf+0I=;
	h=To:Subject:From:Date:From;
	b=hWo7R4RiOWMNjgXq7q63nifgZbHUKzJADY5JCCsHKKAXJGiBPNSuBrZX393oNkHpp
	 97xiqP2r64qsk5ZOMdFsMp9M/YCZDNqeGA1RVmmntIez3TCXL11VH2sfjDZwrU+7rA
	 jc59EZ+Wuoq7uIFDXKs+P2AobEeJnVde0LCTH0ojBwV5iepwRI4NT51OKBPPO8Td55
	 RFKf2pDDPugez+we9mmoYaned9MqUi+z7E4uH5ySyuhx8xjjlPRqHa47n5J8vqVzwk
	 2r5HFrImagn57o/JIhi1nvyW6ZTBvYOb5aFgG394YSD9gDIAvvBc8YM8K2mMFMh+m+
	 2iiA7v5yh1UhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ADBE77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173645015358.9232.11521996343168532122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 863bff09dbda99face25413049424db934b66c08beebaf1653ff71051caa2b7c
Date: Thu, 09 Jan 2025 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736450153
