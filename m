Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA2D13957E
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 01:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788399634; cv=none; b=T1lQRXARThPAY6bITyvMSeqMql7fui0srJGDYAhPTBngDlu9fEYjQsWD8FfNIHqJuM/YpppUu2lDAiH+heGrw4e3ZM0ucRAbnr0IuJw+1MmWbb9ta3QBhNzLQEYaeZsxzLM8SjO9AEPgMFN3JhLbkPInXtIGiqOQF+Dq0j7fofU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788399634; c=relaxed/simple;
	bh=2y5pkAsz+LRVCQDV10lZ361eev19D9+W7UqIVBN2kzE=;
	h=To:Subject:From:Message-Id:Date; b=UpL0k8vXvzOlmbCT6ucBwtv/GA9MH1pXpjbFzJVpmu9bhDHtkJsejiNWnYyeMPcsVS5fF2Ajjk6NchGQTmUdkPn94kl3kesBgmTAbuCYr7GO/vp21vA+8mH3c5ehz1Rh6tiD1QMI8ho+s2mluzutmL6mUr4QHa8a/nSyU2Jy4mk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D0Uv+Udf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D0Uv+Udf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1A0EC2BCB3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788399633;
	bh=2y5pkAsz+LRVCQDV10lZ361eev19D9+W7UqIVBN2kzE=;
	h=To:Subject:From:Date:From;
	b=D0Uv+UdfWHzzkd9oUjlbowF75eT5GE6mSrclgoPLzxSQAvtQffmGRZLx62Sax4gKQ
	 ZtQ3IRGdk2Ytht4PJ7V+NiChDZRaFphTUenDj4ojsRrVqNHNIEe2TzseovLjCa/pzC
	 lDgbJBshaWhywpprQMy7OpChUwMsU0tcYuF9l4NoC2Nn7W5CaTyMnoGO+UQol0O7Oj
	 3ZpTWKOSesQgbnQL+xuodQk8TiauKUjBdeoKH8hvpO16dJ+T5U0Mrt0u+nku8KxP8W
	 34i9nb5sU7SOcNkjsgv0+7j7j/eaUKhilgT1Hdxo6AEiNPHS7PnzJKb4WXZDOriZOY
	 /Pkgx7r+UgRyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7E4C624D6
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178839963368.29746.2100269116645928294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74d9812e4981ea80ac76249dab8528d903b32914807ddd82ecdb0890b645e17e
Date: Thu, 03 Sep 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788399633
