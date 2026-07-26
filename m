Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 480253BE15F
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785080434; cv=none; b=YZNP36dI0rzlInEblAfJKAp1QZTjFZO6a6AueuQuwcamNHbenyAVtJKn2DT2SPIL9+yUXtvIrunUkdCgucXCjSg3yf5AqZwhEgNPmnGDEqS5SA5vwrul9eqPkpBEI6R1flni8mw7yq6JVr2AlW89kdfpS5lff7sdtlFWwOKsqcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785080434; c=relaxed/simple;
	bh=wI1DR9erF5YJDqcP8GhkHndHIBZjpcgLp+HrCt7MYJk=;
	h=To:Subject:From:Message-Id:Date; b=qdtL/NJMxOZeCGDdZhghzXDdaWvbnhiao26xVogcLHf6VKjxbHyrvcyPY5ik+n5B3gU9DVJnd9jRgqKYxkdyc6kT5BKpZtfP24iH2F01MGjAkdmNnwm/3WIGT7PV/t+uC2I/Avknw+01B5HEAveUE/KzyfPXuWIOMvRdS7mupSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UerXosgs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UerXosgs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDBD7C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785080433;
	bh=wI1DR9erF5YJDqcP8GhkHndHIBZjpcgLp+HrCt7MYJk=;
	h=To:Subject:From:Date:From;
	b=UerXosgsGcRJm0BbHWzcW0f3Au+1vsmEoyenJGculrTSJBNUJCA9b/b2u0xwM86XP
	 fgT84YVueKzJU16yC0iegVUpzkQRa46MwBVUtwvx3o1fAddKQbWj/gvAhcEBDYb55R
	 Dn/qkFotAV6iiJcElFeMdHcDXqbAk3TJp55ltZXkJ05aewLseymMahQxrQaT4artRj
	 Vwm8NiboQXduCEFJym3qvAqdIFEIIAoKTA7nZPI6J8UtGYeSq9SxaHFA3ze+C6B1kW
	 2TJznAy1+1aAG3DgdhfSnWMSQFV+nCxB5VSEa8I337086Jt8yYBImwKdM47bnj5pCf
	 DwCTCJCwYTGWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1D2C531F9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178508043368.19321.17577966389241770856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bd8abdebbfa492b406daf32ada547a187a999c5a2c22b7032b074c305b94ddc
Date: Sun, 26 Jul 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785080433
