Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2998080BFF
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733614554; cv=none; b=cvTTFry7sAvoIQV+zSDZ0uU1E/DsN5x5Sw16ldLVEXccDNeTYIVYypgR02OgW6Y3JZleRMYlfxlhKsoFHW7l+OVdj0QjTCZOOtJVUgtg8coOuqJbKgMWugqaoehMpA9A6Eakfbvz9IG97MxgfsFAr3tiWHS1/iiVdpyX1Lhm2hQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733614554; c=relaxed/simple;
	bh=wWcem8mgBhI9vYkkMCp2I7gtdCPqxd6jhBfp3N9wJq8=;
	h=To:Subject:From:Message-Id:Date; b=E+pLVe3/wT2m3cDR2jZcrWLbgZA+FXgOy+0/X6oWEd2e81P8T48oQjBqsbaPVuT6R5hwyogNiSWzNNJhzf6LZ8OXHhHzG6HD16Vt5DhOjNbtNXs1qebfAmYr5UH/tUvorfgBupzkgkERH4UGXn/nZGNSAuJr4i5LZjaBnrmYhIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R2Fo8gSy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R2Fo8gSy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4C85C4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733614553;
	bh=wWcem8mgBhI9vYkkMCp2I7gtdCPqxd6jhBfp3N9wJq8=;
	h=To:Subject:From:Date:From;
	b=R2Fo8gSyCAv3l8MFGQVlpgeutNXxkaXlxW/UboAXBatiTWQt/OxHUcHgueKXFScMW
	 MGx8phUpHalmlwTSfGDSDg9Cb0iwl8x2AhGlBzHSOFFrDMAVzr0fOzryRYjvAbRMhP
	 E9xHN0IvDFMib/McF3qw7uV/nGG1VrkQcHuNSgU2UMBgSOsyyov2FNgcqHenxtupz5
	 7ur6ajvM8KKdC6mlinEFEIF44XsSfYy3nqhgVaydcMBYbS0f+Boz3arPjwtWBNO7br
	 Ai3JngPSp2bKjKVX/iD1B5mm1Tr5Z2nGAYO/qJ5HwQkH2kxVPvtPHMn1lKQo8kGLKZ
	 Ojw0TuTbjgGZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D104E7717D
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173361455361.8894.16849924207207134165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b54d36a46f18b4401c6fbbb5e6c9a6f795c727d5278d2c98a9fec5cd942ff72c
Date: Sat, 07 Dec 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733614553
