Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47D50CA4E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 04:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780719274; cv=none; b=eMQ1B77EuM2XElFKY0HYfGjS6PTbtjJOGcFemDUoDEcuXhlvQhP2kat9D27TCjepxnUzTSelk5ah56ayBcxS+sjscAOSedQlIVZoACncJqZgFfIEZBzkTgC+s8myFPcOYafmyfl88rEq3+x/cQfKslJ7XvJcCfzjPf5zm7znhmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780719274; c=relaxed/simple;
	bh=P0dlBCA6OSOV5opXAv+Fpeenn8HCZGC9D9Cdoldr804=;
	h=To:Subject:From:Message-Id:Date; b=QrsYetH+WWci1CcoA1BpLAw8pR8G/KUREOqOooIeLcGAHou64owvZCNPjUowcSOq3Y0iHwtYS2Jwgtq5Qe+/lprBZe5VKu7AMwwk4O2UkzUSLkL4lsLRTwBhG2YiQzZ26AoqBs4qcniHh3ysRRXciv5Kn3ZKvYV0oFXkrWlR+bM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LxfH8Sb6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LxfH8Sb6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF496C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 04:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780719273;
	bh=P0dlBCA6OSOV5opXAv+Fpeenn8HCZGC9D9Cdoldr804=;
	h=To:Subject:From:Date:From;
	b=LxfH8Sb6j7dQ2corqVYt6ExX7DDV/PVP2vuMOj/PGDLj6o8B8bGTZQG5bQ/1hpDJo
	 7St0hsmL9lSTRuBxQabuoVO5OQbgVyW03mX9mTDWYowXKKbVndj76kZDrUMqtrZrDx
	 ZXu1gX5okHu2bCUbzNOyFesld+QvlEYDGm8m31iVu4aOyjIAamCm1iNkKwfttDiRHN
	 jzAlstkT5oipKosymeIRPInSelTkMIId3+kfMDtoZcIYnNBUBe47U1O6TQ69lBWaeH
	 xpv2bGmljZj0d2jPwomdKjMNp0aWelL0SjCDx80KPhpqU5ZV4ttfyydOj1bJPcn0Mn
	 4xlpR4COr2XJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B039CCD6E75
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 04:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178071927368.11370.3111001167005517287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a8021c255a0ea82e86b7bce26abb47196d091e73fb6cfb19136802a772c043e
Date: Sat, 06 Jun 2026 04:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780719273
