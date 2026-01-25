Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4771118C008
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 04:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769315034; cv=none; b=rha60Q1WhAq8RGvcgjF7GJj465EiSbl8x6yQsVrAzFzAr1c6/SkK5WiaIAXJ8jt6g0jZo07KQ32e2YBPWuAP2xy/T3KTKaQUE1Sox9rJ2SiYd5MNTG5LRNpyAVUn9iD2qFQ4XMfPoJ84GDeR3BKbEtqSpuNlVGJmaJxkxZY5nPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769315034; c=relaxed/simple;
	bh=VRPi2zj6K3zsfCqmClI2N6AThG6yFGU7YcIETjCXI0w=;
	h=To:Subject:From:Message-Id:Date; b=rAQugwNk9yD9RTE8OlnzvaQQwjJxOX//RgiWol7nQ645H2IXEjK5Jo1T41wQTRniNko2bLLl2SirAF+NeupKqmZeAMa+TKv3PxS0IgTCkA+OxG2coQdy/GSeuyrEHtw5ozraniIyD77XySRiVY6p2AxFsJJAq8vzMqwK7ESXooo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I1gcLUcz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I1gcLUcz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8E4EC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 04:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769315033;
	bh=VRPi2zj6K3zsfCqmClI2N6AThG6yFGU7YcIETjCXI0w=;
	h=To:Subject:From:Date:From;
	b=I1gcLUcze27Kr001JeBjPAxdj3BauZdZ0njVZAgiR4vfiIfkNLx53iVN9NgIe6Yo9
	 i+tzyk07ojG0WRwegJwEsGlxdUZc57g5mW3Q24SSggpmx7B/s3Hn1RELfkONxJrgDa
	 aFxITc+KjI9uo5hU8WeYz2MFdmErJnXW1c2iZd6wcxzaUttNxgI553Aaubf430lHUM
	 qnfrXPMYspm1UjbMzDNlKctpECW9ja22ZkbvA3naKM6yj3YVea0RP1r3kXrZ7Oicj5
	 z8tMSfTawlCae2dAng+C0hV+C2fkQMA2LIVVp7KNZUtipCaN4/Hm/YZcniPzhLfrbq
	 UH3yk/hxT0jUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B761FE63C82
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 04:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176931503374.6762.12654790300728525656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e95e3d0e7673675441876ac3e7e6c99dc3201efde096f7a148cf92ac4547c4b
Date: Sun, 25 Jan 2026 04:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769315033
