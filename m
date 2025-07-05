Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A481922F4
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751724594; cv=none; b=EQ6AJ5wXgf9tsj9btuAOcqZmOP8kBZ8SGxHRQt+SUnqx7uDgOJwFIKHGA+IrxZUcSFcNV8QoOAMJb4x1/p60ufbv9zOxiPyyLkEiZ3R00cCTTpceaIaClQ/6Sq3KLJvTS98nxhlwTxURmg0s6m68bq3PxNJjqf97aZTVjmhlIL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751724594; c=relaxed/simple;
	bh=DCLuSHGGqeNz/s637RGpd+RC7yoGYPzJYxwFBbdgxCo=;
	h=To:Subject:From:Message-Id:Date; b=QRLpFXWXKGSUhS/XjOfRNbBK8nl0sQXgIxykgzXlkDV5jMOXlNahi0rzsajhMT5qjnjs0cXpMXnS22zF6cexlhVfa5BipodjlHjw8JBVCNahdOAfI6t88rExkm4NjJnpy6Be0hVif4o3g2Ru/aTIGyK76Q1KBQMNNJyRmZYKn/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AMpexSPy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AMpexSPy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3127C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751724593;
	bh=DCLuSHGGqeNz/s637RGpd+RC7yoGYPzJYxwFBbdgxCo=;
	h=To:Subject:From:Date:From;
	b=AMpexSPy+caeJ66W5Fhow/RPG0F8ct48ztMydfx2h2tZx/jt2FuYvL4DjXSMgxQmk
	 iLNUknA/esAKIXh3dVBto6QsExVkj6Wn5QbIEM/2rGDtN56ZvE4I3oM2HchzFINfzP
	 95ZcGRRA1SFw+wPXESVqXfWZ1XNSX0e12CBIUnHf6h8oeZjTubl8/9k2/7Srb/z/EI
	 OO9yAwXVLQKMEcvoVou49nHq2yJ184h5mdamkBccN3gMZOeIsHi/ROeO7wNxh4g1Hl
	 1r0fYuHq1uxxp/O2J1vYEw6kCzcUFTRMwBRJ7WsyISGelBCGfAcsTNubBhqebCumTI
	 q07hjG91oEitg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911C9C8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175172459358.1581.3769267447491911100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12065e7d715cb87c7eb731f24c7198d522257a97a96647cf36a773f2cadf8666
Date: Sat, 05 Jul 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751724593
