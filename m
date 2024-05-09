Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 883F953A7
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 20:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715287343; cv=none; b=WAIpl+B2PbSt433Jz9GjaGhmltQFokjnu6UbVny/P0qFHoROo07IXHDvMzMUxyQJfn6/0QTuaRzG6+7oqK6IwNKbKY7C44SSkR9C3ULBBBv94L1Jv6m5MnuA1QWJyy8sQh/fchuGCgCT7Ehmdkg6CMStLzCe4+U+I6wNsAnDBQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715287343; c=relaxed/simple;
	bh=J2W5GRJ3brFK6tYe61RagDxWsHMRISEj5EeBT767Uow=;
	h=To:Subject:From:Message-Id:Date; b=KXM1C7WEfaa8RpAuELPooceZ3LhL76RVItLOdZeA4eAKR0YWzEo8cG64tNAJENq5b4yQIsUjFMX6tPsqwi/5jOZZZHa4xCyXl7FG98dXRYYLTnT4En5KTNX7397yCZCoVuPNGBf1Gu0QLGPtWZOPu5hsdB37SNtqGOAZk+G9+ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kHeQ8kfT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kHeQ8kfT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 09B7DC116B1
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 20:42:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715287343;
	bh=J2W5GRJ3brFK6tYe61RagDxWsHMRISEj5EeBT767Uow=;
	h=To:Subject:From:Date:From;
	b=kHeQ8kfTUY4y+n63esGeZ00U/sfG9IZHiI7CiHQotFA9mursOMXJ8e7DG4cbJrnRp
	 T4GJyXxlNVtXvnO8Nqax8QvXzqjhImY9y4gIwmML3yXI3tOJQxWSDS90L46N2pSNVi
	 0fm4M7Ovib+i9pEXlzfiT1o9GYP4u7y2dR5v02cAE3CKwIsCepD+eOzhTycjUBbzLR
	 WBgXtemyKj/EhdIDRC5nMtEjQjT42PAdpv2hIkkiWNkrdIqQg8y19q0W2YqbDMgXLW
	 /PXpMU+efBiUomObjBC8SP4IyInsDKOkehjZmPF9jPRt5hyD0ZBdWfcDTyiUkGzD1+
	 xoDRrhUHcFbqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF215C25B10
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 20:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171528734283.6675.3003451845999803452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3aad5125ad32fe22a5e3bdc66017786083a85fdc68822c21910e792afc291949
Date: Thu, 09 May 2024 20:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715287342
