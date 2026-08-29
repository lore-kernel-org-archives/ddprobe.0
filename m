Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41AC270809
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788043234; cv=none; b=dIgcurPIXtPcoxsJLq47oKnpk8niBCyoa84raPC8UZU6ajseyR5gnxDHKYQZmRTW2Bv4s8Hy1/ybcmAQA6RPJZOax4cGzw3jLVV0RDE5/9YavBYZg8PgfAotYjtU48c9BK1sU47dNaOQmeJEKFfZVYUBbV3B4bKLJxa4HtovB84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788043234; c=relaxed/simple;
	bh=ey2H1vX9Zgjb9dxU6YPoBIh2Q6cWSqUYggA5J193BGc=;
	h=To:Subject:From:Message-Id:Date; b=r0Mg8OUuNhicLrYxDrDj685rhy0SrU4oixZXff2470iDOSHDawvhgJQDzUjsh+OwD2duzfc2WU13PD3ovwE665QTDeRK5BARFGEoTBsNOLdwAOC7KFxFLhW29prrpDYHPE6coqsLpJ3CRPaVhsjN4+Zq6ZyKgwKYxIb70BIAXQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mf2g3tz2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mf2g3tz2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4512C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788043233;
	bh=ey2H1vX9Zgjb9dxU6YPoBIh2Q6cWSqUYggA5J193BGc=;
	h=To:Subject:From:Date:From;
	b=Mf2g3tz2aSPEiNLvsAmv3/Ko6xDuiMNjVcma4QjzyjEP4J8UsXhPrMwgvLmW1ejKk
	 qRcuU4npPrhEdbtK98Pr4ZmvJW9TAT92sZK69k2OAv7ZPoqzobK/KzgsVSrInEud5+
	 dSMvGPzS53oogM3p4GmRO3F+n+gwA2/HSLdUPqJUm5vqeoQZUUmrh+s6DN/7tACiyp
	 P02Y9TrX9JshRctQn3TQ55dYKeayYJ/7LvQpijgWOmhX2D1R6UbOBX8xvkBnE67p/3
	 5Dl7LFlJrmoXXwEOJSMksq6tvsJ1+plEXur9+JPUoPxfw2d5a0Zq/0+VTgpQVxL1ao
	 fTkOD/914bdmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE3A3C61DD6
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178804323369.1462.7228196207365525394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84a946cc17e5efc25db724c08730bb70f4f3b0293022361c88865cb591339200
Date: Sat, 29 Aug 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788043233
