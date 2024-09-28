Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D86D18A930
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727519154; cv=none; b=HsBKVHuyVp6M0atuBz11tIeUCa/15MKc5cjLvjyZF06lxMhvYeFMcyL5HqCFdqOMxlgfScUT2l4+yoksqdA3SydID+oDZOCKV/I6IHVwNkxLae4h60KvdYYxh07amDKhN7F7Sus0oK+0FUop5cj86i1QqTbuRTY+GV7H6H+1bNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727519154; c=relaxed/simple;
	bh=DbkYPy0BFnXnjJHNc+7sw8CPHoxIkZBKVAVZyfZni3Y=;
	h=To:Subject:From:Message-Id:Date; b=p6fRmyYIO+6J049r6eY5np1OreAZ6oEdb91DjCILOgO0rMWcNlN4q1DHthj8qt9qk4G2/uuWVc6tv9TZYkpvWDpyl5L7IBzvvz5TTa9dT6kF3C33/VpBziH3smeX8NFsbzvFFJdk/6fdfCsQ9DBCktK4Oj/INPtSz6gXYNV/P54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XfAYcO7W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XfAYcO7W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B17EBC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727519153;
	bh=DbkYPy0BFnXnjJHNc+7sw8CPHoxIkZBKVAVZyfZni3Y=;
	h=To:Subject:From:Date:From;
	b=XfAYcO7WzwPXQfbsId1XgkhKpnpUlLZYRAbvklqH/ne6IYyav+9FmVSulsquEYQxR
	 /ZEAEtw5WFr51ifYJIW5bYJxozSP7x68U974PCI5xpeKUrKZiZmm69XCXjiCWdwEk/
	 opwrEDLAUi0c1Z59T/IovJa89LqB6IshE0DrarYYNfHVxU14QQrhKf5kBUDy5VenON
	 NW3KG4SxriJsW8oijPzqpl5OcGS51xm39SpgDyG6VxlCH9blwkbNQUdDPw+apbo9ci
	 TXOPx4KIlo5mBcn4avkb2YE//HCWfvlFRpgoeJ1/z33N7sX1VeFITmMcOOoVxFdu7w
	 ict2Htc7vNovQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DACCF6495
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172751915358.11316.12464201733661264130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c49ec8dcd947022316adea7e4b68e95c90f88e59fa1f243d47c80762a233a87e
Date: Sat, 28 Sep 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727519153
