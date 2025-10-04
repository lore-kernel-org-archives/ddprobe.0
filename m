Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF8C22F01
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759542594; cv=none; b=K00LrRq/dFnl1cKWTBjUMAdZbWTBO+t3ToIB459BCpgPJuAStadcXmw8lSlLfsqv6yEz0ab1rV3g96B2CNKCodQ2giLViQTAELvL38j2dd5FZNkTXpKFwrenyDFSRhaO14WT3uCKOzF9z/uGVmBKIK2/VBfdJIqcCMSUk3+4dpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759542594; c=relaxed/simple;
	bh=CF7CqjRPZCotlN19wDS27v77PK4GZ6FkicMWyFY+GTQ=;
	h=To:Subject:From:Message-Id:Date; b=gM3nBdsHboKLBrxH8n1jKIp0aTPDPjLE6X+l3/XbYLRjhhXhZ0E0vQ4v2a70DlADyYN73Ez9krOGUuVo8dbLil0sm8IDu4Oti0Ml1um3qgJBzWkNMQ6c2NimiOSXBRE4IL4bYNqPWIikW0ugjd+LfJ/WDzBYbOruIduA30Fjm4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ufm7JO5H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ufm7JO5H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8344C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759542593;
	bh=CF7CqjRPZCotlN19wDS27v77PK4GZ6FkicMWyFY+GTQ=;
	h=To:Subject:From:Date:From;
	b=ufm7JO5H1EFX7dw2ZoEqTpP2Vg7XuVHX7niCKdTx0e5ABCbG077xUIHcZ9AaEmriq
	 dpuNMOv+tPaHAlvwP5/67jSMTDc7buZv+lyr3nVluh5e9bLqMUClSjOOwZvknRJgHq
	 gSISFqh15hHvT1KaJloHu2Zo3D4NpHUBaiVdCsAmHAJef3o0WVllXnTt3wxZ3bMCon
	 AdsqG59aP2U0bD1AamsnKa+SoVb+sg7AJYpdBu1sSrK0DCIgtvHY8q8nKHsi6gqe80
	 njxw91hdgO3AzsGSDbdqLI6iszdO0Cj6bVE2hfJ2Rb1FPYOJr+E3xTqHZJWr6rL6Z4
	 9cSaLgK6q3nmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928F1CAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175954259357.20049.5454369553375141402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bbdcee27d48ffa493acfa3558d9e112b614b9bc5ee30054b3f59179e33e6a4b
Date: Sat, 04 Oct 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759542593
