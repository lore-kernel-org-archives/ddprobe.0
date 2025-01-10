Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D83C3D51C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736468153; cv=none; b=BcMvG1URA/TzoLbITp6amO7BsYcPpqY7Thql3Y9t5LxfnibR3eeIHdDe+ADG+7pDaxAYL/gh82BUrHb9EdFuo+nLuy3l5vwERF0wbzEdNBqlPtl0HWD6zFBcGJCWytM2IARstWgtlrNgHKi+W93J4k3ODLCgRGzHj2cLTkOBUkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736468153; c=relaxed/simple;
	bh=zw3Ftrm8ykIKsOmq1fw5zi3xTLWIWIVEW1WwF/tl5js=;
	h=To:Subject:From:Message-Id:Date; b=aHSLwwMB8x9/ttN2Ue04TdrZjcpnY7mDaMSBOn8uqAqfnjFtbSPOv6eX/6oQYiUQiucriw62haku6xN7xQeGonuJdKVHy9W0x6NAGQdxAiacNXDEHUSzMfOdoCa+r9LF2o5TMri/nFY7c2WaQAlK10qXR/AxmBVWrhQgUU801lM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AYFnO0uE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AYFnO0uE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BE6C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736468153;
	bh=zw3Ftrm8ykIKsOmq1fw5zi3xTLWIWIVEW1WwF/tl5js=;
	h=To:Subject:From:Date:From;
	b=AYFnO0uE/VqKRB/Vh3gXBgid/70e9AI9pUtz74gDcFc18/1F0fY6rag+Jnld0BTHf
	 CSM2XhntMSic90e1BZAD96rSq1tzL2UdT77fdnO+nv6pPMy8uZ+IivinNt+E+MhiLj
	 5uvlQhPiqztazw/n2iGtwggIcNrr3mSDK7uu3bu9ILs0piPitE+a/FYICpPXGKQTAR
	 otJbQ/0HgAMgO/K7SH3Iva5uDpzIJCRR96Cy3s9VpvEUK9HlRFrO/cTEt4ZBZGijA3
	 fRatedtgPTMOVz6ub5xswph7DwHivXjH3O/q5CGr6FYQlM21c9QO8uqWh70hTQJtJK
	 WmATg2ZMErJ6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92378E7719A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173646815358.12820.11731884576824410005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc86a0052635c8c0a4615abc8337daaa916839c752bdc55cda772d317d939d74
Date: Fri, 10 Jan 2025 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736468153
