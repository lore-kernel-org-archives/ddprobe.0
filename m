Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A5C2BF3DB
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752607794; cv=none; b=BYWW0GGiFEir8sJicI64Oz+MNVZIQzrlS2eeQmLK0yxERoG6gKHn1C807RCI2PQWLTmJCXHgGZK0KvLU1yL35hQjcuQ5VwdzvBA+jWYk/IvcprQii+DRjs/1wgCsxk6WlEVuLyLxV6gE12MZAZ6G/zaOI4qE8yYl4zs2H6VLw4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752607794; c=relaxed/simple;
	bh=ZPG1qyd/CfQswVWkmC9NbtHPlGEbAAurH6dk28KACzk=;
	h=To:Subject:From:Message-Id:Date; b=Nc8lXUisYVKFHgHNZejiwFRLli7+HzkW+OdAWoJWTQMR8GDOVk5O9pvsrXtdlEjWj8ZpbbOixERPYXisFCDrCPbtEIABN3CnrIpHKYCN0lJhgBUpI1t2M6iTII0KiqC2JwSSgGJEjyUAKqG5dsuYumuiXkiedU/JIJ7IeNXTlNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EGczmRlB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EGczmRlB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2555C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752607793;
	bh=ZPG1qyd/CfQswVWkmC9NbtHPlGEbAAurH6dk28KACzk=;
	h=To:Subject:From:Date:From;
	b=EGczmRlBmnAzhULS1IPfiGAo8Vatsz6xEy9IgnGGi16FEE/YwtG6F/JEFOAUYDCTV
	 ropP8Lx7Kg5Kj29o8dcD+L4tE59K5mvXy5eNJsGFqka4WPTK68x5JAHokwfu6pk5eS
	 XgoNAjrf2hHtNrtXIWYFo6Prt5NzVS1gY9OBqyiJxKRLAjECwVe4avDRQ65Dcaxd75
	 X4fFY3lbFr8GYnzVmxg1Pu3d+EK/ZUIiLeMFoc4OFmhXBiVsETwWEGyC99LTadv3f2
	 E6cr1zeYsodPCZHhdLTaSC/NdtQDMZlme57zz4Hv23dPesHLRSxaa07eGwb7sesYWL
	 HLA4swD712Smg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FD0C83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175260779358.11346.3776900731575883330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20ebdb863513d4cc9e063b6226591c3944adcbb8faf347470f8501e8ab930f0f
Date: Tue, 15 Jul 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752607793
