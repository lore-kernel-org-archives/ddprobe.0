Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30EA934BA59
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758937794; cv=none; b=cSUcACw0U4FFopLHGypbYj672Sziy6buKDR/JXQ/Mqs1EtW0VM93Kemp0Ymn3qX6d+n2hSNAxa4sBzcKMJBGA8YxnpagVZK2heJI3YVGFZnH6lkWJC1Xytfw4C4omG1uLW0lyjyzzLDqop0lArLNJRnPI1Vtuoynmseo9aHWvzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758937794; c=relaxed/simple;
	bh=oa/4zYyOKwv7k0qMnZU6H99pvXfYAiXP7s81zn/qC+s=;
	h=To:Subject:From:Message-Id:Date; b=ObEGzmG3mTzOH3P+w6ZKyffdteGF2PArHkaobWs6eT4Etn2seag+935VkO+yzWlZV0Lg5PC6VR5kxE8AF40lCsWbKhYBz3Ojchaiy4rCf19DuRsc934D6hD0I06TeqdmLcZmrX++2u4UG44Nt7YYU4sMDZ7aasams6RPltBert8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dMCAWxTB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dMCAWxTB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1081C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758937793;
	bh=oa/4zYyOKwv7k0qMnZU6H99pvXfYAiXP7s81zn/qC+s=;
	h=To:Subject:From:Date:From;
	b=dMCAWxTBff1pew+hhkpLOVWfkfWV33Kt94vRIsMaBEi5nYZWq86szHGEA1fRUHT9w
	 /Ddblp3PAVDhIPbPNEgjQhuvvuq2DjHtRQ6QJLTCFhPND4+BZ3QgZW0nkwcNKWJrn+
	 u/pOfyGZLgAqUJDpEtEHTzpy17m/qPlVxKJujaExUnR++2PeaQjhy+QgRVGoeRxigT
	 N0fJktA4ViJM35CA645/nEJxRiewq7M6cEmBgy7CRRnktVfIeAak54le6J4BMuhPuH
	 qf+Nn8mGkeVeD0iQtfAfd1NP0TD3KhYiq6Za6CC+8QK1uzQG8xAe7u4LpxzM5DM9uF
	 Ze/nXQus4/t4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C92CCAC5BB
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175893779360.21757.10877066367659477898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 613b0941194af722ca31eebaacfc062afb08f263ba92c1093f4b63ad9b8bf4d3
Date: Sat, 27 Sep 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758937793
