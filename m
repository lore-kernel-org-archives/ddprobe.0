Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE91A930
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 12:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764505974; cv=none; b=TJ/u4kHo3MNaveqMaTNDUwmO+XwEVwdRIAHCT3ekLZDtc4EkVMm1uZwYMmSKsu0WsHxmckFQra0eEOICoId9MbIMr51Q+R3AlLa2LPGJ6bBie1sVhBZl8EVnFWOVE/q0JzP+/s03GwSpSmPO8iVGwvNcstBA55v6sCVSLgOacL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764505974; c=relaxed/simple;
	bh=ywGhYAgZrIlF8T4vRCfW7VegTm3iRdjUNRfRm8qv/+s=;
	h=To:Subject:From:Message-Id:Date; b=hoXbCp7FAdcOF5UtJHv4kJo5/fhSwvXFCBPt5dsQyLjyN/iZSoL0l6vNQNss8XWfje58klL1mdc3O39FqCOSvmoCpl1EhH+X43aNjdGPiKxSFktTOskrDmS4WwG5bIk/ftTzgCmYY9qTKvMkXMWPsf5lzm3YIbi8acYQYETAuss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bsioicvb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bsioicvb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94F1C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 12:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764505973;
	bh=ywGhYAgZrIlF8T4vRCfW7VegTm3iRdjUNRfRm8qv/+s=;
	h=To:Subject:From:Date:From;
	b=Bsioicvb4GdfDDIOS4JPlmkKLmgJv8RjlAUU4pydHzHwPfsdADTLj0rTJ3+HKyMQ/
	 5s2jIExyw4n7OmduCViZT+W/71TXhXs1s+BVgkfeCW6LSdtOBpYidrHtwEHfyXQ8Tr
	 djd12KILZBl8iOUzo5pWIRIf+R7WnwTJ2hLR47xCz5vc7ZodWLysWnuvVjGF1mR79s
	 +++1aocWGxO4d2/7ldCPaAg7TGVF7wyT7GXsZGrKayMlt7Zn13lV+6PuUrl9TSXXDQ
	 YAkmVZbkYBJhmJHwSkHx8oCB4wePPdHO2t/KIx/ZNl2CaDgUTDXHfm+4OxM18YbymC
	 caWFl7o84ASUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FC9D116F5
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 12:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176450597358.11985.18268006990997453623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a63d4577a10b664ccccf1b200db5151f9d2f19d459fcc9368ca80a212d78e7dd
Date: Sun, 30 Nov 2025 12:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764505973
