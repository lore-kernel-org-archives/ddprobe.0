Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60205FBE8
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 08:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720255523; cv=none; b=JhO9ZI/PuAFPUtsZ2VDJnNo2akKsN4e5EqE1L7SESUjOBSdNFKfzEH4j3Zd472SB754h2I14XMA8vnxDcCYOes35Mtw+JI9vJ+Nftfs9fTnSp/5PpDYgnXNUC5HS/qVDZMrj7HeCgYU4VugxiS8As7UgkwE/2YkyeLYNZ7eANUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720255523; c=relaxed/simple;
	bh=lAeMgWAI1fj7rZW+gnnVcdjKFm0EfS7Y2y1Xczmr9cM=;
	h=To:Subject:From:Message-Id:Date; b=Pc8idoTra4vpZC8P9PdOYbaPbKHSioaCkXM4Gq3bhw4u1L5eN0n+OoQEVnn4NzoB8hzu/5BimDPeOCIb9tJYJSmf9vj4D/MiVQOWus+8cmWYp+hIl4snJ6sNyBW1+ESF/I9bIGPBGn2vB4MIkzuthin3tAYVqE0SxkESyW3F2Gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E0EbuLdU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E0EbuLdU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5714C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 08:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720255522;
	bh=lAeMgWAI1fj7rZW+gnnVcdjKFm0EfS7Y2y1Xczmr9cM=;
	h=To:Subject:From:Date:From;
	b=E0EbuLdUvpn2agjI1vU57hqSVAXLL7Y4RubFOlUGr1vaPRbXLU3Q43Qply1z4gppS
	 /D+JQsJu+Vj8e6XXxsNUWdTALlMQGUxUuGVDGzkqckS2hscDxvj1rhI3GPoYYoTxZB
	 53wH/UZW0q3ftegv3enwjKC9Qjyy5MbThdp8VjYUfb6bu4CS5rCTDI9wDvRXzpK1JT
	 q7KzcCNG5hD8RiTxhaltrnCXIx61Mh1JsiADM6BBYc/f0wm1vy393ahxqqd4TrlQsI
	 7F0yeG8zble6ZEFfOeUwxVnJasm4YC93Fn6uCZlkYhlNso3Ei9BtEqfSXkeb63CVmM
	 h1RDjD3Cwqssg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDC6BC2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 08:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172025552276.28976.8248318171864912060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 313ad67f9b631922413aa17565681f1a94d22a1a8e788050f2bff0f6e0a082d5
Date: Sat, 06 Jul 2024 08:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720255522
