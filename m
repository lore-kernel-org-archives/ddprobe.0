Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CD293090C2
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788919834; cv=none; b=BBGchsJXnEmDqVK+GfM0UVxtlROH2+7EfxAnrXB90OZBUj/z5mjc0FpOV0s/q8mhPhhfc505GmcxaKEUlezA/hU7tTJgeYCXoN/6syHND8ANiqizfZfLfjEe0q/jStEu0kZmm18MH9H/rOe/IB0P649OpINPrWriCle9CCv1azk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788919834; c=relaxed/simple;
	bh=3eFzt5YyB/qQAqGz8Kr3LlPRD93o/+osmt9T3zWNA4Q=;
	h=To:Subject:From:Message-Id:Date; b=UU1L/G8EAg5Zm7fYIVNExqzxEetbf71mckv35kcRRlhM+Kk1UeezUigvQPSRhAC+ujmC22NryOiyWw7y9X7TtOA3D/Hr8R1inbgflueGnZYIdb5vABsDW0cUyuHKETK/LXKifb/GrFiA/acaN62VauRdWBzf9EJ9DBMBXdCuEco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nKtWqbKf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nKtWqbKf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4112C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788919833;
	bh=3eFzt5YyB/qQAqGz8Kr3LlPRD93o/+osmt9T3zWNA4Q=;
	h=To:Subject:From:Date:From;
	b=nKtWqbKf4q80S9ifjuWcqzs70xTLG+o0CFj0nCB1R7E7MZaQBckKJK0RD7azmBDjg
	 74gMrrZOcDHDitkwtTrPEJ95xDQMxOkyaxMFo1xxzSzRAxYabGQXXDvClPrkkH9490
	 AsDS7RUbPnC2a4WWY0b/8qrfWHvSSlpvIQNxQkSCPFpZy+FKCOf13iPkumRebzCGcs
	 5M9jMw0q0x0sphhsnkjcUscnf63O5rljnMkDBWsALsKCxVjclnFV907OSO3nLtJ7Kg
	 AijoJIVGRG7JU5qQzRkX8ZOqOStCZbijbHJ9Cyv0jrKoqmbyIrN0W/q4h22pSmdDxp
	 SNiaNWzN1tXdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A93C79FB5
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178891983368.19775.9078216565532217527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61370119ee877e1497a7a13ed34bc6418f7b69cd63c748c1f8c3be19d220d51e
Date: Wed, 09 Sep 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788919833
