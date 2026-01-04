Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13B2821CC44
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 13:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767531834; cv=none; b=VICkDuKNNTH7td6jYmba1BwPk/mMXXIxncOI/6whXICHnzi7NmksUt2Tkr4D/p6nxVcwfZRimkkkPNgNF57k/39pLFmrPwtVYUD/cdhjiQUmnhfNDr5JQDWSDvzUpoleZTYZA3T6KMd5DvJtlKi1euV+9fpe5U8EonZqEyACsJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767531834; c=relaxed/simple;
	bh=7/nGADyYUhDA6soBNuCK4L6/A+87S2BHs+WuyKBN3MM=;
	h=To:Subject:From:Message-Id:Date; b=skLE6DNtwHqDDW5qEgFKtZzDy/TOw6glT1hyZS6GQkOOLwpTXLvdsow49swKLHT6kos/9Ksc3Yys9C1sgvuIMh4uGhPHSYSOVDPFlLjbaf7kGg75ZT9OG1VLsMjWCINXEloE1dIug/ADyzYxNPDG6TDq4LW8p8ImKvhTCESv98A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EQL7DqbV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EQL7DqbV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5457C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767531833;
	bh=7/nGADyYUhDA6soBNuCK4L6/A+87S2BHs+WuyKBN3MM=;
	h=To:Subject:From:Date:From;
	b=EQL7DqbVHmuZXjKaOEKo9Sl5+fggHQh4opwl4G8rXrXqf9ue6qvkRyjeYJ1F/4LNZ
	 LVoR95cbtgjM2u1dpPmdlF56S70IluN7sNloZ1RkSacRTZRgdY0e5wQ1d4CnDKqC+Q
	 8B4ycwrFHDxwPNwBAjHKEy8EXShfvU4dhD/vKZ0NvIa/6VFFzZWFA2AkCwD5qfX1OG
	 oX5A8CcjL0TF9R8mWbfV4r6CZup9AhKxaJVSkr7puykg6FS50sbdbnnqpN/EwxGZ0J
	 zXpGMpKwU/uboFbQ67SHxXyo4PHo32VdSOt5oBR9J8jFVaJtMUPb9M3MMi0FGlt2cl
	 2cVySozlAEICw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914C4C2A062
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 13:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176753183357.9442.12771449674744337571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42a3391ae50ed18143c35532c4d6b49a4a70d559bf23e2bb9a0066069c9c2095
Date: Sun, 04 Jan 2026 13:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767531833
