Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 401D318E34A
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742974794; cv=none; b=AEgtKaVA1bYB0x0skAPP1lPp6Ii4R2fQGQAFlXywhEAn3UXNgkWNUz3yiPRseJC+LayVHqWr2z4PcHB24W+2cNnt3ZNSCPxdrvrTUqfhLcAC0zNetwdroIwWlewuXaLqTf06HiwNaCNASgiL9vNtUr789MDlFG/xBv+PyRzGC3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742974794; c=relaxed/simple;
	bh=1PM/A6O8ep/JBKbJu112ZGYiJGipaGPiWFeRugrkkR8=;
	h=To:Subject:From:Message-Id:Date; b=lP5GRDdDSWv7aiRvPFj2zvyC9lueD9Mg1HGeHZ0bomVD2PsBq9Uz3GRyuAy8kxJEr8C8go0GSfMriGKvHUgT3F8YPL9DXnJwKaXMOR7rmSJLZuPlpTkyj0JlzSBBl3XrMtx5NE8ALc8RXKVhtGB2dceA/kg9SlxUlMn5OZ97o2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iJKeVLG4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iJKeVLG4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB488C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742974793;
	bh=1PM/A6O8ep/JBKbJu112ZGYiJGipaGPiWFeRugrkkR8=;
	h=To:Subject:From:Date:From;
	b=iJKeVLG4Cuxh5qfhLcQGrvjA/R0sMoIR5x4gSGhYeGccmTMfu50bTS+aSlBbVEfQp
	 9T4G13Ulp+1LXr9jeHFWapK3Dmrumx4oF+EanpQELuRC4CfRPRDE7yZXxghEoOCikX
	 +b3hmioaDo7vwam81pL1l2ZuWn4xlN3b7mwJDxQIyp0YrigCkrs3h9H3n2jDQIIBt7
	 QxnIjtbunF6o7fTdbweKdKVFJ5FGozcY7kpzE0WO4LbrKNX52qIWGbRk0f/IYP0xA1
	 xtptfMOUNT3WoZjFutWC0vU0yrSP7ztbKh1aPLeLwSH/gCMp2/w53CaCH/8ckvs7IC
	 PtHI0RgwUobQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9793EC36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174297479360.8572.10071255759661433121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bd341e49e70b08b543c448b4a39eeb5c56fcd407f105c58cfb87aca924aae6e
Date: Wed, 26 Mar 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742974793
