Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D532815E5CA
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732751753; cv=none; b=sFh1UguoyyphWjJnm3LEH89sxnuIBX6O6syL7qamU+ZG8F71BWiJuSz2QC38sWqbguN39mQcmr2hgpWQibYwRaV/gzR17+FBI0SvnNOuSVAnazJo/pwc0BD6BoGzuAqCV6IiUJLKmWFYh+x7mjj3iTVgxHTCTqsSumRjsMj+Ewc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732751753; c=relaxed/simple;
	bh=u/XS6yRiC62uY5XXOaVAtFHKFvSgz0UTeY3CQjcZKMs=;
	h=To:Subject:From:Message-Id:Date; b=Jrq7KjdQ3YICwotZqxSkHPzqJ6wdKz/ItODrXYlH+Sdu0LAqIb4prPm2YIeZr04Vi4rqTYX02+1ID1xaf9cO7wbAQ+kyGvsx+v2z0KWPS3KNQx8u1icUv2b5WHWVNI34j3z5ufU+UTA4brPXs+Fguv4Dc+P1vjJySv5/1HT85bA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mPTYFU/0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mPTYFU/0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78ACC4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732751753;
	bh=u/XS6yRiC62uY5XXOaVAtFHKFvSgz0UTeY3CQjcZKMs=;
	h=To:Subject:From:Date:From;
	b=mPTYFU/0/fp9qK3Ah3smGCunO+ls5/Z/sXG0E3cnPHl4oJxzdXPmnJv4okHtL7PiF
	 oXnpI4g4Ivk6c4W4/jzEtvvhng/W4RsLrj6nGP1H0jA6NEZGo+GNCeJQ+GoPo5tkY+
	 Gd53rgIANrmwmAt4o2PXFQLdlHBIeMYJS7tUC30N8hr25Hay0qvCGCUP4SbRamr+tB
	 MO/YxG0uUalVSlddCxH2ZUF4R93SeILSQlih5ZAog6nOQi31uhoMCW4icN0YLv6IHA
	 A525cJeZmOxm2vz2b9wvs6HSuudtAS50THJ0QAPFxcU2K6MeD9iiai6GvgffzAIdUX
	 3ef2QKddJRJJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A3BD6D247
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173275175358.13481.1036793241717895318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d093b7e4afd788314001bb5f4bebd595f1272b7f45e2676ea743afe5ab36981
Date: Wed, 27 Nov 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732751753
