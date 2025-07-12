Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 110681DACA7
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752331794; cv=none; b=hHcIIc1aNeWu6VlASatiA+9krcLNM7KKunmt3h5R8wR6VbZU5hW9+VkgsKkAAnfTiGlOWrBojy+LX/JU5Tp3GL8F3JoAo92Y5pvOuWom3K6PDq4S1o8P0XraoN0DCgyhjLAlxKoa/9W950eUANKp8DJUoWnvtFRlUAlcnTmTQrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752331794; c=relaxed/simple;
	bh=JN6luLYZXtZYZT8zqnjo8N9k0JWzml2vcIF7uzwwtC0=;
	h=To:Subject:From:Message-Id:Date; b=klZUQuRkUtXUBhTsHERpzmbrRXg4RB9y+k3lkv2NWk1WWVLaSmE8ci1rFLjG/0OY9eURnw7XFy6ynXGvIheS4bA6HbIXRoxJWAURunwc9QtHpqkh6pMru4ya22mP1brO1DM5XGkpZ4eWqylsRiIp2YFEz/WXF0EfEq3RtUR96Uo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GfaOmwEa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GfaOmwEa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A733DC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752331793;
	bh=JN6luLYZXtZYZT8zqnjo8N9k0JWzml2vcIF7uzwwtC0=;
	h=To:Subject:From:Date:From;
	b=GfaOmwEapo2EWbndUxJ2FlMFxV+6nuAfckF4wzt/SEQVzq8vgjeeyodHdoAXHIDrT
	 J0pxLBsoRGxxaJ93xxDVypuCbemYyctsDOhhPoSzWz5j5tFBc19ghRDhFRioMqjCkf
	 UAMDRmVux556OkQJ6X2X9lj9RW8BVuMmJKEaw/PBnSLH2eu9GO/elvnG6rHMcGOd35
	 pZslHhd13YLEbendlwvjBCi4C0ZD20zowLwqyNZlpxlW4zkwm3TiAozvaNHVR3IETO
	 IfeA4UWTwEs/naWSt4XybeBdg/GzMCdYeTNuARV6Gq4o2037T6inpDSQrtkp9t/+iK
	 jfJBT0hoCniNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920C5C83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175233179357.27245.5206614411449262440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6407817d3e449bcac0645ede000245cc34d5b68206dccf2a1599f8cde2e9542
Date: Sat, 12 Jul 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752331793
