Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EDB032B130
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786469434; cv=none; b=JzdY33bBxgRccn6L0RdkKBa9qkKoUsENYVgrst8U2lPMc1rGqEEFPMkG5B9NBqqd8HezS0g76n7B+c7Oo89a0hTiyZeB3kyf67ymvbDcnEJ90gnXLEBNGRr0DzULWKUweXa99y56OOpk3WcqeuckSbeSTpBxiZ6SU7za6nz/zzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786469434; c=relaxed/simple;
	bh=di6KbX3hTZCVyUaKapkcNFyXd9Tqa9YbFSPc7Ohq8UA=;
	h=To:Subject:From:Message-Id:Date; b=LM1f7MRDtcoKbIC6dBT2DPlqb03izcf77uYosWlVot9szk0bVvNAP7D++R1MNEkpkJFz7T6lZhvbrwSfGU4RlNcocxnBArswd65dAjLbM74Jt3JujBdkLI5wyn0SvKDdAnW0BziBMO347Jg5GKiTKTWc+D4KZijy2naXQ+Ywz1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TvJ1kdI5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TvJ1kdI5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D132CC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786469433;
	bh=di6KbX3hTZCVyUaKapkcNFyXd9Tqa9YbFSPc7Ohq8UA=;
	h=To:Subject:From:Date:From;
	b=TvJ1kdI5zHncClE20SkzJHapMQP2EjK16nyJlZRf+yGq5q/HcQvMm5kT/6eirbVax
	 AfjrBzTECjOYa9rwtNPppsmMm0mIjlgBAb5mXxDH5XXUn7iEr2svc8mL3n0TZqOpJO
	 mhEkcK22ExpWpvbN2Nl0ZEw8DjqIC+qoG4tP95XBpchBZ+iZodFzNGWDcpEEgYMhaf
	 BMXDQv67fAW8UONoOXMP6L9PxACQTkAgShMmbm9aL6+7/g54eX/ZdSluhkFb3pFEuL
	 rtxMB6D+bdtvXv5AVAoE6FvC+XTInE/LWP+PrpgRUsmX/goIaeHAraDeLm1vnOFxij
	 govPyOi6XhDQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BC0C5B572
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178646943368.25677.14437551746800773111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60d29133f598b2339e5c6db9c74fbf357a4542858b46634d6f17c394f67de14d
Date: Tue, 11 Aug 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786469433
