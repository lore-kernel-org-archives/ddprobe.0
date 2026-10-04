Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D20A43991E
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791121234; cv=none; b=tjvhBj0dqy9pbye6UwkH8ZyBzRlyWXeCxltYhQze41YddsooI1V4o5II+cbpmGERocUpR0Eh0k3MboQcGOJFX+6kbqYsMhUXkj4MZgq8eNWIccLOgdfW8QPgnNfuD78rEeHwS6Q5QkzQPDCQ6iZmd20ozWWQGZJ/FfFi9t1lTU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791121234; c=relaxed/simple;
	bh=rdHd9QRnpnsgVdIqmg7+AGdbzb8b8jL3D7IkmOks5w8=;
	h=To:Subject:From:Message-Id:Date; b=b/1xZ0DgRzl8FDqAoG3i6J/ota85LotQ8KBik9NJhBiPqQW+ClWRDVJrj1wq8XEeO9HIu7cPsioMsDnneBju/t47qrXs6w48sgT6VZvelaeJPoGTPiW+eXOGoT420xJcjajCF/Hu4SYHWSoYhqVrAJErngzt8tNIlPHOiLkyiRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aiwe4/HV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aiwe4/HV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCA9EC2BCC7
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791121233;
	bh=rdHd9QRnpnsgVdIqmg7+AGdbzb8b8jL3D7IkmOks5w8=;
	h=To:Subject:From:Date:From;
	b=Aiwe4/HV1Uc/i9X0WC49K3NCTrukM4Mb/OOtkeNj08Z3igLWL6cCOcraUcsy79aQy
	 KgStApImZvEFGnsBWUkAXx0/BioZ44ohopUxCG+llIHcj0+Xx47of0AhlFTJzXOKDp
	 3M1CB3IfEceOlzZl2Gen8LPaNcIhEfrZPxzwv93JvSc+HfFQZkWsK/TX+nKABkpJZw
	 EL127LLqZLU4ginFWD118QEiiaoYqT3EggtmoIEzFX4ZPNqvKhNeD44x5JyTgzRN7v
	 9a2oRTHZK7+R1v2CEdwFdHdsglH2AwUBMNyZyZXRuELgzuXtr1IeM+5RwIY2uEzFt9
	 8WjsSvw9GHu4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AF0CA5FE6
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179112123368.4353.3070475064162468410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adf126997dfe9faafd78770e93e188d533b53295bb81a80f8b99b7bfc06872e6
Date: Sun, 04 Oct 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791121233
