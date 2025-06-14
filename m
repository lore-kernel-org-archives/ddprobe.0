Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 391AD3FD1
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749878394; cv=none; b=nwMWojzTBqdyF3aG4WeXv3q3KDNiNV72tJEMvJxw7KBva1uK6ZV651xenkmJ+MtyO4+S9pvfvjZ0pV4NQLfg532jBChA0R8ongwt34MiOscGVC9E1S1PpJE5hw9bc4HCNW/KAFZT6AS6KkC5zaTsXTd4ZeS11IUyxvBLet2tJjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749878394; c=relaxed/simple;
	bh=U6OIM63zNb1rO92Mio0swZW5g/cHGqHk6e/tI/zNRig=;
	h=To:Subject:From:Message-Id:Date; b=gisKOd0FxI1/A/JZvvdBN53GG2ld/3HnqOC3/kKazjg9DvaQWb4v9orv8j/YbJcFQ7GourHYxw+3HgZa280PpfIC/RAC9a6BZgtXPbUBpFOcKm8in1lKMbeyZ7MtNN2ghqynmIW11SU+Q4IhHkO9YuMqHCXie2xP76pQlQb/mT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FrdRJng9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FrdRJng9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE437C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749878393;
	bh=U6OIM63zNb1rO92Mio0swZW5g/cHGqHk6e/tI/zNRig=;
	h=To:Subject:From:Date:From;
	b=FrdRJng9I8+/R31s2gGvKZced/HZ8xYa5OsYioSQ6OdajsUHyGqj2casZOXonoNe0
	 5ZRklrpufj+Ivbg0s0NrjwCB2b0soGetaYPu5COIw8dqJoQwt1FfYZwu9dyDaAj3JC
	 Ng4ekjizk+V9uEAy0RC346gqy8gGdeTs6z2JyugGNXISlw6TE6CvQk1Harqo9cxMnY
	 3tfPM5LS6wMkWOofSFb4XwCFWPaTAE3BlX0uvZrBZrnoupyAAAnHVa6utAS0gmT2xh
	 XhZeHIOnf6IHfWGF4W4119pnSti3gytAy3fKg2C7ntszD/WAW5B6TPsZH59qm8pX8T
	 YfPkluIbsJdGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB94C71141
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174987839362.19254.7826396965613520221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38ab336b5603ebb2ce9a4e866d8888ed287753a89430208a4f7ab89e84c9a9ec
Date: Sat, 14 Jun 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749878393
