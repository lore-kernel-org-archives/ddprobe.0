Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2635E1FDA92
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760806794; cv=none; b=OOc+P3ZOtd5H4IYvzG1UizWiLqhLHoscWkSYL4vS12WvX7UdEUztCIDSo1yiA/J2TyOG/0V7RrPlc/IUZjqDJrtMnsmAT5zT5RFuKXo6ZOXJbgZF9FCoJsm3LYGpnO7fWh41CrvKAnLXObRbZbELKe7YCgCLHIR/NZx5DdBFD3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760806794; c=relaxed/simple;
	bh=R9yaSjVAAkp/vDZ0KJOa4AjdJkYY8i8H3yDPiOVnJ8A=;
	h=To:Subject:From:Message-Id:Date; b=Eaa3eHSzeOVrbG24W/h13JSGRVyzD05iPOJESi96aEMRXhZU3q4pMog912aY8RhToOA45j2y5d2++KWOEVsYVJUYyI4fuhADZeFfxMBXoSWGDyhsqPrmXTnHDY1xMJZKAbJQF69B74OdaN6QiFNZC7rjMQXtwAuUL1RYxXsPiGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dT1Vqoya; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dT1Vqoya"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0ACAC4CEF9
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760806793;
	bh=R9yaSjVAAkp/vDZ0KJOa4AjdJkYY8i8H3yDPiOVnJ8A=;
	h=To:Subject:From:Date:From;
	b=dT1VqoyaXlWI7QKfBxLwX0DmWZJnHTXGkOpNWc80FchOUief8EVAWqCbVtjAhy75k
	 gClQTm4MHWeXdYNWoWYSPBcYM/96plQUkL4HuC8vWh6NCBum89BSuRUTOa8JL2vCGR
	 n070846IAmAt6pPs3l0PwQlb1cqUSP1jKALCQPr9V44oiE7M5tZKX0C/TeSrMCYjL0
	 FRccqTODrjxH0wlMqB+n60QmLb7ONyE78G7HxTrEuY4cQLE1SU7HF8AIaUV7f82DMp
	 H+CsR3fxh56Zzvh6wfAFIZr2pcxYQQbbDNt1WUSu0h1YiOeiQfRTZNd/tXlCTBuI4Z
	 wGMCT5kj7kaiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F36BCCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176080679357.20405.4190628303063576242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 151266302fe8d9fa068393e0857fb2b2dac58c8c2735e3fb4c9ff3bb27f14e27
Date: Sat, 18 Oct 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760806793
