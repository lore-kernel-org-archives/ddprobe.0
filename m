Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8215213D53C
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790145634; cv=none; b=sAvTgjDN9UyhnJWZcUeujVjvoFAfk0UlWByy8iBfPcIcMbbBXwdueyaMBMhOeaMVdVGE8DsJsiPeYDS/yUQBfEMWMNpaWPDg8ollVsKlEKo7PPzftLTuxTU8v/SgMwaNXDfhT8zFC6yaQEFaAaftq2ECJFmJFKA3iWuuoiDS7Og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790145634; c=relaxed/simple;
	bh=ULfdGnt25/2Ki4lNGRVeWkYkBsMrOtHJMSb7tvmeth4=;
	h=To:Subject:From:Message-Id:Date; b=de1UyAF5G5J0KYboKDjXnokpkRYwn8oCi0O8MNm6tpPk2ef/aaubw4Sa5ZjZa6T68B2gf6XqKCStgf93VI/4PTS4Au+cw4DF0yfBEKBxYJNH/26Ma7cTm26Geg51zdKbfGToQAeKM7grWJ4+qbZHCrRfdCP/NOPA6GoPt0edw2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UuWyP8ad; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UuWyP8ad"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA6DDC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790145634;
	bh=ULfdGnt25/2Ki4lNGRVeWkYkBsMrOtHJMSb7tvmeth4=;
	h=To:Subject:From:Date:From;
	b=UuWyP8ad0ntVEaNGMR4U4cJdLJi6VXD0nz+AeC75RfLYjUCFIDfRqnkEz6qxcCGQD
	 zHIIr8ul9ajt7LLe7qbtKwpCBzIkrXtZHPs5QiaEytBqdLQfM+gSPt92asrQ85Qf+O
	 IOsF0zJXIL0Kw5jLdwuvG+mt9oScacQVXUzdOXv5vFh2j47H6w136KRS/tJi4GmtXE
	 99B06lQyiWxmfEIEe5SmF8V2OxskZGe2mG9KUoYPSABt1uqNHdC42CTlejPJs0CCuH
	 /lYGJeoLdWjC6g+hV8YmAbD3KBl3j5oQpEwbFfNGbNxoIIIkCg5XUQutxjS1IxTcEN
	 jToBjuSN6KPpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C038BC982EA
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179014563376.5082.9701053222765140352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58945e9b1735d302336bb1bcca1ada348b5fb8b498561fc9a0956dda0eede579
Date: Wed, 23 Sep 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790145633
