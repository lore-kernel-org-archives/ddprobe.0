Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B007176FCF
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726002954; cv=none; b=UvDjvo4Dxcv1jPgyC57p2n76eKpaDIlyv+6aoGf+hAcT7mP548CyXGbxC4znTr6AF+u2zo4lT/XKcL977S+lvIntItyt9TtItx9K0P//N7X4UhtIPE58q6W4zPf5nNf6wYxCa0k/GekntkyWGB8aak9vdyQsAhrmMyvz1pPk1dw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726002954; c=relaxed/simple;
	bh=GduFO2mUWI1x3Ly5mQAYCxKfVfa2Ir5u1H6iHgyPetU=;
	h=To:Subject:From:Message-Id:Date; b=Ck4/Y/Tyc0QPrTmINPKBgPbTbvAoe+z4cgfEQm8Sjt/YmfQ/BjJbSAVweC00uoARjNz4/kVJ0XEoo4+GOevcBD7sAEyDmCfTD4M0SCr/CKZ38UnvqXRa0Dft0010PrhLSAXDHwesQHGM5jhfQH1cujFu555KEw+E2uqorZWFZY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j2BeedxZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j2BeedxZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5312C4CECC
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726002953;
	bh=GduFO2mUWI1x3Ly5mQAYCxKfVfa2Ir5u1H6iHgyPetU=;
	h=To:Subject:From:Date:From;
	b=j2BeedxZHlZBjepTVOxlE2bryS6RGh+VhAw0dcJiSPMOkI9xk4fgUkOnCf4iE+277
	 tuGmJuAW+6/dHAxl1vON/nBgSG/oToJBqxH4jQCQG48n3cC1J6PKyEU1eIyhyYhpg8
	 yaBtM3i9nPyEcb1s665meH0ErS8GNT6gGZQBBX/ucYtnfAr5rEr+aVdWKHWYjpyc7y
	 i9E9saKPGUQkZczfCuwIsB47Lar6lGtfWgMF3Bx1i9J5MHHZxHwSkzsginIjeV8uys
	 tiNYEDPk1smrJFX4k33DYnaANU9dl8maad2CjsdqtGruiU/aEfP4/mIC3s1gAX1M4y
	 +2L0HHrZofghA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F25EE01E9
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172600295359.24459.15058199081266352597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd3de046d0d5131d949fc1e841194b5b2e1c717231335410a35b3bc636603826
Date: Tue, 10 Sep 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726002953
