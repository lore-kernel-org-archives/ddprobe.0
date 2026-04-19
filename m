Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1939E2701C4
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 16:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776616054; cv=none; b=KVf4R+lRt53a2uO/VKervv4c6C3pQ2lMmEfhIz2hr2wDt+kdv0sqJKcyZyOM7OlaxSZu1gSPFpcD/hiY33eVcD8xG1I2ZxUNAY2ICmEhLRnQOZgWjSqNdFs9DTrA2YnfbLsMqC7gxNCLbBgCcbaTnjtk9tU7W32cvK40rhJvaSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776616054; c=relaxed/simple;
	bh=+xuE40f0K0NXtp7lXEvnGOxyiNTZ/pSmz56+Th344ug=;
	h=To:Subject:From:Message-Id:Date; b=pUcSHQdfpguuw9C1uAtQjvW/03av9qG6DmgWfwmvbq7GMmnjgaum288NtFqqj1q2+FigNc6UcgSp1x0T3hDR7NaX+0qDmK3ulskowZaHPK7+aE9YT2dPAC/IJmNRtJxoYXtsHZsBpiKdGHM83lTott8kZNWN4IX3CTW5JcwbmI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G2wNP6Fk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G2wNP6Fk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C07D6C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 16:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776616053;
	bh=+xuE40f0K0NXtp7lXEvnGOxyiNTZ/pSmz56+Th344ug=;
	h=To:Subject:From:Date:From;
	b=G2wNP6FkIb3x6Esa3KxAWUD4ZDU+74ubSNeOCUvAj8+xwBRfaZcQnbBUSLVXdNY/P
	 5/6kku7AMPwJ5Z9V/uHMi/1bQC+67bec0GVaTIop9sP0KscdTI5V87a7YFC9H3Kbac
	 TmDq0jsNn0D6joULkRrlGZ7vE/WPJXId/TwWh5qr6CwwjzLdlZmur82P6+ecRKt64I
	 eQWDyMFzpU7N0CvzrLs2tHBl+kvQM3fJnUQvSDeRLQFizGsxTS2rl5arcci7kwq6QR
	 tu/hwTGUtss+d+EdHwYN4gWhZ+Gn3u4c0DyeHgTI6vX4uldP59N/chrCfgTcwniwZt
	 aV7YRyrS26eHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF548EA71A2
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 16:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177661605368.1376.1161604583042034154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f370184deaa964bf1b127759ca8691c4d3dfa11ce6e10f7217b7023e62d59ecc
Date: Sun, 19 Apr 2026 16:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776616053
