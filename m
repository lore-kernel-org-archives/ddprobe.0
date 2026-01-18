Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17ECB20C477
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 12:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768737834; cv=none; b=uMiFymvDsMe0aJAiLt8YT9RnsNwhD1uKwdM4lEaveSBWlaKG2v5MjqldjZzZbybgP94glM7aAqRpnyA2VVoO5isCHtPh2BaUw7/CFmhQJSpGuzZkqjZjW9hWKO0lVFi+kbaEFUmVFAIDemM3PVtIG701sVX/ObxTtjq3bU9xI0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768737834; c=relaxed/simple;
	bh=+Lut0Y52uMcvYbnkwOSmMwMP0w82uQbJnGmWsi5wpWA=;
	h=To:Subject:From:Message-Id:Date; b=QsTqrR25ZAkQg8HbAsVdy6JA9QdMtaLFZXpmQOaNmD9pSW+Li0mUzcCSTYbllKVlpviGJyrJWDnZyAyuwj5BiGeF2Ln8M5kcuza8yjVgaTVF5eiU/P6yRkGF9eDoMdeFH1NREzcXz7nKi6ZFVl1mojUgXIq01xpFUEBnGKmrXe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g+pfyVq+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g+pfyVq+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F11C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768737833;
	bh=+Lut0Y52uMcvYbnkwOSmMwMP0w82uQbJnGmWsi5wpWA=;
	h=To:Subject:From:Date:From;
	b=g+pfyVq+EJRLHCPaw10ldGvNzFykHlsOh9huxVz4GtibajgpyV+RT/MZrl92bMwJa
	 Yfo+2fFkh26nPjI5BofYL8ZOEuur9LNC2bwkUHSqIMvpyjBLod5D1hCVhpvJVB7lnS
	 CjE67LEglux2TSGSnsy4TIJhnqKeFwrUhJ/lT+qhfNLfKX70RswjC1u0TLGZsTRzVe
	 GRdyTp0xIXu9mAkCnFHune2f3INwgTdy8YD3QHrKiSXtRHecKuut8wxXBY3v++7K7a
	 OaHmavkTQv8S61G3l6yNeK2luiFn0/LhXb6Un+l4EmVzPe5IsR5suvk3AWRBfwumV+
	 A+Xbt0DROPLgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9812CC9832F
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 12:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176873783359.21352.3853354336730619894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 156bf115a6c05cae1dc30bc339862a2a88e6065abf93c7c9d2a63b8e8998dc44
Date: Sun, 18 Jan 2026 12:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768737833
