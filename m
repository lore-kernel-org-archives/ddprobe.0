Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD4AA59
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 23:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773011694; cv=none; b=EPxNM/cIFtvYUjJVDOWiOIn5nxZYrHGvSC7orXkLKL3VpfwvWphKvjHvyVRreLwBJRkhV6rBqAcSs3SUSxTJFJvmq8atPiz3/xzVoM/IBMiVeBTgeEkeyq78aZmeCzaF3AtBo9P6GT7sop1GlowLFoHqdFxbMh5hDVhhCMqF5jQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773011694; c=relaxed/simple;
	bh=Dtn140KhX4mQ5bh/DALljbMR6OGgN4+RIItKeoxUnsU=;
	h=To:Subject:From:Message-Id:Date; b=Z8sQzqgDCcaegcpfDdiossbvHBpY/d4iSd8HHXupqYQ3WpBcbrSlLI6Obf1vskilbdpdnimpBhS6Q7FPBvdpidXSElnmtYw262lxton6D9Io9SIJhHjIwgdfmQWaDSStflIu1ZC2+ak4KKaJIAmoxGswLFEep4XAhyvV0bVgvEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sAUnajNa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sAUnajNa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB0A3C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 23:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773011693;
	bh=Dtn140KhX4mQ5bh/DALljbMR6OGgN4+RIItKeoxUnsU=;
	h=To:Subject:From:Date:From;
	b=sAUnajNa9z3emFyQDmXmEVoyisaZIOtPgCR5I+yQBIdLLmIEp3qlmGfIIQ2OHA+/s
	 JtWu6avchbY+EkB+xF+llksUDsPmSWln8Y9RhzU2cdj3za9bIKcgvwgNYzQSg6UJZT
	 PNpb8G82y/7HQrNlxnQPCfVjg4VlE6riJCn9DOzyOQEU+CTykV0c22FRVJcW4Vt4AT
	 1i5wQ5P3dd2p8wyMPaq/MYl75BBNDqmlqatDnr0agltdYnhKuZGT54euU8YeqoKhcD
	 b3rBhncXGDDArilOR8+WMQ9OE4c3W5kEIVTeOLRAk4YzeoGgMNRYng6RUPatSMu5al
	 sFD2NivBwZy7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9760BEA854A
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 23:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177301169358.16324.4661252133983340071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b8758fc632214ad7d8a70d39b956b9adf75d8be3c620f35530ff4e9e4f5c2e5
Date: Sun, 08 Mar 2026 23:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773011693
