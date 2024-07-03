Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BCC318C05
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 17:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720026923; cv=none; b=lr0GGO/C4N/ux78tIuJl3w4lufns+2XGIkeMnRV6hoQmS9NWuY8VH8VKCRYxuoPM5juDEwx5h0Q4QO0YMaoXlXsyjxBMGNzHH8KnnBxo76OI5Fej8gbz3C2+NmZcELHwiEc+AWQD0DgTUvjbS8CeTVdTHdpx31OaWszOplChw2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720026923; c=relaxed/simple;
	bh=ERoXAtlZAISJ+IH66gCodIerhSZpRQnoCKgWmTd5V7A=;
	h=To:Subject:From:Message-Id:Date; b=Ne493hiPUunRMivV+Ky0sDK9VsDZ4QhIVFHjqE1EHKV/bM5yAWtT9ag7GP0c2WvltNMRaVJ231Vdfuv/B5ohFqwel4d3M7GQDRbb2lF3otuAGwtZe9ECeLW78IW302jku4PiDm12g8JtUd4KtDhV7THIiidTLVd6frl9YB7nOOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RNUVJexw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RNUVJexw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8D8CC2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 17:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720026922;
	bh=ERoXAtlZAISJ+IH66gCodIerhSZpRQnoCKgWmTd5V7A=;
	h=To:Subject:From:Date:From;
	b=RNUVJexw3x3oMchV7kFdieWfi/U/tvAjbgDKDJNotGedfisattwaHgu8GAWjYQi/9
	 FVvcatQYJtcxtKWllfEUbc6szg26mAuE/zJ1TpSbF1eseanPodduqIyPRgEFYc0Zvu
	 d76SK6UnjnWkGewoLUjJE7kee9YM/OJ13PGYlEmUuyP31kfSL5uiI4pzHAwG5bf1LT
	 HGjIARRihVZ+obMWsZbRcAE2GSpTxAz24ODS+8umL91ZyzJfgiasrClfuYzDfDJwk7
	 m987X1XNZb/5pqTXc52DxeULwQtBZuqGFYk4MgrXooq49uovjG4oFALugRkDP3jELy
	 KKIVCIJOj9JEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4997C2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 17:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172002692279.3806.7447361202091182667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5759814162e441b37eddba12e99659f34f995666cd852a140102a001bcf922af
Date: Wed, 03 Jul 2024 17:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720026922
