Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D14AC85297
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 10:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711709896; cv=none; b=KjX7sa+wAi2MPHUKtwPrhvj6TnKXscucnrO3QqhluTYdU7jeLWLBIhCIGcyYveO+MyTGqpG+aUPbIoDkAa1FtBgRgbgJailGywGhdrGSbU0JNvFD9MoBWPGKSDYgz8U7IlsMQEXYRDFRgMWuLq0B+54PwNklN0fNxF/zo73gxOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711709896; c=relaxed/simple;
	bh=NJkbMp6fjwYkljtkEH+ofGmI6nxpw7ft5agiS9p91kc=;
	h=To:Subject:From:Message-Id:Date; b=B0mp/PJZsG7JiTWrsmOvjyf51LDWUnADPU24JjSlcq4kRBu6UZHXmxuFgy8u/QYCX/D/ERtAlrVudyu2/uD4q30Z2/UcrXDPqP3JZYQDWRrWZIJctmV30oRZohEYXMczkOgF5xs0keoik1TVunSDsBmbZPZ0AEBKVdv7yxFOnkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CA9XErgW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CA9XErgW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71319C433F1
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 10:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711709896;
	bh=NJkbMp6fjwYkljtkEH+ofGmI6nxpw7ft5agiS9p91kc=;
	h=To:Subject:From:Date:From;
	b=CA9XErgWWuMtoWRyg3yvWrJZHxYGTFr+JFxqzKHxOFw1Dg1BlFdGXEAc7wFJOLWIo
	 sZYvs5YLakpliZwqE/JvksTeZqC1qNDr9WS3PU4fVZlzDNRVZaQRh3aiwwSpQXH3GQ
	 cTuDPg7itmFyZuByN8cu+K06Txbe0fRI/ZI6OsLQG9/BbCFM8RTKRG5EkIKQzDD5Me
	 dETHg/yfeh9zjoediVUCWsvw46lkcjTdDCyvdSceQ5uxUQs01CjqEGZlyKJrQSoVjo
	 8ZbBBe1UruWIP1RmV6lVLsN+KiggiSZrRh2C9ZYGOKUIsQ3Lem9FLaY4KHCjcj/0qO
	 GV9A/1L1R+V7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63289CD11DD
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 10:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171170989639.5784.13239746413286217601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b970d8939999f533e57b73dcb9730830e44bbf26ba9f1983169b6785e8977a00
Date: Fri, 29 Mar 2024 10:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711709896
