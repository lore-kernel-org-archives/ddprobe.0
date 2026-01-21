Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12A4834575D
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 23:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769039034; cv=none; b=Vk1gjhe2RyPSU59GJ3IHAgBkavTEGRomuGlm2Hkgwkz8eqSvPvwp7CzBXU5RU3QW2XUi6ael43+gYcPcxFjQYmMaqDv1wbwXBKntXxyX6/vLwmitx31H3cLc3RYb7qdS56A4nV1vFFYqU5cpJDJXK1Btbl3D+e1hFTLzXrnebhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769039034; c=relaxed/simple;
	bh=6QN6C/JvcIaq4GbtDDWWndxX0kOWJHaaca7VVod5two=;
	h=To:Subject:From:Message-Id:Date; b=GcHxkVUFUvUe5yQ87Mi+609Tr+tRQRaalTqLu1AUxDv8k+5tqq0ktG39RYwYSXklM9rb97VsPNqT0fe/tom77wBUNyGSTbxo12a8esWSxO08HvZIqc8nu76v6Gvvb9k1kdl0t5dOQMPSUUAOlM8NwVgD7ez5qhXZgnT7hT2HfU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nrVlzGJ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nrVlzGJ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DFFC4AF09
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 23:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769039033;
	bh=6QN6C/JvcIaq4GbtDDWWndxX0kOWJHaaca7VVod5two=;
	h=To:Subject:From:Date:From;
	b=nrVlzGJ3Z+Prkf6GhiSdlQvaea5z1eUFMBYkprsQE1DxN6WhdG8hjrzwpye4Pgr0e
	 djnaID4cWN8jvOt6wBbzjwIKpRPDzX1QugLJbvkwgHd+Mi+9ok9AJBjUQF+gaZsofI
	 FothOY7iAix13LdhlSyN3DoQ8jEBSuEp5f48ZYXmWUa1ftSxrVwcoLiMU7aO26BWIO
	 v0cnIHApsbwW8tVh7bg0/xUUxuxiKGl5d/yNaUHTcvlejvf/aBSpYfGDn1dc2jBD53
	 mbGs+Y//h+tegYYZk30kcBzYMNoQvqmtHfT3E1ErPbAU2Gs7YoH+loQEDTrKxJKRxg
	 00XNRDqqx48Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974D0C44536
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 23:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176903903359.27421.9092798020589444174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81a70d516b3051b9ace233d2521b208004cafd6ffea1e5294a5a6d67701f8433
Date: Wed, 21 Jan 2026 23:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769039033
