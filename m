Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53E572E337C
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 02:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741918735; cv=none; b=KJJ5QGm1oByMn1Fr1aif0rbxwq9wSfL0qdRQpfOs1hUiqXkJYStP5zKwRECGI/D6/kO0Y0LQW5OXDxeTfo3EzsWBnaPwuuE9LSnUPFdmrkvvdznwHL008NNSSith5yopJfCf59AWvVlny0ErkgQa4SOCM0TOhaXTK9ou2JQDECY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741918735; c=relaxed/simple;
	bh=avTSfdYbLC5fa1eqlyXGofQ0Uq4xhjbl9c9sHz+BMY8=;
	h=To:Subject:From:Message-Id:Date; b=TvHUBAkq2Ag+a6gGMTzANBdWDFVXKFN83UTDWTfi9ib4qtcUvXxDXQlbTOHHNX4KCXsgrCytG2FIbOBD/xs1NnaQV1aznBOfwxHbIawpK5CkQl6FBPiTzJcrxfXvYkvb3iCjlj84GgSx1Nw9HRoCK4+81f3IcvHf2d96sFAz+vo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=snYs9wSq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="snYs9wSq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD90FC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 02:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741918733;
	bh=avTSfdYbLC5fa1eqlyXGofQ0Uq4xhjbl9c9sHz+BMY8=;
	h=To:Subject:From:Date:From;
	b=snYs9wSqghpNBtFhAkhtBvdYz1GhPK2tdkA7kCp0l2YLOO/Y/n8E6VQU2Z5CKBwVI
	 yW4i/QFxF1QsAdbMNXEIQv1EfsrU451c189wuh0Gc2aVJ+oqd+95vqljT+g/rq2yJA
	 +Clxlv9Yehdyam3Uz8/BH34aBkT/osG0XA2ucnd9exb9Cn5RizF7DbGtlJt1xvKGlE
	 LmTR5dzep/raGUY3oc8QsaW3wBGnSehOr74zKyr8wzlPvu8Mp6vxz8smbqHanM9pyO
	 lDMK9UoWPwSsbXmL1/5s8T7FoKQvQBz3BWL2V2LMtjjep75JjK2UwjOZ9zXt5zBFBU
	 BgKEgYRzgxhcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7A4BC282DE
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 02:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174191873367.3065.13780046736468070910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38255dd1bdaecf8d5fd93375c65b22000992ecab7ae9c78ea01355f99520ae74
Date: Fri, 14 Mar 2025 02:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741918733
