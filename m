Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 534033E5A30
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 21:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782335854; cv=none; b=mhXRbGptU1QW4TzcUUCPDfLYBrieQyBg7XBv+ZxxJCe/Im+9FaENX3Io4mmUVIFcmYlZlkOFQZq10JYi7xN8O9JPOgdwHxx7Te0bW3BPzH5gC+MX78bsAfFFCFPwaohxGFNLSDrEAXfcvEtMeAaYwtExomU4uRFQCbt8pVfFtJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782335854; c=relaxed/simple;
	bh=ZaJlGmZLKKIsZz5KrODPiiQPXfWMnoqDrhIRIGmDx8Y=;
	h=To:Subject:From:Message-Id:Date; b=uH9fZHx8Ntr9Mhze6y5gP4XYL9fezmmXJuhFwt61FD6O8zhbjyTIYI3PhUCeKp9Mt2IRfTEfHoT9lL5Z4ECCy67MZKYRe8JEfpeeqKmZzVL1qmDH8WK55tvIAUbbUj7+1fFjRidFq+TRn7yoplxLVSq8+Vtp1A1aXHwxV0Bl3nU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nKE0+CJ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nKE0+CJ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DED48C19425
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 21:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782335853;
	bh=ZaJlGmZLKKIsZz5KrODPiiQPXfWMnoqDrhIRIGmDx8Y=;
	h=To:Subject:From:Date:From;
	b=nKE0+CJ7A5vaUMFR8o0BV9SRUepTIRhN30QXD4E/d4WJJegud7bVG8CQhF/AKGZyh
	 xsjQpCHUb+cNfKzcmzynMouGoPBZbtfOfesqStYAKNGbtfME5V5X0lM+Bv3VCOx67Q
	 yK/ypgvRQGVEegJdrXy6oLLbEmZrJ1MCvRqIDnF8rWokldt7oRFmQu7DlEkukjRcvr
	 CGaUqVj2ncxRMgrNk+G6sUtTVuPxK6JM9vmX66ljumOIPmyuD+Kxbq04nUu0gHOekz
	 VorDnIl7QwgXPTZnxoLCn3PPTKlU6pSmPe8Hf4NJwbZN4GtTLD5ngICdUQFPYFzJly
	 R30hri1Hk9T4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0989CDB479
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 21:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178233585371.10656.1659086848384193219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7abc24ffb7137ee3efc81e278a02638a88cf65ce6861ffed7e115d08a13f27b
Date: Wed, 24 Jun 2026 21:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782335853
