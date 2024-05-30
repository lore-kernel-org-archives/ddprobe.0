Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B1DC17BA4
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 02:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717035863; cv=none; b=Bx5/8bR2kb8es0NoK+XYcsWbeigk/sXksXxg5rWB4FoHTQ4R1OaJuPVE7x10faMCow423+o53jKzQ+TAiYxGnJyxsdYYdL2ZDesS5mo1kQT1d5rW3oNcyB4PuuHvSGUNqLb96fFwvqpBFidgnU5qt6BiSTM9/J1J//vMYAnRiBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717035863; c=relaxed/simple;
	bh=h/XeqHJWTQY1VYpfQuXdy5OUAv3wMDvOjCbz+TX7szk=;
	h=To:Subject:From:Message-Id:Date; b=ohf2ssIfvC8QYRMbJ8UZIcGmnUujH82iLkZ+ux8dCQ5OlAt+GnpsvsjJ0eaRyseDaziNX7Fq3lo1UbrX0ll4X4jrXFz9+oVY+TrYamVveKj4gnCms07cOLzXhdRYZv1VJvjDX8oIzhj7LTHQWecGrJsooaZH3tkR1nbQgwLPGn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jYKIKqes; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jYKIKqes"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C80C116B1
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 02:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717035862;
	bh=h/XeqHJWTQY1VYpfQuXdy5OUAv3wMDvOjCbz+TX7szk=;
	h=To:Subject:From:Date:From;
	b=jYKIKqesbw/iLXZFZUNBmKCSi6v447p/PfP1X1WCTNCX4g9GPBdnystFhf5J46qm2
	 s9Wq2oy51BO3i0IdAl17sUOfKuN88n73b2Tk5yzq9O1fYvUNpGNH4wGIEhXvhRYwRI
	 wXuIyVfEF/QE/474OOg1xAlk6EGf/AlijHryEnEVkn/rlZXGVEXW9VqrA79ruWDVhi
	 OvFN66DGxoeaet3aOI4Nvkug3odQH5d7st81hiKEX0KgV9KXaXUbuwheFh6UxWju68
	 5VIzWHhG8gtDm3uaLYck4OcpVuNZVf6gSa87kvP2clQbtMFNIZ78JudMp5X1wn6/PV
	 xibPfRRoi4Mog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0371C25B75
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 02:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171703586277.19227.6052394666757491075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70c00d91034a65e49a211c4f3bcaef45e21b00b1df05c163164df9ff8b43a9ea
Date: Thu, 30 May 2024 02:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717035862
