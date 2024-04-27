Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5192163A9
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 01:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714181543; cv=none; b=rdnhs448W4uZ0x+fScqNfapdfAay0G4vxvo7hLAn4qEEe1y1lUH4ArnIpPxShLKQtetRSka3p7Mgc2YGhEBJDerMw5xtmRFinOyC1QwgPjtpsyYE+zfU54T3Gkg29Y0RRoxEnNkIpeTqiwWeWHGNgJNr7j6j3UkIjxE0/rjkpRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714181543; c=relaxed/simple;
	bh=+ri9JIZukvbyWKxguG/KBYdkUQzkg8jWcSvnDbjiwqw=;
	h=To:Subject:From:Message-Id:Date; b=NCsW1FVcnbbH3i1BekLSvkpVFhoZ2Fk0KMgC5u4F6t9+SLtgD61nMD5Fhc6+WITfBDtPog8VwExwbXN8srKfzUhAqnLZrf0pY9QaVjnE/3gWHrhgl+JcN23M3IeNZSdp5QA88KT3OzKnbPiIUE024bAG/KPlW0Et4GD5lRMFK0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lkFyd2O/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lkFyd2O/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD48CC113CD
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 01:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714181542;
	bh=+ri9JIZukvbyWKxguG/KBYdkUQzkg8jWcSvnDbjiwqw=;
	h=To:Subject:From:Date:From;
	b=lkFyd2O/7z58DeY/FDSfOaX9fdLkr6xQNGI5LVyeIA7PNup6xrhT0X8hg+F/F+ooi
	 Fbc9/OuPR4Hg1N1wzci5uAGMax4e/lGwrGeDnt220zA2oueivqGJW2dT44PT4MaATp
	 Arr9H5uFWiCqOYM1fBa3jLD8AAIIyKjOK1tvoA+RjHXga7mllz1KIo8w0a26oRXydk
	 cm7UTwKhjmy0XJAqtHtAwU7EIpIdcyqnGOYWSBMBQNs0lE836lvQQrMuUE7YECXEGX
	 b6305IvDSpuEtOkyRjPbyWmKCnA3fBw3Bs5siRnS87IoCyjUpPWc8a2ywbhli8lnRB
	 CQdsOmQmNecCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3BB0C04FFE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 01:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171418154279.15268.7664202772394146223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2e9e117d43c1227f5419e266a89a391e90d05bfe2b52f54dd8b59488ea722c0
Date: Sat, 27 Apr 2024 01:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714181542
