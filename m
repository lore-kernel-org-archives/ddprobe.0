Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E1E376026
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747448994; cv=none; b=FvK+si6dv8Gst+ZQ9HBwczTqB6tb458NZQ4776GDoBpskKVwcojk8H5sHWRe0Qqm/nPAqbGA4s+Mt81mfuCV2Q3534qagQtK9n3/zgYBJgpzPZwJCPU0HrlyNxeVcarLNOGpa+eikENQaZq7dQKA9YNkf93ObKt4alvotS9Luac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747448994; c=relaxed/simple;
	bh=R40H7MrX0rY/20Zc9F93C3FJtThYsyg8vQDUbzxM/gM=;
	h=To:Subject:From:Message-Id:Date; b=FHlir6s4hvGE6pojqwQSlot9ylUhVd8cI0sGlcVNd2POhj5kzvSqE0YzNgoHBmrU+kbc305PX51B5xe88hmpeUrblrUB7SqrXjSNAjCCOf1yBDhHlziUACLJqSPIGP6BOUnIRmNW5TaTC9EKT62cnZFz3b8HA32Ij9TgEMRoePE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oXUAm9sr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oXUAm9sr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A63C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747448993;
	bh=R40H7MrX0rY/20Zc9F93C3FJtThYsyg8vQDUbzxM/gM=;
	h=To:Subject:From:Date:From;
	b=oXUAm9sr6vH6584TzZ3XKaZVydJVQwTmbTZjo4tBFznGUuPc48I8l6tfqhxce9AoS
	 6z/N7aUONJAlyjXaHeUW5DvELsNoslxlhFT2veXG2X8SRkmSPifL4Br/UVrj/EbNl8
	 /bPo1/7t6mDevxogEKo2jmPhQoNteAOpWl2sWuJryxOf+Cc79ln6Ig3DNt4o3vBLKU
	 COeYbKJTwfxpH8dDZerHjG3uoZm4CqYjjwGNbM5qFj/HfjJ3EV+mS7pltASBJumnoX
	 +t0wvHtmgDS93p7u5KInJibESFTR/AmCgLbvC70NHYbpF8XW+Fw2cbnR5g9fjHYnxZ
	 A5k1gopQmFh/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DE5C3ABC9
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174744899357.17755.5025957070055170134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3abcaae402474439a70fc8c575a770bf056308767bc02b5860373dae4567ee7d
Date: Sat, 17 May 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747448993
