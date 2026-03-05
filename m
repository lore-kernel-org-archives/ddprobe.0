Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7D1361DA6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 22:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772748294; cv=none; b=kUO2Upct96k/0tT4KVQDji3lg2L53Z8tlU2w/ZlLmdbrVZLpNU/5lxavtXn+3UAIS/FmdRMlMg2Q3XO6TNLmwVHOjObUSreXPhb9WVciP+kGTn2w9fOK94WKxQRVRUZF/wNmG2wGndVcyFeG4QDG1atlTvo5bs4a79cL1aZpg+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772748294; c=relaxed/simple;
	bh=qnTzdXNJMsInoAet5UFC/al1sJTvI/F85PQITUsFqtA=;
	h=To:Subject:From:Message-Id:Date; b=Hx2sxAr0ZUjXQdlIE7Hf1oeEh9FKGkUox5TMA/C6/monNMxR7eg17y5nh0k9Hip+OSvQZ65NfmutevoPtP1vcAQJty/XBzUIeFipeB7dpC8hg9GI2y8UeYyYhHVjL7H464nopvEegk5giPAnLH8amkFiLE5IooPbvv3JBcmowd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GRP6lWfl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GRP6lWfl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA464C116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 22:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772748293;
	bh=qnTzdXNJMsInoAet5UFC/al1sJTvI/F85PQITUsFqtA=;
	h=To:Subject:From:Date:From;
	b=GRP6lWflgJGmjTDhQo+Q/diGM/yknHLpaJIfIpmooOFHFHm7LBfNK/LRWm3hiaFzy
	 9n0pcepe2RcSOh4RjccKLoMMmawnMSY+f/bQgcbfSHKCjOZM0R1CZQ9xl6vhGxvKAU
	 ZNg+2GLhMB7tWT5cWJIPH4/3/OBQCHp1U2+0sXO53WjWPnHk6UxlVwcDd3AoEFUIh0
	 T4kxEetQSsN1UNPe7iQgl/CjRDsfICOEFlP4SUGht+tUstILXQT0s3Peeo/cvwu/9U
	 82Djuct5ECnmHRBJcg3fx6xBHsjs5G+BgnsK0R5U5vICyGmndrDTBHC/DvQA4vXTNu
	 +FzwUb+nN6w5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CA2F513E1
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 22:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177274829358.7703.10749931545149668018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6382e508bb18c2634eeed92506db4eef0ba6b6b82f3df005829dd1022251ba54
Date: Thu, 05 Mar 2026 22:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772748293
