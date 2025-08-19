Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C14925D209
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755588594; cv=none; b=i493froJieOseCHG/khipXkFBL2igBXagVcr0kPBUjI8cOxEZY9aBVY9ZKiWTz20Soxj602dY7rzgPCMRpMEgwcBLsQw3P5KrO0/83GMwlIlHpzBb6WK3SX22wjHY8/jdu3a+Y1V7KVFI9UX9ucw8jXkbYBz/sfcB0+1nKaAfLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755588594; c=relaxed/simple;
	bh=AnO91t912Bw09wBTQ4A62pV5uuDZPVWtYLl0pbtu7sA=;
	h=To:Subject:From:Message-Id:Date; b=POeLaluuFzUIKjoIF26DPfT5/aAz+nhd9n1ikxWyvG/CqwaPm32A2o+vCGnErLopR2RCzZY+P+RT7ehAcxoByyYkJu2GloPO3xe2GDJiO5n9ztHF19eGI58D4UrdQCSQkm5xtTQyQHwJBYGTlx7I7oyKUi+6fHbxzBNBA4pRyho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aZRv1P+N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aZRv1P+N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3067C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755588593;
	bh=AnO91t912Bw09wBTQ4A62pV5uuDZPVWtYLl0pbtu7sA=;
	h=To:Subject:From:Date:From;
	b=aZRv1P+NhbNC7m4Nf/TnkRPfE6MhaFMOFV8x/54W3se0tpdKbY/IPZYHCTv0z/TTx
	 vADicaWhc/7Lc5qvEAf6zLbw8V+wGnPJ3HF0zcIGZuDRSwbKZQzTJsCthmGP0CBdSN
	 rwrPnqH1ozmmNDVUFkRI6wMMhnmZpLyx0zxmRqGq5gJ4Kob3RuNnxbsZESuacz+Umr
	 NUR6Dvnam8/niFTMiqbXVsfITLU3/o3MRsuUixInviUVQJtdro5kFP5lbWAQXe/Scr
	 uRijCMhbp3AHdvFAXrUAVBnNJVy8ifFotBljxrJNxYDIfPCOFEM77e/nvtSVvtXwci
	 Gc/1JibCrzOng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92556CA0EED
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175558859359.30442.9461921328973902786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0a13399a8b296215c55ad53398f84fdf7accb20a68915e04fd6bac17d1b8f07
Date: Tue, 19 Aug 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755588593
