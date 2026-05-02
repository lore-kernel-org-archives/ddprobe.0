Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC9C1AF4D5
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 12:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777726054; cv=none; b=EtLTuJ75VJjYT8GH0PIf6+MVdu8oPzJkzM+7uVynOMCY4CIRYYnIzIX7WMa/YmfkqsTiTrN8LTBgz2hoyCjpFH1q53Nv7MnZbgZK4EB102g7Xq6iojRFT6Vv8wmVyFYFmvujQBnOt/srogUltbGfJuDKX9rl8vuXRsx3Y6wsrmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777726054; c=relaxed/simple;
	bh=MFs6ofhJ5oeJY0Cxa6OLR4aZbGgAM1KxN7HkVEPRfgo=;
	h=To:Subject:From:Message-Id:Date; b=GOtNDjrxtZzgLupRCIB1SKtv0g2Pyz8MKZurbAohP1zNoI/0YnTrRJygN/zb+j9TjhouzOzEhb2obAinzQjeoP7R/K6DnqTYlhnwi1PdVgBTB4J9dutlrbZ4k59Kx7uR4jJlFptXeDevEKUow+Ip2bCA2Gx1RgGiW+/w0V9NPXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vo7Fd7h2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vo7Fd7h2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF66BC19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 12:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777726053;
	bh=MFs6ofhJ5oeJY0Cxa6OLR4aZbGgAM1KxN7HkVEPRfgo=;
	h=To:Subject:From:Date:From;
	b=Vo7Fd7h2AeMWB2O9mG4ovD5PM0tnRYY1QF+5h2iifw7uPe8RSMQu2Ai1PbJqxHTDW
	 ry6bWK2zaBd5ukmZ+DapjL2M5p2M/SL6xiVivGid6zKihb1xbNulBncJV5MDnrdh1d
	 Rb+gGTlCtskJiJpXU0Fvzga1QUNeI91balzVP+mpeQvg0Rir+A5d5rtV5ig1fICDVE
	 e5iQOndqReXx76oPJYGC3HPZUeHFgBtWrdb5cMAQ/JWbesZLvykKOKl4g658x1pkCt
	 S9sByQlhhTe1aYQnWP8C2q4jOWF88zLoGoEfdpnxc4M+JxOvgL2d5xmlN7gpZpM8qy
	 GH9p+4JzT/05A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE83CD3423
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 12:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177772605368.2616.6232103340941558262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec04f0f76626bcf4429e77969e9a984c8c66ff1806f516072b850d22cfa7c8de
Date: Sat, 02 May 2026 12:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777726053
