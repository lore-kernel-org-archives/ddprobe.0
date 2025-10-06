Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 468F8221704
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759714794; cv=none; b=H4gqWgqCQYQ1S2KQ3w+hdYZArZEw3z4VdIClLCepn2QPN78sLKE9fnu3XAuR8R3LDtdFZNPQBQDIju53O2qEl0LsE6Q6v7fz+pRhbCB0VF292o4YAQODxBXQs5e1RCrhdR6h+HpDznI92RPV8eOKgPJUt2kMu/5MSf6QJDtnYQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759714794; c=relaxed/simple;
	bh=14juP4xyEnl3TvyF0lLAzElzblr0FapNXAXJlixA99o=;
	h=To:Subject:From:Message-Id:Date; b=Xdv24NS9fbzKRMxElQ4vZb5BJfRYfK4Nckl+NY8/JcI8iD038tyPlfcQ6U2FI4ifmn6Mik+2iAVMINpUDz7wOCqxNx7F5a/r/aDE7mwWTHxcId0Xmxz8+ZYQY/d86SDR65wOI57GdZ4dHhDb6k0D/DCNlJqp+S+sqJkvVUY0//I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jkFxbHni; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jkFxbHni"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1116C4CEF4
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759714793;
	bh=14juP4xyEnl3TvyF0lLAzElzblr0FapNXAXJlixA99o=;
	h=To:Subject:From:Date:From;
	b=jkFxbHniUYOKYGxmPfjMXpG8yBzcsJdrBWnY4SdiLHM+uJQrNwRDBSzp7YO0HGALx
	 kKwZ74jYNeL0HlGdaC8bSrJVPJTlY/HgkOGn5OZ16GFKB+aIuaNC7UuqoapTo3/e3o
	 KYadajtz4Y7P5cSp9IsFrhbh/ioeCglwD/AiC8sz1RKKNcwpd0LFe2zLH2CXINWIkd
	 Y9gSS+LfAZerKkx4eeiPgtCxOioJDrgO57huuM4zH5Wb6IvkAkCaRN9WyYL/8159E/
	 Y1DnsKitGG7hWYxTLm7ogLALc1/y8oQp6rXh3cTfRO+vjJuhfM2l15Aiq/nLna0JY5
	 LWWR1lQBjzLmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1258CCA476
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175971479364.21854.6994242465213973689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72a5be92d7d3a097d8b97ed9d4a9f77c68af382e165096ff69602db19e1a6e23
Date: Mon, 06 Oct 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759714793
