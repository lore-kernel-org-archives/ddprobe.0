Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35EB723DE
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750993796; cv=none; b=KTbUlBHawcC+fxTPyoL95PFk5AleEVdjM+Hd5aAl1duJitm7qLGjjxa89h5afNg3X5OUUu4apY7SSxqlq4KBxhRyrD15Y8SvfbMxIUdtzDjixUF8cjdEwqt8eJ2msMKmA/6QIPmWvuJ6QbzZnER1DJitJ1HuzO7KDXNUfQQ2Bu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750993796; c=relaxed/simple;
	bh=OlVTHe39nCc/OQ/o6L1vlcyU2V5VVSswesXciiT/J+Q=;
	h=To:Subject:From:Message-Id:Date; b=HAfv8qB/3u/5VGkjYKiuu/oWmatA72oAPl1uORDYcVCL0BSzcF5Ffg82yBmul+LsbjtxxdiL41HWMGPPv1sNnzoRS1EwrHt5I3MoOIRABQehfa2JAbyBZ5ndRYjSi0hdWBIt9t+1pcrjxmaSpJJymnhIndDvrmxQNkN0akWLGmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mg2XfM8m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mg2XfM8m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AE0C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750993793;
	bh=OlVTHe39nCc/OQ/o6L1vlcyU2V5VVSswesXciiT/J+Q=;
	h=To:Subject:From:Date:From;
	b=Mg2XfM8mQ8ondZjYehVBgu7se1inrI25XQDFgancPjhjrGjVL6bOa0rrnniViowgx
	 6D/u3paC5RoO8IHARB0fTxThxL2R1iAqdyyJU6YwPppAC6GEDuoJ4CH856G27Dyj+z
	 xbAMxuT5hOpLocF9uJznjcZlMt3hBT6Xgspv6G832ktZK++QmcNG3qzGzHgASnATK6
	 M5wqDBZjCn8U8JVshkkGDPVWvuFBQZ5YY8q1ZgesOiskjJ36TPz0Xw+HSWIbG4/3wg
	 V7C+vGec9Iviyi8ufsPzJWe/Td9P36b9Q/S+1QPGsXhGMRyrMINMis99fFc8M35s/y
	 WIca8rCVaf3Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90226C7EE31
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175099379358.23622.18122570812455585415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b582ae386a7090c0eedb34eec202f0a9d4fcd4312be88459ef7e8391aa9547f9
Date: Fri, 27 Jun 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750993793
