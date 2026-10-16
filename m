Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C46B3515F7
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792159234; cv=none; b=X1lC+6/B4G6qr5m2krfiodLiZDmrKDRw2YssKFRpR2lZffQWU4yi64hT2KK9pqxbub5FaxflaVWn9+EiIdFM1HXeDX6BM/M7kf04AZwhJwxjK32jVV8X9HI08ydQKO8/y7sLarBV4mj/rGl4MpTTJeWSQp3bY38/+CshkKoTpxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792159234; c=relaxed/simple;
	bh=TAVG5/m9f0iC9xjFurjf5PllMRWjX0o6ewP9f7oiZEg=;
	h=To:Subject:From:Message-Id:Date; b=FKdX+/IXPwtqqc4jjQqsg6YSvMWuTgKS2V4U4ZNqc9/28cNyHX/E65yGaeAPTGmO9P05+S2awi4XPd7r1bHu7S0h91Ck4T9AOLIyqwnzWa3Fj2jVfKPg4/RHJkKtLeLoU2drbVTqgrInVEG5mkvqKzSZaSP2CNWZluT54xtdfdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hDP3duDV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hDP3duDV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1B49C2BCFA
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792159233;
	bh=TAVG5/m9f0iC9xjFurjf5PllMRWjX0o6ewP9f7oiZEg=;
	h=To:Subject:From:Date:From;
	b=hDP3duDVqvR5MAVxyUztDWedGQKwVC7hQ/UOVrVh1UU9XGiFw9u2QNiL/AwADnhbF
	 QYivN7iReRqncuzbJLds+7gzX8rjgtjKaYJ6+Xj+lQ9oviK2rlUi7/JISV5CrVPI2x
	 XlSkuc6mGvVDyJKdefnez7KhEHIBSfgTZEZqIPDWfg3gWo6Pwo4SHc7l+1qN42ts+e
	 SIXwlN9SSAZJ/euypFAJw0cgKeBV4v0fJZYFjlehMW+AO7WoZ8XhiVksKvSb9FggNS
	 zfv6OG2SR/Gvj5FTotnLPfLRnQ5evBEz8CVHw9OlRnwVPeC31HxSiH2L1OhBFtKHLi
	 Kcyk+YOh+tXBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC92ECCA462
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179215923369.3769.8073859972934090544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddf21437a7761ddb90eb29400b820c6300d1bc22585391065f4390003997f78f
Date: Fri, 16 Oct 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792159233
