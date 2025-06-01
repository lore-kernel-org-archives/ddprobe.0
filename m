Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A5D7F4F1
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748794794; cv=none; b=Ei4+qKG+bLAsAm4SLFMpBVDTZIlsYFasaVV+Yo1FFsJNtbZhFohalHAWe34v8TJAZFbKM+5gdRy95aDRsIKRsytXCmt+S4fFeALB3wZ+QVEauGtAbyokDrAW4Cl3lIPoktn3pGngx5ioeMkIW0EENT/Q/IOn/Q5JpBSS6zK9iV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748794794; c=relaxed/simple;
	bh=FH95tWxHgVIA39G6nSu+48VUhJCzG9vsV9Bwe4jH784=;
	h=To:Subject:From:Message-Id:Date; b=JnzZ/BFfjuCE/Afm5mkm0sGJrr5u1syrJhMVkmhgmeiXdX9jzvdmu/HR8RF9H3VZb3aONJiq1r2rvxPwzletRg5ZOpnPfQO94V2Kvt1YDaE3BOjD1rVjef0RS1NYU9sz58o7Eubk1+N4BACm9SUOgz25DjZlPUCPA05bc2ERz8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VWazoo5c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VWazoo5c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A923AC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748794793;
	bh=FH95tWxHgVIA39G6nSu+48VUhJCzG9vsV9Bwe4jH784=;
	h=To:Subject:From:Date:From;
	b=VWazoo5clcXRJnqstKmpzQv3SW6zd62QhtNqzShYNmsMXTFrqiCFx7EAvnLGq+hII
	 QhHPPL9XqhIEA3b779yKZ8I0oQ/dLJWvs06ba2LeMyBCvMISfU18X4wbbYHK7fKo2i
	 8pfCnAw+bQuIueDd5SttNdWvhVyeRp4Xtnb3eviSkONyXHLtHMlMvFZhWxIyq6CrlA
	 quTVNmaxq5web7Dedqv0TfWt9U6/1Tu95VDvAwNa6rpLWzDDMriqd/qucoVa2JJmY/
	 ltpW/jrvlAI8/dCzrHPgewij37EHKNGcol2jmckfHMfgYunu2udCbl1hm+ZkvbjquF
	 YJ3PDd6isPEng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B2DC54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174879479357.19372.7490558240051749553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5c8ff54c80a9103faec3f19edf37a7621393c86a842c825e92394332b582d69
Date: Sun, 01 Jun 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748794793
