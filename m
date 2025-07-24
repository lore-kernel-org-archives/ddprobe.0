Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA8D1E9906
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753396794; cv=none; b=DSAYlrKDX6vbM16XOR7jd8xDgeqK8nomfM0ZfnrnxxzbxmGWigZ/hdJ8S5IcVR1Oyc03bU3CwBDHzLybTriR1N/eyhsYFZVPt0THODWwiCbmlZ+fOmFYIyy9RUZ+gFLJpDXdDxQBsN9yDq8PbpQK6dXhVyanRtOsW/PrAtvzaA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753396794; c=relaxed/simple;
	bh=vYCqTFJ1SsBkbaDVchbt5kODh5/dcyIQ1ffFCPRag3M=;
	h=To:Subject:From:Message-Id:Date; b=nPpvcB1ykai1QqE2fstpRZ9MSotnguzDgRzsBK6VjXbSpzuA/cqheTbyVVZlK0OCPjysv8+AFMOxJ3pVaMqcC0blXmYlVpwvPJexOe7egZJeiTsXthnkrd/SYxkm9E72yLan6n2Ej9VtMJL2wusq7tJwWHfGgcpi31LXWOrj53Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NPZDxhhx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NPZDxhhx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3132C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753396793;
	bh=vYCqTFJ1SsBkbaDVchbt5kODh5/dcyIQ1ffFCPRag3M=;
	h=To:Subject:From:Date:From;
	b=NPZDxhhx+Avawt5h3WAlbcuudmw5liTMKLBZE5OlacZABHqQxc5qOnB89S2P5/57d
	 weeqizylM60vStl+HZziwmCgnCqHNRJb7NT1Xsu8aU29S0dSI9JHpgrp1tDWGpWvO+
	 NMwjhAYZE2J0V5R/68Pkvgs8Z23Y77zPry8O9Tkl/4If2eUyyWl8u9ioiZYlA6ox6n
	 e6MUD4mzOMH+lb8mJLIU6PO/Fx38S1ydj1HUWciJ3O7FnvfzPF6hrBN9wUYddyngwE
	 QNZw0jr02CYrJv4sCU8DuwP6ROKGxWYdWBmYGv+1CHRl526aOzhuo0p4pppicJVuFD
	 NppzB3ph3fhFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90977C87FC5
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175339679358.3354.13974467643941853214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6abf765dd08d6b3d83cb5ef47a413ac96f0a7346c89faebcb22cfee5adfb2ba6
Date: Thu, 24 Jul 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753396793
