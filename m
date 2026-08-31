Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BD7B2E7370
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 06:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788156634; cv=none; b=XojhZg5lYzaR8kpgcg8rg3PQ2qPK+fBp7r9CPJ28f15mz0p3EkvDz3BjdlcjsvNYTZ7vUH0LLbd/NDFzzITbFATRB2Ibv16E1ViEjxp0Pkm/GFhjyzxrMP/Iw5jl/0kP2d57cnikn7nrec+hFrY7kSeobG6vaFL9v5fDDyOfR38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788156634; c=relaxed/simple;
	bh=R8N/hjwxiVHhbedSRIDJd/U44r4VuXLUyNzkV5ULypc=;
	h=To:Subject:From:Message-Id:Date; b=AKjca283gu56zoIZJaCQTsYNy2zdmnYPvcIOJk4/lKC5kbMEyztfhSXJWyqUeliz8VF2rjlOjVWG+bOtXD1lsX9iDrDRSBtYgF/3esj/IaVz8nSCTCcsBqMW4CAfKVV62EYHidVBuR/4TR9GxyRaUTZ6qAS8w6uWcmkuRI9Fvhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V34ximYy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V34ximYy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C34B2C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788156633;
	bh=R8N/hjwxiVHhbedSRIDJd/U44r4VuXLUyNzkV5ULypc=;
	h=To:Subject:From:Date:From;
	b=V34ximYyrnrmaNWH+wU1DMQy2L1tNMtTqQBDbI4D7ySzM444nbkdU5d4f/Ad6CcnK
	 vmFqPh/Mbpyk6ENOIZwsN/3jXgLz4LrJwNBUm/tDpOaUg2e7hcVoidS/oE/eUScCvp
	 z4UEvqjtX5sqyGR8Iqv4QuSDC7CLsImxQJJv5qHuONJU3s/LdSGtD6rBH66M8Wq3u7
	 R0uOX5+QSZEWYHLIU6o5kgyZoKLopYZn/W5am5RUdbT/LiD4RtflJMraNjnFyu1eYc
	 KlOb8AHslutgKUEMLtSrm14aZpcY9VIdGwWPnsO1KZAsKGVDUv8V+LIsvL0pZZuY6Z
	 4H2y6daCtQQ9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA602C61DF0
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178815663368.7448.12082725767026977091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 458e72ffa1e803008cd92b49ec12134c8c506bd3b7e4f6902f6d7afe4aae5b97
Date: Mon, 31 Aug 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788156633
