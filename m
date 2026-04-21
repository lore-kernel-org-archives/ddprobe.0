Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A900B40DFC7
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 03:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776742654; cv=none; b=smKQ3u4OntI/+vjY/PiJuuo/RvEuyNQ21nAeGzRQJ0EngMVGg16RVuJz6IOBPvpyFUSbXcJ5bDDbj/UKRMWZtO6xrcPRVjzSxU40VFfSo1SsZmJWv1gN7tkfCBntB7Qo7vbvXxWNHA6pQuTj73wXACdxxHx+7/b9MjamqSNvTxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776742654; c=relaxed/simple;
	bh=7z9v1te8+9gUsqmIPtnRH4yU0OzRPLdEQKlGarGzytA=;
	h=To:Subject:From:Message-Id:Date; b=Q1BXcQAnAcOOlW0LzBoyLWGqDc41xFY7QZeOTS639T3geGbPQf4vj1pWcQBwP2dDnEmsTpDyLJju5d1B0H0pkC2kgRVLW4ON/OdpCLMvy7QRQLKI0GzbG4jssKmZj1UByGbgnB/xF9VEdBv3wphJqQwuAHC0HZh9CyMBTQqzSrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nga2E7at; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nga2E7at"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1EB3C2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 03:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776742654;
	bh=7z9v1te8+9gUsqmIPtnRH4yU0OzRPLdEQKlGarGzytA=;
	h=To:Subject:From:Date:From;
	b=nga2E7att609uw402TqhpXCJ5pV0XfTHArx889mSmZJevGs339Shi32V+ABfckzWx
	 I9Z0j0WCtAtbGUP35fEx2LkZh0FxnJIvgCSLW81/ljmTaD05PuP8dkJpJxh+nezJ8C
	 15EoVQzyK2QQ1bdmaR4pq5xAyEIl7xq7JRspP9SiXOJ5szx38cNg1hCHtyaYuS2kfP
	 e6wm7DHJFQ/tu+XwFF6xmNhYpQ+9Wa1CXSYT6eHXZG08zgq/b3UiySCmTlU4oR3Qn3
	 dVbKMjYU+Vtoa1CCHTNrFLCUgvTyVp/s8W+vIOKjST/ZRws9OQAz6yMt4uYyGWuJmw
	 LLq5b6ZIBIvKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB779F5A8DE
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 03:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177674265369.6113.12551133329009915602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b4300b4ab4e4f1e51e7cda35f738fc28fc4ce03c5b10a9a7d155a663a45f9cd
Date: Tue, 21 Apr 2026 03:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776742653
