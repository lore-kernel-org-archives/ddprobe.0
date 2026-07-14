Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D430477E4D
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 13:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784036914; cv=none; b=lJ/CbUM6msa1wXfNgBWC+PeWoGqrQmZ4APpJZNTBl23e7gHOCyI4QtbRRb81HgaTrkWBzzI/W5Mk+Y/J9FRYi5EsQDCDu7qNHIZ7oIeQldRIjV5Oxb+FCuyjxeNvZVekmDhm3EJCOks3nDhIq8gF63do3IWSL9ixD9L1v+NTLSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784036914; c=relaxed/simple;
	bh=YrOiDQFdeX3zWIYT+yIzAEaU7zNCz/BakVb9avf+bFU=;
	h=To:Subject:From:Message-Id:Date; b=VSC1srFqvIDY9gAIfV1UY9NNLA1ZWS7gcX/MejsKsrxXOibq4tauIRx9gqmr6Iiaj8+hl8fReufoYECpbBdK4+QrNiMmO7wiKrGjTVXFEsgyx/TycL77GMTpQeEpiXSLY9o65xh7U6UgQLQtKiZeOBXEIlVVk1v2PHEaJYkTpIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RxO6U9wG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RxO6U9wG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF31EC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 13:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784036913;
	bh=YrOiDQFdeX3zWIYT+yIzAEaU7zNCz/BakVb9avf+bFU=;
	h=To:Subject:From:Date:From;
	b=RxO6U9wGoCeujpOVEWHvqewF6wYymgiqKSd5BxbkMcpPCQ0kYkDqpjDPzgqGyd2A/
	 6crCLbFvGxB+qv0MNcaT6J07F6Th6ZMnW66O3j4RivWCHK8AbLW8Ujdd0HwUgZ8EmZ
	 9jb1WcVTaRbk4dL+MT4BNMTUT7DeNA5w95Ch85lyfO9z27XFSpLsfpQYnfth3XZaX8
	 NVj5wtHpPhF+4bzulXHYFHEPmRWuPb9BWL8DoHbk5EHLUYMZ20/krsnO7rSgHYBz2B
	 KoPBTNG+JUX94ZE1z1kPLDrzX5C95bOB5OSL5V3879gz7fn0zvovvDvwcRTJXyqc7E
	 yurneajZuE4WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA50CC43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 13:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178403691368.13825.18077458477331741219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 250c96facd0b0b86f98cbc4c7a561ff9235634f2fdfe744b9441a0c51ce20330
Date: Tue, 14 Jul 2026 13:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784036913
