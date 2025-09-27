Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C7D2DC329
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758970794; cv=none; b=LHwANdQb5k/wsCn70oPjnbrT/4fxpYOtzG44VrB8cphJc76g1XN2yu0wuDO4eh+KgFdmG+bNpeB9JbiOXZOfWtEOWqW7TSC++BjLrl+SBsBNqryMFUI9H6a/S8z4yVFH0oc0/iVb9BZxtgnDjDNUV/vONwVSwnFGv2R7ikK3KlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758970794; c=relaxed/simple;
	bh=zYrAow6ga3Rrf6bNHej+48qw0I828PI+FRV09Pd6CGg=;
	h=To:Subject:From:Message-Id:Date; b=liN4G2cs+M1PbENEAJNdnNLmPJdUm02g5NdeKwXkJMBPNQojfr01uy3SPa2NvJt77o8hWKbXNAjvCe9AVzOIIKmKw1SUnEanU0OPSbDCeGXMLoWfRQON7pnau5Y0phXgEMMaDcHxvobLidSDh58QXiZ6r/lG/MPyiYYEToJwCzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ECfB7zY8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ECfB7zY8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6B1C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758970793;
	bh=zYrAow6ga3Rrf6bNHej+48qw0I828PI+FRV09Pd6CGg=;
	h=To:Subject:From:Date:From;
	b=ECfB7zY8UJVQEO1PCSCrUdCDAX5h/k4QGnTcqm4V5Ncc37ZkzLet981avHqmDMi+6
	 5n9SaPrhfRR0M/GxyvJZC6z0PvRaUVxyDQDW7Y7n3qrz0VW0gljkIMYJ8oQa8sikc+
	 XlD/cJFprV7kjeP7AoT4vaQnx2n7nw/aNvKAhUYvj5Iq7htYwuNI/mzeLVaufR1XqS
	 NYSietxzoNvkJ2kvSMAANtOINiys6hSmX9NDkjgpB8cbM4NWIgsAYkCB5sH8hwjL83
	 iLXT9Zmkh8QNczirkytBMzvaF8fK5iw1XhLtELvtrjxF6w484iU9P3PBhWPw2zxQwL
	 +RkrPmR2UwMEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF79CAC5B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175897079359.3017.13826715249716361803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35663f704491a24d6ab7684b7021fb664e08138619f07f552d304e8b1cd4b809
Date: Sat, 27 Sep 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758970793
