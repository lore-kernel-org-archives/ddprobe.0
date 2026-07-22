Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAAA9361DD5
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 06:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784702914; cv=none; b=FAenAf5cwk1ioMOOc4wYj4hA1DH9cjsKG+xPky7NhGhi7iBQUT8VEWZAzCKjztX9Gm4n/7qWL3BfQKHqoCrXHomgAk/V3KFULkpwT9nH+gmNraVj3qAKq0IEMNTeBDWAhmj/r1dztm3sdSOsXv57vhIP21rgePI7u8Ui9NakZ7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784702914; c=relaxed/simple;
	bh=/lzpmxNkKOGapSsJkJDZ/GdoNMmQDqWZLO3nxrQDeKs=;
	h=To:Subject:From:Message-Id:Date; b=jyeZQxyoogwUHgbUxZrVhBlOfQzTcNqujZcKDVmjGNPA8/TZo2ZgWprd6dQwkC92oXpnDHRlVNl1V72RTmazJkru5UXgau82+v0NK4PuqSs5w2vUy+7HvJvILzWdlm3GIfoyUbFb4sG+SHJLLB/gVzAuEowx4cJ/c++MejDnjPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C0oudRdB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C0oudRdB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 45BBAC19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 06:48:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784702914;
	bh=/lzpmxNkKOGapSsJkJDZ/GdoNMmQDqWZLO3nxrQDeKs=;
	h=To:Subject:From:Date:From;
	b=C0oudRdBiqK946HYb1eB0VJ8gXr6E1hXGyxgHaoxxqpAeMnz4TS6PePP0YsfoLBN/
	 un9yYwUsuNvEvgzUshRxWQDbz/fyxgDsO4lSPAG6s9XNlerhmBFkBkdj0Q39UoUmB6
	 wQKaMgEkVotZPrxmoNqJNvRigM+d0dbYETo/9JPHtdSXA4p7yUpGTq+TIht5bSr0pW
	 jH6ivPhVtdtAA2Budp05cUjQw/JdeiGc1/DdBScva7hQ3TRSM1zkyjo7euCCk1mD7t
	 NAAPmBeWnpEH0mm9q9lBvhp1JL8pVwpOfkszax1yLqqh5ha0aAUfVxaxCndf+iSFeL
	 yC2WtF8lweLLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EB81DC44512
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 06:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178470291388.15831.269000103270867110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7cbd908ff41c76b515f6145d72282d885a0d5f4b8dc78372ac7add31bc703bb
Date: Wed, 22 Jul 2026 06:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784702913
