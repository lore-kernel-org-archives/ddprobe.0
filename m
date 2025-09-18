Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07CB52FB603
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758196794; cv=none; b=cg3L4rZ4WTpjG9sqpPmufmnCwEBEgXVqTYpnWIB1P0R+5C19h4GKmqo+NH6QOddctd7u8/Cm32MXoz5xXepHMTh16dj51xChx6LT5kBxvUkZX8K4eWSlWLhuJ5i1u5T3r4wz2ZDQ+BUB4Kf3lLn3aaeqC0ewH7UnGaQUey233YQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758196794; c=relaxed/simple;
	bh=7nMtsfsqkFvzBgVCGEeYuLL8Ba2rCsi+s+cadQtbYKg=;
	h=To:Subject:From:Message-Id:Date; b=TGJvl1cEYlsOYrpAcMsTyOnCB0Itaksye61CyW+8+dSR27FbTe0K9OaY68ehSouVADjvDPoIn94bBxbHE6fespZ4dPk/D8n2BJVaaaMs2/pYqAsIOUVAr/GXrv09i+yzK+wbxO9WpVb+C4QENwYOL4pg5LFk8e2kmFzI0GmX9MU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SiBDdDCR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SiBDdDCR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5A7C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758196793;
	bh=7nMtsfsqkFvzBgVCGEeYuLL8Ba2rCsi+s+cadQtbYKg=;
	h=To:Subject:From:Date:From;
	b=SiBDdDCRY8qU68toWbRobRZQjwmDKootJHlkbUdKkq0GEa3j8mvouag9gsB6uCEyw
	 SoayYZSHK10k3KNVqoqFIY4jgm3HITasaP0EehQR4nuKkxTSrA7cr5xNXZI+b+g8RI
	 wG19uBxQAw3rbcMYUtmIVE9Rbtu7HEeo5IuZOqgy3XA6bShocSidsptS04Wa6fKAj8
	 kwTflG8P0rK00ID9gLyVuXTuaJ8GPuefIJbA5ud/u7IphyjmwRjwZahg/+BFzLZN6i
	 ptUhnIzx3aoa2ucTTWwzDcPkffUSF9kejr1ydohINVbOFQCSGe8XdLhrdSIzQva/tE
	 V/JEyfdVwqWDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC02CAC59A
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175819679358.1180.8594634509992580103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 557ead98bb7c2e2b12e27fbe6fca5626fa5018ad6d3459cdcc068d3a8c1f0445
Date: Thu, 18 Sep 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758196793
