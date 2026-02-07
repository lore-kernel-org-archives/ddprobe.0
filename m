Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25849299AAB
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 17:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770485034; cv=none; b=BapEr3mWzdASr3JnhO7jiQDNdXKlihrZo7UiJ2DcF7ISM7fNnYAIgHSnInZKm88uJkBZjOYhU51Rf42Q4KdMUN2uwuKSiFPA0M2P6EMvcojZCoI77kPZb8wFtBe4kUmGzUurt+bQwwKfmLvJi7Jt+WzEB9MhLur44h5wiOxwv1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770485034; c=relaxed/simple;
	bh=PCHY/XNbwGPqFf0etSKEk6cWqcdFoerj4kaG6mFKgUw=;
	h=To:Subject:From:Message-Id:Date; b=RU2mGA+uJ2uzXcBEHneIvcphlIaoDFtZoxcSgkji9giSnhQvhUTHOA49m/LANGS6V9k8XRQq1P3TYchZRePyi6+WHcirjqO+7G4RAosogWtffzHtTXc/ZIomEgI8Op3BiaCjHnJ3nrE7b+VkK/vuGmAbHSnltmuBkhNbu14lu14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sq+gnKTv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sq+gnKTv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8368C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770485033;
	bh=PCHY/XNbwGPqFf0etSKEk6cWqcdFoerj4kaG6mFKgUw=;
	h=To:Subject:From:Date:From;
	b=sq+gnKTvWB/Y+To94+zINNPypdFGquNSBh21F+yL+wuNWld2wgqXPEDDfMjipLY/t
	 FcpOthq0/HJiK6oMVHIcH7Z3UYp6hTfPRFBJ1Cu7sydMevJggysgMenDCARFU2OkkY
	 GSco2pbHYLKvwx4KnYK1yphwF7SeGtj3Uf/ma4tJtFd604mbz0i8/cFRp2HbuqWrsn
	 FvvAiTYcLH6i8XdCriuUDd5CgyT5iNh6M0n9cFpDMm9sFhpkNL3NWcUFyNrC7wtHzg
	 4FPymZ8DsOt8XV0fPtDd5deuLnJClK1+ZT2weVITerBfyQe9Vaggzjc7UIFpPQVlRF
	 /bRVeokrK15kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98302EE0AE7
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 17:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177048503359.18300.17271087967353491524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27bf3946015db42f6d3ce535362e51bd9050c5fb76f4074bc8243d57ffaaae59
Date: Sat, 07 Feb 2026 17:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770485033
