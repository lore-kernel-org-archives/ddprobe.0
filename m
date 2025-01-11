Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4871E155C8C
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736616354; cv=none; b=MxCOXK0AszwxBCzRL9MGab2gj4bdUcMsLvP5xqQ5aYCmsVg69xS/E2eObQ2qRmN6gnqFVvslDO2Bwpa0CNVBN1A0Bm1OgD0MQiNPprhoYZ5tSycfztYNz/d8ySpjPaZvFI0pAxiGxL4UT5vxW7QvT0kmH7zXd1F24Jze4Y9XDcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736616354; c=relaxed/simple;
	bh=umyXm6dFRtEB3cSazPX8RYqjZXAb7TJOIYcZCTUCx4w=;
	h=To:Subject:From:Message-Id:Date; b=AKCh5SVga5X8RiDdMCiNkBFanAuhiY5i+FrWPQLuX1UU66xHsh2ZvpZYCoX6oXTzGN9bcvH0JGF66HLQcKkyJhq/zBrJDE0tMfYj7/G+PmAopiRgeDbNYRIg5u+Z8+IxgX06K84V6/2aiN9FFtI0pWcnqj12K+042D2BxMqh184=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kDtjI/rT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kDtjI/rT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5E17C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736616353;
	bh=umyXm6dFRtEB3cSazPX8RYqjZXAb7TJOIYcZCTUCx4w=;
	h=To:Subject:From:Date:From;
	b=kDtjI/rTgJVV7u2GN/AH+gZx3LxWoZESsZvIsEgCnZjHIoDPglbampWDl+8swDIR6
	 uIyLMNJYcs3z9wczHx9N5+tIoKIa0p2P9zjfoA0O2eW+4BcgsiMcIQLy0SiDZ6zBbJ
	 Cl/A/fGA/5cvsU4zET6nqNQy0nv/urgzP6VyWVXXwyVQq0xS/CUqqv+jaLxkzliD21
	 5NqXaDQxOrQ+7085fk74zD8lpTgBgtfx/o7a/SEgV5X6s++6/r0f1nWdRZ7L0U6WEb
	 2GL5tU3W446GrNBkGlOLeWNqPtZpOSeTAGtF54OYymDiYAEbsio+BgGW6XGYgUnuRu
	 VSgw/nleZLEjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A26C4E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173661635363.31638.9715471769856024373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b6dc5d3c9c5fa298f8ce74fb1e7a3fe634797796c98e5a788b28f5e3386b70b
Date: Sat, 11 Jan 2025 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736616353
