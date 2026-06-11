Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D07D3D47A7
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 11:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781178994; cv=none; b=YN7Oy8zcdMgLgAasD4LsfgIbMZBppP67Xd2mcAnsA+Q1G5BWLqRIbuf8wwo++7fjzZY0S/oeSQQeGYYNsea7AfkjI4B0CP9QLYsb1Sb3YsWapmvMHVSs43pbc2C9hHoNoAUobdctMTH+q4JvmGLH9nP2ar4oeo6jdR5kwBSLCO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781178994; c=relaxed/simple;
	bh=Fxhw2PnKxa9cm+cdLw9kTVHbiZ2kM85xvEt18SloNNA=;
	h=To:Subject:From:Message-Id:Date; b=JgdWf+2DjwSTQJqHN6IOlPSzeNEEs8iwlr/4pv9wzXkH1K0uMBPAfow2VxcYDsru01fVNjrmFYUWXm5cl1dog01LM18lvsBkrgUuFj7IMfpw/AKNQbrn9PTtr9VHIMCddrnjGCwgmyJ8R1enh59c4WtV3jhKCl5cAK8Mj4mI6Lw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OzprlSYx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OzprlSYx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED42EC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 11:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781178994;
	bh=Fxhw2PnKxa9cm+cdLw9kTVHbiZ2kM85xvEt18SloNNA=;
	h=To:Subject:From:Date:From;
	b=OzprlSYxHj33LqEJLV0I5oBW6I+nTv53Aigg2ACONNjqJDRGtcP42KgnPlMBKtBGq
	 8edMCXIVlg2lBo9IRHttd2Mp9Zv+gCNbbltC+z49+gaO1D/Ku/tV3sNL6MVAeHycOf
	 PD41/XeAfrm28bgqUOLV+v9uQLLBJKXzjsTQWyAJO8wVKnVRrAIrg2DkHBNXBJ0KgI
	 U7iuK8YqP4k3edsUWoT4uwI4kKl2g18wESJEfdyh7XXWJCuelHpKR4ta1qnRXBzEYo
	 QRyVTf9wF0jfGJqX+OBM4NGs4UMML8sCCE0KJ49J3A040T6rpR/7eBbGG03ezuigXb
	 CTCQW1n1fOJjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9CC9CD98CC
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 11:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178117899376.22094.7812111611266406149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6bd5831a8dfc7bfacbed77393e5d7fd78abb21742753e7018d64dc5470734f5
Date: Thu, 11 Jun 2026 11:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781178993
