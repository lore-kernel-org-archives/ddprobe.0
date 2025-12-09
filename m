Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10C2727E076
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 19:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765308774; cv=none; b=tt9OWNmuQI7RTtlPMMKnxrZD0ubIQHeTS2WK33px7AC+suWmflnGqQW7hYmbaMVBY9Hi91dO902F39iITIqtxvKVLYNORdeLRk6oc1EY8ocbxaGN3Q41mxChVJzaaUnfQpd+UOE9VBsRb3LnddW1c8TbdzhEVvteRyaZaVVEufI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765308774; c=relaxed/simple;
	bh=o2KhFriV4hkMBW4m66h3VAnoVlhsX9Hq2BCVL1fJr/E=;
	h=To:Subject:From:Message-Id:Date; b=mE+MqTmy7I3ELwuxh6HG7RX3bgnmVGRKevobWDAJV5Aqd752SBr+5anGKk/qp+heZ/ucv/s90J/79NKGFIh7uWvI54KZyjmCv5z/RWnhof1FlJQVX2rUY6TZv31hOuZTiiJOM2WhiyKX4ymqnWYudBcC3XxP8qS5GIF4PMI28/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TLwEpP/G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TLwEpP/G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6633C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 19:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765308773;
	bh=o2KhFriV4hkMBW4m66h3VAnoVlhsX9Hq2BCVL1fJr/E=;
	h=To:Subject:From:Date:From;
	b=TLwEpP/GDe83LsDMx30Sv/NWq1xIYNyGfdF1GEuMDdad/aBsOJJ7mxal0tS46Y3Tb
	 v99D2QWkMqmzW8gFvEZdHzbBTrAqLxs/1eXjZ2MC7qniizIuE/5Sh72xh/lFRA+tXn
	 rhQ+z5xflfGPvOA9t5N30xbKAmpxnub+bQuQaGhM1bjn7PdGJjw5wpvg2GijcpqeQ7
	 vHeCy9oXDFnO58ZzCIMvDbPrGHTH40lFxu4U9oupQo4t5AQmx/owEuoPEdaZO6CnEi
	 hRGPscShWW612O82pCImyVE6JtXR+n/TYlj7tkHmNgjnIZvjomRmiGGSKhzvMzrsgE
	 7PaMWSRXAeFWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CDCD3B98A
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 19:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176530877359.729.13220748014677086495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1fe251d5a084acdd330139266780d10aebfea9b2a3476804b620d7a787f09b5
Date: Tue, 09 Dec 2025 19:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765308773
