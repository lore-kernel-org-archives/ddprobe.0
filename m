Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D96D1E32D6
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744227594; cv=none; b=B1PM+OWBEhwuVf1q3pe1AF0SkVbwmTtxwOSECRu4OhkBmAgXqdvxTXGxcmlH3LgFPR/pC7ku2FUtMRcb6gNBrK7P4LmIf+m5GWLvnzOWvmyjcuREdvwMf8ut+HDt9cNv7uwxgIBrx5obphBofNEfvhbdm6xtxrfCVobIYTKp+2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744227594; c=relaxed/simple;
	bh=Xcao0dgVqOnuac62Le6KJzYCHTta32NTijlETlGKyDc=;
	h=To:Subject:From:Message-Id:Date; b=ZnEjxFlePu4R8xCw2UtsGN6mbi6eM2YicRaiIhfIA8d/lQUTbdWL/YEEuu99Ok4Xzw1ut+nUIzM/vkKxYIqXXLOOPDl7htDWH66rEZS/Kts/k5SjvLVIqn2AGU0h8q52ZsuppjU6E59pu5fDGyaNaXP1LDfquYum1JXazXh2k70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ioAtoqV6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ioAtoqV6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A884EC4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744227593;
	bh=Xcao0dgVqOnuac62Le6KJzYCHTta32NTijlETlGKyDc=;
	h=To:Subject:From:Date:From;
	b=ioAtoqV6JofSPptbFDe/4eHpuHq+r4wGl69keR/1fN73e7HrenfvkVKYavkB7J91E
	 oRx1CF3U1fdPwwAVPpgb6oIRPafbuxGO7lHU8bYStXJzLuIERGQYBQmOcVgp4Wcueo
	 29WlIi5LIopFU75gCsdqw4oOfeUA9wYrweJr29FH4Vf2OsZFzGsSAlwEDuGyWcmVoZ
	 +0MS9b5EX/KBHvuTeQj/6NEYAYv4kJ+HdymjXJP+AQ0K5nr39fWSRKg5DFam3IKIGt
	 PKrY7mL8vRqFNNpmw7KPqqE74aOtRoyQRQr5px0LsLNkLOyFprXYsyUTj0K2Wj4PQ+
	 qjljOgWB95hHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CF7C36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174422759360.19453.16390577007650191021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8622442eaeeb2ecf350bc6f16c9b50a6da964e339e1311a082efdd12d09c936
Date: Wed, 09 Apr 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744227593
