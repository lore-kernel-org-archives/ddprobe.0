Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D68C381AD
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 05:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719638063; cv=none; b=K80j71mTNxoN2MkNTC5WcZBRJWB+kHwBZW2IXoss8OCerPjuDxqI6wsHk324bcy7VKcVGedntQCc+FBvaLqV3H9Q3oQfAItymjEN91Ak8kVWyLrXZsek07oW7Ei8Fmbrv9aWzefX2SyXSIxqFPqgdwJmV7QDpXELjdX5MNo0zAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719638063; c=relaxed/simple;
	bh=xQDXfZDN9o2KouQDi+JUtaLMhYoZgz33XVLfyNe7u6A=;
	h=To:Subject:From:Message-Id:Date; b=FYKsG55hl78Y22bENZsuDaTzqs6jL32LWghZZuEoUkZlMbn5lh+zLph/GsPnDOjE1TI9G69fK0T6+8oEft3mma8PFFmSud+GxKis2XnV1yV9SZGIQ7xrpPYW58ttUTV20TNs0flGxkaw/nV9lsoyRsbS9rgycIrJ2YJm2r1WXsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=naRRiYKE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="naRRiYKE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF25EC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 05:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719638062;
	bh=xQDXfZDN9o2KouQDi+JUtaLMhYoZgz33XVLfyNe7u6A=;
	h=To:Subject:From:Date:From;
	b=naRRiYKE77HS1mIC8RjEdMpCgCP/9kVUKJIGOT5LbDncEb+Cn6Mx/5b2gb43nLjex
	 z03jHYWPTEeTPpa20rMT4kvIoKWYI0XLFL9tAcZzdt6GefeITJPNT7CNRupGDgiL4M
	 CL24cDVaDdKiwNMvL3crHBw7XzEv8ZWqdZ56Z1nLBgPffUmgiBiw8pPnKCF9fdDTIp
	 dnnf0jMqZ1oIS7xxw9uEWNmwO2Md9sfZgRFSlUw+4xj1p5xGBQEkk3J2tzV9N73waa
	 MqCgvjnGEqQ5fK0VgcehdOVOqwYWTBu4MYCIXDOzMWDeixHXY98iYbhFfs50U+ViPI
	 ivRDzzQydFKTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD248C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 05:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171963806276.27471.17986922441219110141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bf6e18a89940ff8cde1f921c701d1a4201040a90869876a9b4251db7a35413c
Date: Sat, 29 Jun 2024 05:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719638062
