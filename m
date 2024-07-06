Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D26717E9
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 02:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720231523; cv=none; b=uZoTv420ywEsBx7d4Sxx1uOwKnM6ZWrxRpnqL9gJF6EZ8a5h7qwrKwb5Z0gn4ZoDx0FT3Eshor11gmVMEMjUNyBsWqUpLSFJA+yQazmM+spIrFzqMLWbtaMTmSD8q+rrq+EHZQ9as5Kf/bAULC0QxPO34oj4Ow91VYzpiYmWzAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720231523; c=relaxed/simple;
	bh=NnQArhkI78fleDJMEA7c9QP4OckpbzfFikkVUoVSuc0=;
	h=To:Subject:From:Message-Id:Date; b=aAE1UX4kC3GbMsHWxUQlsZQvgjODd5dn97wA16KM9o1x/LIpmD9Nmlr5ENI1E8KCCs7++dHSeKLZYLnAiFc15yzufc9jZF0hEhrGzo7i23qaBarL9FhA+r9zL12bOn2eDoTV9AuJWc88t1ROHFYq1CCmsDOjhyVrpuq9aM8BwQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bRL3PoiC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bRL3PoiC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4215C116B1
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 02:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720231522;
	bh=NnQArhkI78fleDJMEA7c9QP4OckpbzfFikkVUoVSuc0=;
	h=To:Subject:From:Date:From;
	b=bRL3PoiCg50LV0N5qYQ1Prs97+zqS77GCa1Fk0uxY7zQCPRmv3MaS91v8G90kIyaO
	 h1fbtCGN1i3dzWOEy0l3fNbyZLthZ3D3haUWR4sjItZusC7V563UeK6hz4xd2uzC1q
	 mhW7Fwze5M8WR52hstZW1w5HNnZFCj/bfl4g+ibTWaLxlZhEhbvQslPK3+S/5RRtAb
	 RTw7LvczY1M3cDIjhRlPEkvSnkuulA77TWGOUtopQgmEFHHDKukvl68DG0EVTbV4T+
	 h9Y7RvO0czhs3oFOaWAchf58jKxez3hxmMZLGvAurdAxbLd28Qks3UIAlGNH0UEqL/
	 nFT9M9mgwZztg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFA7AC3271E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 02:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172023152281.22841.14453404118673877519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cac91009a2e65c3e2f713e77b981a571c1ca493518f82c208f7c2d552e9dacc1
Date: Sat, 06 Jul 2024 02:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720231522
