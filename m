Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 608624C8A
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 23:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719099143; cv=none; b=eDlT8hR8I8GQAB8PIRDhh6q33/TUMQlbUfzJnI5/U10+y0Xe1ddQuVA8757nqPrt29UWKr+/MHN7DqjXzwmwgfUELYe6tL2DvmjM5/SeTy1mspo20cujZVzM0k227aM3q2bJ6C7fT3JTpbSoDTDBvBAbdw8tB9J5k5ZSb1z24LU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719099143; c=relaxed/simple;
	bh=7YPhnHWBgxax4fLAmW2HUAFkNF5SnjiHGxuWCGbwqm4=;
	h=To:Subject:From:Message-Id:Date; b=I7WOWWhF532p5eLmVkraGASonEc25J90wdG7Ram1yKteTlSqFWE8TsmoVjLkVFe3OPQB+btDDXFqPOVR1ASHUFivblQdgFJ9oNY4aBH/GkePY3AGjB1wjdrkSzBVh4SoG8dniCxK7yAFtiMl1uv0+8QwUA90VWQC5RRquy+POUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HMWMB69Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HMWMB69Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E584BC3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 23:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719099142;
	bh=7YPhnHWBgxax4fLAmW2HUAFkNF5SnjiHGxuWCGbwqm4=;
	h=To:Subject:From:Date:From;
	b=HMWMB69YQBVLiuEF6QE5wUHw/XOv9v1bkBnInTthDXM0jMGvj/Y8/e17KC0kaQX6t
	 S98QoWEASGwCEExvLLK5Zdpi2syaps8hVYT10IR5PSjhxK0+qXh2p0fqh9FFkbfW2+
	 eDrMPNzIxK5gVUcfeVz+mk7XwOO4zINQefH6tVyhRLMzidmJg/Dd0+akYxxCKwy0l3
	 jq2XExEJAPC5OYuL+h3r81Ex/hLok4CMPh+ejt/eu8EMBqzOU+ituTVHlyzc67PPbb
	 yKAZiRiAL7Hj7jaj9dR69Xe+jaZpC1qFNh8BWTBkP/HjmGyPC4CSgNQGZyva58Ywsx
	 y6CaHOtgtElCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC1E1C2BD09
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 23:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171909914279.9607.9659625172561699328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1b2b7f7bc8c3a725f0f5d1b3e1379f5bc54c385390807685b9815c1700abfbd
Date: Sat, 22 Jun 2024 23:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719099142
