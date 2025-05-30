Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6D41F875C
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748586594; cv=none; b=beVcojxwTpVKAXuN0uc723CYsstUlaVpN1ag5cKDNZU1c7DXcBiwd1VpjgWW5uuTGhJbjlLFVaPs8l7d4NWZCtQ4hroeIkg9NqAU04EwgO6u/lyA/hDyNi2TZ1ITE5Qt+ex2b0MR7i4eiUp0sy4PCC2myAGxq89QAK4j+3Jmsyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748586594; c=relaxed/simple;
	bh=K+YBdTTCqkNZbuWe4YfpSF6+riRUgtbXOeo9zYWzhjk=;
	h=To:Subject:From:Message-Id:Date; b=BuTjRizQkltBxPmKR2PSsKWDsve4jHdM9ZZez4LPnguUiiP+UAiDNtac/Buc/zLqGdsmacM4NtDhnGrDattUCgsyzctzInWWclqdlQdpbBCQ4pf3JvJOS3R5BqLIVyCweDv7lkY+jSTsqJC6SSfKR08izHWketE0eaxaVPjoDQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DgVEJztD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DgVEJztD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EA0C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748586593;
	bh=K+YBdTTCqkNZbuWe4YfpSF6+riRUgtbXOeo9zYWzhjk=;
	h=To:Subject:From:Date:From;
	b=DgVEJztD475jtLXFDvvWTsYkZY3Nuj4DB/LxLi3YLpD8Xqze6ZUuFdDRqvGUelbyy
	 2pHTuWUly3169KHafVAsgBvcxWRSMzfbShs+QSZnpndrPDrIJH1RDUdluIgPiJgemt
	 BHCMiONswvLDY5qbaLkFjU2PANXuh+twjIzCVuDZB9YAgru2lKLrNxMaVTA2pz10ZQ
	 rEoY1dKK5qs6405TiAU9y9v295EOCmWHBnYgt0frxrQgwd2IlQ6axHr6gBUBibvu8y
	 2Uzb4G89Enf3hyJu4avPe2bWt7YSbA+b7tK8dNaaaqam5Kf3UbjEvoDVC37TXZCL/x
	 n80xaFQ+5ufTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F040C3ABB2
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174858659357.27226.17129088251053606266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca9d3864f95627f512e66ffa56ddff0669a52edd82c1a1e1eade8c4e5fbaec96
Date: Fri, 30 May 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748586593
