Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8CB27467E
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 08:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769848434; cv=none; b=YCBnrmA56eEslcSAUmhbPamJM1gIIpGKcI2fM/Hht2GZ57Dh7BZAEjVnblprGfuInW7rflhugZnGd8wpxljG7qC8Z8L5INNMbltRFeAfpsT6lY4PJby6i1duuCIpXm9/cHpv8zD/nbGZ+uBEfx0/4Y4PpckPQzkr7Sq+c5fdNwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769848434; c=relaxed/simple;
	bh=T0Kuh/E7ZoySB/uXQsro9ZK4AkmoHNjkgVZq/V3sHA0=;
	h=To:Subject:From:Message-Id:Date; b=JhQ8eAafK2KkQlwtGgWQ0eFiRAUYdrJM/JZ839gtR/3WK9R3ICQspRf1uK749JeQ/WXeVdeyNz6p+a1k4+X86ns4torLp96t2GCkVorcC7YuA6lOjOlF5vpXC59xrYSTEd3Ld88n7Ii3+QgD013KZZ5F7epNi05kJuuskgYKX2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RqhL1aGI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RqhL1aGI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD123C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769848433;
	bh=T0Kuh/E7ZoySB/uXQsro9ZK4AkmoHNjkgVZq/V3sHA0=;
	h=To:Subject:From:Date:From;
	b=RqhL1aGI0BWOM32J47/ihEBqSWnM2ESbyyuKTk9Wsg20WmNOull5aqF1wp3kN2j+2
	 MEmYlKrKtBf2HxM5YK/omOmzQsHiHRd84FieTRO+OSQ1ue7bvCujmiKlK31/LuM/Fe
	 1ia4Iu1jiltRg2DW/LLmDsELzZG734UhyD1C1JqkH8ejACBHJMOoVulZOru1DENSxx
	 NFd4Dbodxd8OqHRLb4d+dF4ePyAI0lSKr0SJpr4fKLkpuLsudzahE5owKDijICT68N
	 nfPC4V8W7LZRrVGv67H5OFkT13vfleWcd5yQAy2Wi+dscsR0MQnRsSrU6qmnx6Zrd6
	 fl85fSbgUaFyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95598D79762
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 08:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176984843357.23434.7661855692366667903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 397373001ddd90ad4d86366b3c15e9bb4ee5e51453ed781b0f92359b30fdd359
Date: Sat, 31 Jan 2026 08:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769848433
