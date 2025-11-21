Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A63A27702E
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 03:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763697114; cv=none; b=tQx9nAbpJp3xKANnlCXeSSbOIiDkurl5BnjcUW8O4qRXGd9NN/L1hd/6tqcnV41Uw3fxd/reC52NOomI+ojDOznHD4qlAn1TgY3GTx2V/H8v6obmTjNo2EDfNX8U0VMESVrXhmt+mUFmPoXVceW4+FbMg05IRHEWahXDI4rFghg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763697114; c=relaxed/simple;
	bh=251lNx0iDAR2dNqmR8TCsm+GGqEzSk3Wb8XezuXpVeU=;
	h=To:Subject:From:Message-Id:Date; b=EI0skZrOYdWLQVaewE7YRt0scc/+NkVjZxFrnnHHmcfxsTrunhegaQJSXDuRG4NNpQiOAGDqBbDvm5cW45xLRhlyqALw3yyDR9lRulQuOa7eFlxW9cp3tUxTfrCI+Ao0u4rHVLtoPT28bNemT3DKKVD2jzO6C2g0HTrMtEJWGok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=akCb+6cZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="akCb+6cZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE1B9C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 03:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763697113;
	bh=251lNx0iDAR2dNqmR8TCsm+GGqEzSk3Wb8XezuXpVeU=;
	h=To:Subject:From:Date:From;
	b=akCb+6cZ05z7CfsQPStJPVoczmH+cRwGM4aDviiQhFKeptMYlN4RsdueVsQEVApSX
	 RVdr8g/cHxo0C3JBR3zS72tjHIQhxtxzbOQL/W1eBcvXa7skefoKLsFeAGWSLL3woK
	 1fXzChEx+tI59rrnmeTiO9BQ9XeUb3pRGyrDYzKnXp3K4CyDZieUU7lQ7Nv4AJlS9+
	 Gw3DauXt5l/zDhEfwhMO89b0OkwXbDe57mWvEPC4lM5vCVKau1IJB7td2NiIqVSJRU
	 BX7XT1AH7BJ+sTh9CVofKoZ0IgylzoFGjgdmbNu5utjfnFry84JSOmPO/nhbjMpz74
	 Nvq+oW47twPkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9879BCFA46C
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 03:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176369711360.31647.3550667731752691772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd1a853b4a271476e5488e42e44f3184999c941f22e7207c3120328463da68ed
Date: Fri, 21 Nov 2025 03:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763697113
