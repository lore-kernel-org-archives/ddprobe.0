Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5C4E2417C2
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758718793; cv=none; b=FW1hw565ZO9C+eLOj9FVb/q2IT1wK+ujz/CocZC78YowvbtmJQEX83buq7rsldaskJJ5t065FofqlgPAiZSSFtuYWleAhqPPWdBwRMdrdBQI3NHgoMJ1NmC3nc3TQa/fpZTTH3Lkau/kaJK7uBamk9JsVW2cpgvdoERK244mak0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758718793; c=relaxed/simple;
	bh=XQXeoy64jup7iL6n7YAh/K/l6P9l0iI0kNeqPlx45cU=;
	h=To:Subject:From:Message-Id:Date; b=BT6OQaVL/foOIjsqvDagRDpT6jgNSt2lWz7cyMKvwc4han+30ipBOwULwANTLiMv6EpxbXaQZcFMgBExgvVOmt6BwLbtqxU/woO17pn6jQNXOiX3SxNeihSz2GiKMH2uZxbItJScZRFepzGuzIP3oPzaY84XyxHF3b50O/or5fs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p8cLWu2T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p8cLWu2T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF94C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758718793;
	bh=XQXeoy64jup7iL6n7YAh/K/l6P9l0iI0kNeqPlx45cU=;
	h=To:Subject:From:Date:From;
	b=p8cLWu2T+nFQnydzV2Cbs7W/Ho+rr1zjOKjPuNQJ4XyJxB6LlK+tBUViSa8wkAwRm
	 /cIfmKl9HIUwZ2kGYPPDrxr2EURxuHvwPHipXvFZ6dhshcYaxn4RzILg4vJ9VDbVuB
	 ZoSHLnDFj1JCMf6oD5cYCelj0RrOUaYomGCt71U1dHUAwyAJbuGcLdnMnBirhZX5EB
	 elhyV8JiVWLp5/X4o3yi5iJODBZL7/cumkej/zBLCuXCAcIdPd3Pk+y/4MFwFeoUjn
	 Tp56+RePYMdlVZ8AyRwSV1Aks1xtqN51hLmnUVyFKnpxsig3eoP1vPGP+AL+EL2Go9
	 KfkzmEwU80LpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B10CCAC5B0
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175871879362.18313.5052764546363636907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14f548ee9a30f6a8daf3d09b6587c910dbfa77dbf1a38b7749639c9f02243d83
Date: Wed, 24 Sep 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758718793
