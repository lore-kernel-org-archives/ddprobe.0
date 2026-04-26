Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2630DEEC0
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 15:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777217854; cv=none; b=dpkcWpUbEjSUEsbvjqupoqc+6Lbba0qZWmOzwBmgEE1sT4rrNPphlTpN+5kHEC0nsYIl8eK39DA70pIY19OcEFl6gDTKctp7MwvC6MFDp6+mvCk5vU7fSTu4I0JdcHxWXyxd5gWwuIf3bEhbdnzvZXnbwtM5zPAtrmpRbth8byU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777217854; c=relaxed/simple;
	bh=FExtQTutgeV9WqHg1OTKVWUTWDN11YtarmksH/ysExg=;
	h=To:Subject:From:Message-Id:Date; b=rltj7xyAQpqIwtRMvDI5fvI/v2wxILImE/3BC1ZNsb1LaqJ/+JYKxYITUjpzKPNiXFK08bxNgBsmbCvT+eKkk3AqCNoEP2Xb52emOHy5UJxO4e0KT3kjnySTNxuPucLG4LDKpS4E84FS5HCJYkFq8ob2wof8hcolRGCEXi7Cm/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fBK2ab4+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fBK2ab4+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAB31C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 15:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777217853;
	bh=FExtQTutgeV9WqHg1OTKVWUTWDN11YtarmksH/ysExg=;
	h=To:Subject:From:Date:From;
	b=fBK2ab4+YthKwjQczO0Z8fbdksHrALu2JcvMCbJiNpJ5rCVQvi5GJToEUddlm+WZ+
	 ibawGlYg1FzhbX033NAgR8+K7n3Jute+HSA/sAh9fL3GedqOvyV5REpXBqAa+7CRLc
	 3hZHxJnfZ8FZ/gwtRHka1Mik3BcHxdiOEcyQpsw95GrwYRWNi7/ngjOCtIx8r2YmEI
	 VKaWk1YgVIYBwlRgedbxpCUz12m5L15Ik62zm8did8dFu2GFnYnll0dXWxFKZeDoy4
	 NVFRGho5GmkTNgcEqL5n/Ls9LrPjsO3ZhOvFkVW2wFWMalkMyEXGDp9qJsjFeVyYAZ
	 knik6KDAeMW/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA49FFF885E
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 15:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177721785368.12625.10632972217650734180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d5e44dd1bae0064866aa31e027e867d3ee1744814bf7a9d02ad628f39dac6ff
Date: Sun, 26 Apr 2026 15:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777217853
