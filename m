Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C91E35A3B3
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 20:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774643694; cv=none; b=KP6CIVezC2eykowyIeRKWLhMWen/+5S5XDHTgt7nZiu8lEBhm2s720knsjjClw/1lc96H+VZzPVsbYY55bgX1P+SAW+FGsoMcibqGspzVtp5zs2m9jneABWySk7DBGBFFpyQCk6rlV1uDuuVTgOxEHrBCxLPin1nMp5OYPTGaSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774643694; c=relaxed/simple;
	bh=CuaEw/kPgSCtj9a7Aj20GU1PkmDlL0tGVyRHwvINdiA=;
	h=To:Subject:From:Message-Id:Date; b=GORpTgTGF73B73cpfmyElW4olWglN45Lacvn1g9RrP1ruwwvXcr90BKZGOPsfwiwfQjOgPob8+BeBCpxRyLEJ9l3sLgyZeCEDidPpQlp0HdGpZPNoxu5og5yQyddDZ1uk/nTFvUDnn01gD/TES8gwzQqljV3kIVsanIMM8d3g3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nipvjiuS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nipvjiuS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A920DC19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 20:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774643693;
	bh=CuaEw/kPgSCtj9a7Aj20GU1PkmDlL0tGVyRHwvINdiA=;
	h=To:Subject:From:Date:From;
	b=nipvjiuSfKj6enFQi42gNzBUUIXYRkpyNj+PJv3UruwFR/Vp8cko8jaeIEN2OQr25
	 k+N4LHam6pxwAqm49OCCt016OVqWZjymOIryJI71KCPg7E9wHJ6AWKKBFurwZOqUfK
	 Bh8jX8YrHse9wyWv943kYRei+KxUWpE19tQM53FT9D3Z3kFrH6jDZihAC/Jfga7s6T
	 57ipQtCFYy/qdVWKssIZ3Fdqhkc4zvRxa4bE2Ty/TgNDxjEHEfsQfodCRol+FdVY5B
	 0iFi2KgpoX8UX4OyYwueJvdEUUbUIPiiCYJ9unHJuS21QHBdKUKNSv6kLdKAW0jttw
	 yUQZaeho90zIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9346610F2867
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 20:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177464369359.12510.2681173668907397741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 271e32531529283b9a449c68a1ee4b983ef77cc0955276a2a67d8e2a42aba79b
Date: Fri, 27 Mar 2026 20:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774643693
