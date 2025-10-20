Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD75524BD1A
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760975993; cv=none; b=QiljhdBMfKVUDyZTqSlDzFj2qi8P53JTE+xzktmS0wsi3uSsk1CoRcaKssJpT0r5ZoafwCdZTMJ5WO0CFYiEI4eMHC+PlqLV0ezbuEBoQOguyWmVIfg8SjkmFHNntdonnyyR96GzSRxartVPFAqW6BJamv3fTTKZwvQ9M7MqWFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760975993; c=relaxed/simple;
	bh=X0Mrjxn/VtOivXAbXPa7LAkoMLt0WWoXhDj0uN5jje4=;
	h=To:Subject:From:Message-Id:Date; b=WUQXNlSZd3G08Q8noqCLUuBN363X8dDwUwLr/EuEtoPdrv4UcKrvIrYhX7E30k81SgNym8WIy6oChaOepKnImqAggXksYc2w6gziXKklATK198G/B6CwHW2nCRTYC5bq6Cd2qBX23k8arw8G4XgVnN8r/gvtCLA9kfDwZTYjuy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OWzoWMaK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OWzoWMaK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE7CC4CEFE
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760975993;
	bh=X0Mrjxn/VtOivXAbXPa7LAkoMLt0WWoXhDj0uN5jje4=;
	h=To:Subject:From:Date:From;
	b=OWzoWMaK6jVdoWqoGm4SguzCNV4goTfR78PtYWZXq40J4/e9M8e7Wg9jGPZ694VFe
	 eC+rEopTwKWWGOXG7uYMDwmcQEI9njv3z87v6Qzd6WLptPBfrGLiZFr3/xCt1AaWB8
	 LmJWLlRqzc4tigujmllmHVJzL89AthZ2JhOtXzEBRvGQR/3nedNXz/XDF54wsMQydk
	 OAyKjJ9HMOl21Y9IcWPEqzyspBjn/ar6it4xovBPcSfmbdZiE+3DIYWQ32OxCoCDD8
	 FaQOz8K4NlPnnNUtzG0yGckMO4OCMk6R6I1x17w4d1fRtbpfRz9bWLWyIGg2oO7Bl8
	 ba750FtWjtqeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F451CCD193
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176097599357.12539.4543768608792551713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec546a3e9560d58c737f3bfbca568867cc439e1439f9315e63e9fda0fb0ec951
Date: Mon, 20 Oct 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760975993
