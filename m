Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21FE81A2645
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728599754; cv=none; b=Pc3vWP+8ErG5cDBQ8RVyNRYpGAG7rUTCuuqFc08SFj2Kmn/sckDb8dhW4TF1LOTb+Rh3O1xiLmNWevcj9BkqEe5+Su/yA0W6nu6eQiMC3wEmu0M99J/EC5dOqASo6Sg5MnCbM68vo98RvCOACldS45cg0xD7VDuYtmSo4oeegyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728599754; c=relaxed/simple;
	bh=ukrwxwQoh8b/au5OmilCS55+UeQW61O4P/9oI5CFkO0=;
	h=To:Subject:From:Message-Id:Date; b=H4dylArifyy07/wbphmvmiI96v2x+lM+xfbg6rzXszbo3oUBSa+1LQ6L5/JJVRiNA2T9EkhR+gFrv9ojzWfKaOLogVh5rZ9dkWaEwPg4GJQ8IRWP69VF63HmMMnxS5ZSUE7YnnuHsttfO1y7e44VbaJYGzM5KtoKVrkahOUSwWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ccvWrp6d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ccvWrp6d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE2A6C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728599753;
	bh=ukrwxwQoh8b/au5OmilCS55+UeQW61O4P/9oI5CFkO0=;
	h=To:Subject:From:Date:From;
	b=ccvWrp6dPkkbd309xLdo+zvgm2SoSZskhw0ArnGNsJxAyPH2aGBf5m6lU67g0ni9G
	 A68geEFiT3R6YTHJdeDY41txPUKGBe/AmnxmJmppxS+OzxA8CObtDakugLAp45nTMg
	 18NWeyTg3n/ct5lfa4eq6h7LHysDeluLKw98WTr6s9DDWkuFDR2TxEmExDHNu89T7W
	 2HJYhJvJIHeKplVKFhuU88jqkMZNMgqmdFFGODfE3NLxYfnk6cYaSJFtQaacqGu9kS
	 MuZHwZPfQ3uKd8iiIrD/cxddFNs6XapEMS1dLk0TefFWNAmdMDKRwoaXyny+HH5y/t
	 rpNZCHc6vzSpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B83D2444F
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172859975362.26322.9316044690420360741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ecae23983fda946da53f4f3931ac256d05c4d6230fde740c3112035169ea68c
Date: Thu, 10 Oct 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728599753
