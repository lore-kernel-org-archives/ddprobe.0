Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333531D516C
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749985794; cv=none; b=le5KxcHOvKTBDAug6+Qa+LTUVDYEco3oT+UA0cWGAqz3EjprWms5dyQJxJv6BdlXlKnbwL+5SXW1c2jbdG/b4OxILJuo7GQ1n1mwGsWVCteRAR8B9QdnUNMteHmR5Rt3HfGOHEevpYHCqjAwk3fYCDFbyoQ1XZg8fHx53j2NgLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749985794; c=relaxed/simple;
	bh=SMVOo0lg21xC284TBIAyL3a7hPKMfOv8NuKVQCq/74U=;
	h=To:Subject:From:Message-Id:Date; b=dsgel3vDrPp9LYy5Epk4vaLPgNjh6SD8lwKgTz46ZZfEMCSak+pAsK89bBke4GuVh8jHcHquL5sG8+9u0i4TSF7umoiUXkqPAS/YHzpjhmbEltA51OAvUpkHhi7OS88s9sPhTRqzhQz+HAyxM/1KYF8iKC3UbPjAi26gWtDkO6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NCs79t4k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NCs79t4k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DD1C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749985793;
	bh=SMVOo0lg21xC284TBIAyL3a7hPKMfOv8NuKVQCq/74U=;
	h=To:Subject:From:Date:From;
	b=NCs79t4kQ2hRXpY1noB04/fqYqCCGiWeWAl+4C+xH2K/bQmbt6i9qtl1MkPuBhlfR
	 vddPhWnJX+2w1QZxXuma52I6DAoMjgd5IyJiHlReQYxpAXnppt27Jv2te+dUUQJNKB
	 n66DUBVuCeZzUr4cqVoFEgZDxtqz29WJ+hPFyteJuyGBonZFyvGemY2tZy/Z1hHuM2
	 zJbXlDKMCIu+0FyqYd7dvggfwC9qUPfcI9BWABM4gPPQIGHoUUZ266xMUaP/0F74JP
	 afAwSEJeN9uckEebSKgJEXi/0hcQnD6qS6lSe8VfsB51OIAUcFfEMOTlS7QpzoHNIU
	 9JcVPZ+ooG2aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D9DC61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174998579358.1222.12169341944132996995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d069aed780f2c6e4694a080a63358ebb7168ccdc22f8e3ccba2348738636bc1
Date: Sun, 15 Jun 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749985793
