Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337F8156669
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738077354; cv=none; b=Y8QLtfeMzUfbROEGiYDxYT6nGWrEpJa+Ay7RABQpKIcaXszbMbf6PQpeqIVpa3UtUGNYLvQWSMSQJkrM3J+XvWkUKHCFFOBg2LaOHGeY1M4x16o82RVGmcG5Ow3eJ8dkOBCdB5tPrVG/s6kBgx95kjaNJjpafVxSpqzZFBucoJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738077354; c=relaxed/simple;
	bh=HvZj9DRxb+2e6ZT0vi0+8N2qetIN4vrR4+zsZAPef4M=;
	h=To:Subject:From:Message-Id:Date; b=CkjsPq1FiX/8FFEVypire/jtQ3axYanInd5itZxnMhhxWB4vh9Sl9jX+/WjVUdtiyIfJ3k2qmkysNKNtK+dUTGuQ/Myzn5PIEb1094HuC+c/+eXLRdvjSlIVRxdak0vnfb0GFAvCi4yt/8bbB06h1MMdEdJ33DCY1LIuBgjbZlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tthfCaE+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tthfCaE+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A745EC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738077353;
	bh=HvZj9DRxb+2e6ZT0vi0+8N2qetIN4vrR4+zsZAPef4M=;
	h=To:Subject:From:Date:From;
	b=tthfCaE+C+Hz4YEXZ8WPgYIPK2M4BJQ4AIawkoUiVQTGg8aUi1etg0JpMKa3P0PP4
	 gZ6cZaOaXjJfMphDRNzpK2xcLJuqGVg3w9SBtFltXHfHHqsj4iDl9O2nVqe14hVX3/
	 0ADsALnpLDeJ78x+N4Y9R/yqlVcpfPUcxb3HiC8NucoBcL0VGfjqjw0wRxn3hkWNNP
	 ytaxsotCA+ZqGzysrSH6yBALrp5csVWfmxw4QEJlhwkMOQsazY9MbkbJpPK91DYfZd
	 deT4QdHVKa2Do9PKMJmtpp7Ans+zAaN3NdIBx7wtyCyEdKZ6c6HDfkHLIt7QopoFSG
	 mUOrT3/1H1OvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976DAC0218D
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173807735360.23503.13407918448319506296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0e08d73edf3cfb0f8225c6fd5ed9e6095960e54d0e8740b640b5715c090323c
Date: Tue, 28 Jan 2025 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738077353
