Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3291E296BCD
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758426594; cv=none; b=TfDLubGzjRDp4YrT2ICw5v41EnmIltfysrc6LUkdS4arOq7Lww5RAlc8j54Da2NJlrcftYZuLHKhN6EqzZ1NYm6lj+OaigpVCt0VbFUjFXtPiC1rAGL97Q25fj2vAekRDAcOMToC/qeoRl4E5Y1ZIvZeu/K19z+jeZSrRdmLwQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758426594; c=relaxed/simple;
	bh=TV3J/JM71Z7FRFThjmz59n4cc052V8tN2zECoDBk31E=;
	h=To:Subject:From:Message-Id:Date; b=CLA8ya3ajBHjatm7BatrlyqMj17SM5NtNlz//bZBg3Ao+P1FjcMk9R1/hot3H954f2R/Km+iUHSX1aD5ZXk+Xk0z60e8d3SVU2Xx2yFVs3IgwowUUfok2NbXjMvdpQhhTdocURVQ4fAy8Q9STNGnVL7YX64JPvkZ/h/0pjGsuwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VoWVTWFh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VoWVTWFh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52C8C113CF
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758426593;
	bh=TV3J/JM71Z7FRFThjmz59n4cc052V8tN2zECoDBk31E=;
	h=To:Subject:From:Date:From;
	b=VoWVTWFhRse1hbbMfdDX0JSph2reHCberM9qkqVZpJOYvx8FqcjauznPI9GOrGckl
	 WFvCRneR4N72bTs43fko6ajQydsXwxaExUtOn6L2AQfHZiARQ7IlKpeNdHJL0G7jZG
	 yta5tx6qXyGGKdd6tUTRR1TlQpXDPy69icFBoBeT8cqdTpAXZMrgMpTNUHzctiPIDD
	 EkRJhQEAbQPp+A2xp9YhVa6OdvGeSqHbtaUpqnQBrLx97x2a5yCFhWCFZOQiX2XsDU
	 b/9KRo50zlG9W/hv18wPctoMf0FccJG551kFLn2hdqAZi6zpoV7Pu0H1kyaU1HmDQM
	 V+r+TSAJIqxpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93931CAC59A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175842659357.16578.15740678618255180535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 253ef50e6741287d99c790b34b2aa3419ff6be7cbb8540cbe664b17ef6f54307
Date: Sun, 21 Sep 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758426593
