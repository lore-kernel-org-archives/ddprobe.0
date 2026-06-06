Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 310801C2AA
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 00:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780707274; cv=none; b=FzOETUCGOtOMiaGOLY9BROn4SOaoOPQw88mwg7k+wwWNd7msPpHT1+HdALzqOBD1NS0QWbRhkNV9ZdDWPiHlnXI6Ne5T9UY4yOj5CvODy/ZXH2EniGuZYWIBULSoUAOYJwpUS4gGXS1DHk8iKA+wZ4dnoTRKJIAVT2+h4HYuLUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780707274; c=relaxed/simple;
	bh=+yY2FQtQ4WP6WgrZDObNdea2EBZMJ1CAFoctJgHlWUo=;
	h=To:Subject:From:Message-Id:Date; b=U/TXi+b0jD96sOlPFzw9xbJHGh04/v4EGHRVTe6ssTyxR4JCyVsA8CnKHLQN18QWCBSaiW6yrM8xTFSU4og3wbK6gnsB+BXE3w0uW0QV+a0khQhftRi5en3/yuzpB12zQljyUKO/l+tc2Qq2APJgQCMM+OIBiyHFfONfhwUAxDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oQdkT/fE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oQdkT/fE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5F02C2BCB4
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 00:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780707273;
	bh=+yY2FQtQ4WP6WgrZDObNdea2EBZMJ1CAFoctJgHlWUo=;
	h=To:Subject:From:Date:From;
	b=oQdkT/fEzCp2BaRHoTrKJ1Aa5l7bRhunCh0o373c9z8TCU6AYmyNqZW4pos63yI3E
	 LUTk5uaEbWtbwg3v+PH76+GmHSlVnm8LmAi5J+XfOOuuUlWAe5MHjUm8Ztu0EBXnbY
	 sdrTTAlp1swpWtX1XEisiVqLw2myZv6OqkuqGZfdsJly3Hn3p0l6L8p1MPHS1B5Ezr
	 XjaGi/gU9/jPiCIMuiE4xQL5WfVufMH/OY3euti6HXG3QP9odf+FdcJOeuxcesnOOL
	 rU8Im2eJAzEWKxj2ywA/1nUIoH72iYeUPfYyJGfH+UTtr5Zbzsx/ScjZitKq4anRLb
	 1oGwtohdPUJgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF880CD8C88
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 00:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178070727368.24612.5279739311412254584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b489697d627f28bab608288a5751ac052fd5246dd1414bd1b3a5a06b9595789
Date: Sat, 06 Jun 2026 00:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780707273
