Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31A052FD660
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 20:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773520494; cv=none; b=lLeixGCGMwtzRBS5BXpYID4pJBty0lU0ajSa1gukWfo6+KhYlLv1/Lx25ybMFZL6YmhW30WwyfbV8y4jR6OQJFw6pMi8l5E7Qm3wR2SHPr2piVjxigO/PgnFsLlY1ZMfFNrn02DDGZQo2DybZRu6tn7thMXzv7HtGoiVqUYmyY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773520494; c=relaxed/simple;
	bh=qvEHclQ6I5EYRSyfMPLzLe0Mm1zKVFD9+U1drz+yYvI=;
	h=To:Subject:From:Message-Id:Date; b=ArBdUtrEFgN5dEV45xpdRcWb96Wom84av57JnbEC1UcQTKlM8LwKm7I6omIFwCyaQweVHEyREDIPg0uVlEvPH8hDBs22TSibrq5gnZs/b3MAaVMG7/nNFcHIloeCOL23bG8EHHN6BCxx1DGNStnbkScHi/ttlnPR1ISAkeEWflA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FBgDW5ol; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FBgDW5ol"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5174C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 20:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773520493;
	bh=qvEHclQ6I5EYRSyfMPLzLe0Mm1zKVFD9+U1drz+yYvI=;
	h=To:Subject:From:Date:From;
	b=FBgDW5olHbdwrf4bVTqX+4cMc6l9sREzRGAtiXnq8DfLHFrTnyhxjG19QnOhdMsb+
	 wF9MgFCNFNzRjtkeLlh93y3DtKBh1egS3D42F2oBrpc/eTsgtInAAC52Q+LwcGu+pg
	 CuHdruzcn3liCvfsBJizUk5WrA5M4c9q0T5z5spFGfgtWyn0+DYqOJmmtTJrjXP1c+
	 VKG6LKmEBThG4Of5X4qGcplKa6e8mG3o1KqPdk5gbybONximRScMGlHbLRzDoDQVoy
	 mDYajrRf04auJTAuCjix2VtJmZYrfZ6rUS70Q3uOEY2q7Tt2oDwtFn/PqmwV5BDn6Q
	 QKNiJTj0ZPNQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1A17106FD70
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 20:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177352049362.2944.10321438606151269452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2f962a7724f99fe35df7dce09bdffdd9e94e0a18f29e5332e872e6fdf8274f7
Date: Sat, 14 Mar 2026 20:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773520493
