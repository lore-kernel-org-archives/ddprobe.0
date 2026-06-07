Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209D93AC0FA
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 15:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780845274; cv=none; b=Ht9dHPN70MCHluCRmcnuJGb+bwNDml4nMmfRhdu9ymNTqi2dVaBLZGlwFR15xpZOC00FtBROe3ASETK4l4SafJI7PvPlx9lF9dxB1+FQcSXHg2SCyWtSsgkA+4L56IzgbQxqekYygdFEmUql80uVybiBVmUwOD9evjLckGTL27M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780845274; c=relaxed/simple;
	bh=AbN5R5Zn67PfOFmR6l68RalUvv97lgxZ5cdCceMVM9A=;
	h=To:Subject:From:Message-Id:Date; b=QGn+nHzcCGG1ab4mcuFUOiLhLiFzQ9o1LT6JWKIRW3+3kMu25VxDJusztd0fHbwIo/mNNkt6ywWQ6F14vW6EJ4EVUe0uGro+cXAOzNj4vRkqgiXpvodaE2iVc0tVaKjuk7qkXoGTILhIIcptQWor70Ip5eaXzPXFdPDhAPNlYy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Djk7Gigg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Djk7Gigg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C86ABC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 15:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780845273;
	bh=AbN5R5Zn67PfOFmR6l68RalUvv97lgxZ5cdCceMVM9A=;
	h=To:Subject:From:Date:From;
	b=Djk7GiggVnKu4Z/soc8FEUwwF2REDvUiz9rGFQmDrf3+8RYGLgr5XQv2mH/amq/I7
	 kFA5foC1iUsVIUUN5DKlYHh2qil5O69bIWQWN512JauFcK5rFj4QIpc7MWncUoWsLH
	 NhiVR7zJZto6427NSjfPS1mif5biXjTrpvmnH/5XWTzVmkmNPdexiKjqAYxwaW3lro
	 oW4avtQNuPDPPZ4/xMKoLs4KXKHZbtNAtB+jxU05mERramgwbujEQIkTfxwdYLwi/U
	 vNeFKxFJddXVseqWJgd5mdgzawjAvsNNC0SeFpq82se6R13JvjWVJ0q8232Q5NwO7w
	 E+fSG4RUAYDSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4B5CD8C8E
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 15:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178084527368.9459.5895394544196803514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6666787e3600ea51d443239e11ccb6ba74fca0efd5e477d1f2ffcc79c844fa0
Date: Sun, 07 Jun 2026 15:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780845273
