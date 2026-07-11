Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D0BD1D7E41
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 16:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783786714; cv=none; b=OEOLn2hcYPKA1bGtp7PeUdyoLSKY7a36ICESpEYEtxrRJk2ksA3iwl7stKsVVvsqlH5PTuPB9ybMt76eCcZ6dUCSYO263fKO+xs2Ali6v7d/aqkaNxLhAny+m39XvlUmh1JUryQECAc5I/POtnX+1xiZQ6swE6aB3PGVXe9PqAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783786714; c=relaxed/simple;
	bh=oaONFV4W/VMSnKDE/yrxVeCCsnJLXxf2JJxPxiiNfws=;
	h=To:Subject:From:Message-Id:Date; b=mGS+ijA4n07BvFECCnnSL0Y1rk040B2yIG8GRepPElcThCHArspwNCuPklc/apsLAMtpmQYcxhga7qIKXk4Q3Bab4dEjXvlBlRsIpKDsNjj10W4EIUc9K76eymeh2HLK8F2bc5SrHs5wm3pQgVXA/r7l5Z4pn4B3c4TdbzG/pJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b9HgK79u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b9HgK79u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D29E4C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 16:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783786713;
	bh=oaONFV4W/VMSnKDE/yrxVeCCsnJLXxf2JJxPxiiNfws=;
	h=To:Subject:From:Date:From;
	b=b9HgK79unXFF9hBeA51p664vGrAxpyuEqPOZpXZAaTYrSxrazSs8HqhU5HkYjiGKW
	 ZhEZoxCZqpTyN/guOleRGa9U4RKsXKlRs+AavKgvtV60+Bd0j9fZUL0NC2SdNVygS2
	 2vDo3lGuMamVlZOxkTXIacW1ds8MQwq2CWmoUHlM29i4K3QN5SmwUZFG+Vbw+NtRkU
	 cj49474g9QuuH9SYtMOmPEq8/2U084PHRiIi4Hf7ANrt2xogfb6V2xc6ZhvRyO8WTY
	 gLKwwPlEkm2Vlc6Glpqn0E/1NVhw2ntGQgrmFg5NiNtWNAxRAfLSBdJFz9TTzkBagw
	 asr4uQ+uGdlCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB093C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 16:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178378671369.21305.5703942680702352435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d78ed3686dd9d9c8d07d73a225ff0861be167ee26082067694749f3793f3e448
Date: Sat, 11 Jul 2026 16:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783786713
