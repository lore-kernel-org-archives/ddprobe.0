Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6A6A32B9A9
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 17:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767114233; cv=none; b=Op7w0j90cZReBFp4mJ09tu/UcF0aMy/s94uhapaqT5mFaslZ5qMOy1l4lm1jkpEgY5LOSd8xIzbZy3eMt8RAJ8hXvx54wmtvJW0GtFOLf2vkSFfUVF4M9y47tOeghiK1tqaq0fnLWMHkFEh5IseIw+IlMqSOwo2iR/8IDTMS/So=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767114233; c=relaxed/simple;
	bh=n7FVUjHrMjxTd8VwrRsU+V6GPX4NDQXWS1s43KDN6cE=;
	h=To:Subject:From:Message-Id:Date; b=s76PRvP4fGLM16DlUjBS1l9rYDFtere/Sz/2YlUVC3akjK8urkBj7owhoObUucscY2QSQUMyHlCuutWs2HOUhrfzJJk9PkC0mYPnkvlkbUSAqBha+YfG0yq244uwj7YiNxvbQ/aeStlMQTNjLqEa14qX94oecoWyXZGx/ftF2tA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K7kAph/F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K7kAph/F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16AFC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767114233;
	bh=n7FVUjHrMjxTd8VwrRsU+V6GPX4NDQXWS1s43KDN6cE=;
	h=To:Subject:From:Date:From;
	b=K7kAph/FpfZFgDOcHEBsSngEnjTcDIl0UtuC5seUSTDAUkQmFtXgzxj3ruSUK2NGv
	 g3RcobSi8FAprFkVPalGBVDuSoYrjdZyolqXAfAeQfByQaZYq+S7VcviVkjUL2pTke
	 AW18TIefGHWRfxo90Q5siqVfALLh6E2wUQeqbtfONe3CsDxHbcR+HidjHT8RIhydHF
	 Y7oAzMaUXnXB6eEjGhw0AG1Q9zKRK0bK1nVTeoG8j7glDfrPONGtMOZOIpGoVgmGo4
	 Ix69GykXyAAC6O6mDYhDM9xqBmzzkSEv8DrPbo8mWuQUBh8uoiIwfWIPrudMn3cKWI
	 PwYXYfl6gfLrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FACFEE498E
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 17:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176711423358.30820.16611169098470910369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0a163e39f84907dd8e018c15bb56d99e602532a48f83dbc1d84a080aac070a8
Date: Tue, 30 Dec 2025 17:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767114233
