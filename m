Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8DE1537D4
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737535554; cv=none; b=TeE0Ya1SXsd0EtE8CKwrhBAigu9mMKIRZcM2zwcXoaPbIuGbmRBdfUCLAkZzUs81cGRY7D8bkKteZ3zkTsuk2hbeJeOtbrfkBp6gyPfZEQkhoQ/YQxwyzHXBxPmaYKcm1KAB7GX3BSpvRu84UuP5HkNH606japlpUG/cunHhIAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737535554; c=relaxed/simple;
	bh=W4bs0fN8dtdbqsIZwc7gayXATAV9NrNJ+c9OE9j4OAA=;
	h=To:Subject:From:Message-Id:Date; b=BqDugUlcAH5Npugzqf6cdi18ByX+5yxnX/nGCNt6n2zqsOmNvHjdiLuwICSgdZByrgg+5yoybc1+oamNjTk3DWsr1H4Rkmfn1zHfFxGRjjnEI3NpezAh4iUXIo/dJIRL7yAmsbnPYKcfcYLiwXsMBJdhr8aKVPNPmweNtPknCx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UXEk7F3D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UXEk7F3D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B70C4CED6
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737535553;
	bh=W4bs0fN8dtdbqsIZwc7gayXATAV9NrNJ+c9OE9j4OAA=;
	h=To:Subject:From:Date:From;
	b=UXEk7F3DWUZzB9TSsFHNo4+JESNXOFmBVMDJuz5kQJZ69cU1yS3o2OQA0Ren1k2YS
	 rvocH7spJS0p1Kt9uhaBjOWokIq/gJmTmVeSHgDHTClSEO9PjM6LpUImCzDPrJzReQ
	 0JNeB+i9srbOpwLieglL8fMqhXYS1TXQb8OmD8K6BynpRMkYUxaoDX2GWqn1LvOFOe
	 5llToKFdsTPvuBbKo17/V07q99ORCpk5IasAf1mjBlIJrVaOm+PfrsKq7D5NIv5lqW
	 H1CZ7NQo+dZzNnxzPWqyDNKre4p9gsh0FwsMQZC5RScT8k6P8BAGq3x6Ljp0H0iq5X
	 YAsHHBGmyexTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A83C02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173753555358.543.2135771952047396939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e040a6930d5c0f0efa0be550653e073f187c4aab5ca61b26db1332ea07a33614
Date: Wed, 22 Jan 2025 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737535553
