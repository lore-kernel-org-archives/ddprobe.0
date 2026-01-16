Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 057AE2D7DF8
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 19:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768591434; cv=none; b=rJcBL/capVqsi4exENuds/xXO/jm6uI1rLjqDRl+y2003kPPOPpb6D/l7uO4xl4gnQdqigz86EkA1Q37Alyuxaz3Bbtfj7PEGoOy8U564iPEGDuM4KAwXTR+TnSFTN70trj4pXQdMqyPSXy3hDjRau6OrjGh3JAQBWZDJsDeDBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768591434; c=relaxed/simple;
	bh=I0335EO2RKrFIavQ/XSLsry6l/Cxxwfu1U9CDogSDrs=;
	h=To:Subject:From:Message-Id:Date; b=ZSgeIdzUHPF6QUimnSUd97GZUOD4XN3sX9ZhvhHlRkIMD5cqOpZVyG7BcM9w1D0BpoKASMS1QTSaCHgNFDvYWbQ5+hkviIGwO9t9yg3hJM1v9SIFM/eu9WeO6DvS4k1fb09Mt94hS7oY6OoqWDjs798odCKlecJaaHMg+1cIK2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nA6Q5Xr0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nA6Q5Xr0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DCCC116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768591433;
	bh=I0335EO2RKrFIavQ/XSLsry6l/Cxxwfu1U9CDogSDrs=;
	h=To:Subject:From:Date:From;
	b=nA6Q5Xr0qmVeHKCbV68vAw8N/4CLIPFphE3RXdFUpJuiBBGc3Eq8i/UyrDl45Zm2A
	 +1a0syez/slJe6DCrb+kiE7eqlax2W9iPoRrvuLN0Fc5aXK87Gn1Gw3TYxzwnNTleB
	 mx4onfGWTzQzU13vYPak6soSyV193J5g3wUBX/SkZRSR86yyHt4BD5BQ2w2AUmp4Wu
	 +s9KOI885QBenKm5SVhf5JMyCOylpwHb4WgigTmpRJbzC4ZnBL5U8B1eaetWqYu9dd
	 0/sEOK+sFL1zUxR4Fxtuyu8lEn5++i18m+JVZWxPY1gDwnRzaxIQbSRNMtlLnvbYwy
	 AiBR1R0MSxIxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDB8C982F2
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 19:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176859143357.19134.13019474850629581182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b463e766cd1aa9553c054b847ce7b15b7cf22269a85c1b40ccde74a145ff0f88
Date: Fri, 16 Jan 2026 19:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768591433
