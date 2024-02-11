Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27EFA42071
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 07:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707635897; cv=none; b=VXpSFDmXedzTiqr/WoZUlAHOdCCYGwGWu2dIobYC31wKsGUSPTjQNRkDRIsHYnjYGcPsvbHUdwp2QMdav/5mMwpMOAhiUwu0Zrjj57iJEKemgbnFCRVapLQkcIBooruoPI0xg7//+jo0kr5bPblMFlkYLXgdBpQ5i9fbvWYTb/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707635897; c=relaxed/simple;
	bh=NbLPq69q0VXxPH2jWy5Hiu1F3cOMTmuYYvbwU5sQFGY=;
	h=To:Subject:From:Message-Id:Date; b=OlEEyYHJaEV4kihHOettVFcucY3UUvYROHJPIaghsO6nTpBIX3Nmpxj2RCrcT/4aFsLNnjn9CblAqR7L1Ae4NC29BB/5T0PrGprmv5y1qjNT6I5p8wcPOsiFNHRq/z3pdkjo8xyLuMKcObDdPghVH7Kv1ICgUeIfLZIZOEI9ESI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A7LGpF8a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A7LGpF8a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 942C8C433C7
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 07:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707635896;
	bh=NbLPq69q0VXxPH2jWy5Hiu1F3cOMTmuYYvbwU5sQFGY=;
	h=To:Subject:From:Date:From;
	b=A7LGpF8a/I1Fn/e43VZggz9A/IdqAi3iQhYJUSsMez6alL7KvGe9emy8DJaWO2cQg
	 tdsrgzuufksm1GqW6uHCOZV2j7b+THQS0xdl7b7OhJG/t2jezJ1fX7u6xWfFCMsZCE
	 TNthaBIr7A4K3rO/RjCeePvzTnOb3awoiPdbxZScGwplY9VkMg5qNl6nK4L7J9OWgH
	 G1lSReRPTjpdHSBcti58t7yB2kqoksPjXCVQrVUWoTTt3cwNNsAGVNu+TnHPBmnVE/
	 vMvHJ3DEPX//YpZiQao6826KleoYqO8vyaqqRkjJcR+Hl3r9+FuDS18OXAeXRPFKQ1
	 4l0aOPGGrkbSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7320BC4829B
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 07:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170763589641.1350.6145788383171925692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fa0c23e59a3becf2b7e75ffbeda3a93e6f4dd7df208d426b292d1e0216f19c0
Date: Sun, 11 Feb 2024 07:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707635896
