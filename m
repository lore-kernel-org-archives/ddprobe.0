Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F94F6EB5D
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 15:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714318343; cv=none; b=iCrwozuNXRMyoQXjkIZpf+ZvYkOFwwZx0Jh/QmB3S0vEcJi/06WVPrn9oURTCMEe8jPMtR44c+8qDLAMFVwKkbui8cX83okqAEQBio8KbUzjn/xUlF/fj9UA8W/VpCS27V0f9MVu9kRaXu2cEUJVMSj/howYLU2MjID37DELJwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714318343; c=relaxed/simple;
	bh=AdLXbBmefEcAG/ikGvBMRE+MLCHJTUNpjdOz88Rn8rs=;
	h=To:Subject:From:Message-Id:Date; b=TzZocSbux92whc6KW6zmcXArbTYN9kuexl0dfehyvn+D+BYtOz3SV8POmdKSJEgi8vRW8dARYxeKlRSssdNAvi9G82vEv95i1ZaNpGdjweMkEHU15+yE5iYyj4Q5iHF9w9bqf1iGOcPdaeG+h8KH77b7gea7Iwp4Wb6G44WuSt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fzrqeC1c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fzrqeC1c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E652AC113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 15:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714318342;
	bh=AdLXbBmefEcAG/ikGvBMRE+MLCHJTUNpjdOz88Rn8rs=;
	h=To:Subject:From:Date:From;
	b=fzrqeC1c631BUYLluRxStosYtcktjRak8DlEv3Og8cAXM9pVirp1A+rON76fd+j15
	 Ajo+/3pebI3KddSiVIwrnFed6VRDdGJOFDLq/vnfFdg/tfmxJNUhxdj0korkUDVcuk
	 W/QtiQOeCGyO2k0LStOCQ53Ao8Tub7U5IzJruAtZlGkbaHCFk9P3qaWYgCzKZkecJ9
	 Oeh2TKmoSYbCOV6SwhWcoMMi5Rv/14j54GT/Y/eVggPC/vl0mpVmLIwGJIWnmnA8kD
	 PdvYh+ykif2A1hmU6grzUhxzABOnq1ZyvHMH6MlnEx6T2619VQTLICQtdP4NA9X686
	 xV7INj6K396Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3B79C4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 15:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171431834282.32439.3684794150086310509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87be17ca79882a9f3d5503e8d79daf7789332c2f9eeca70a52ab579a6da4a810
Date: Sun, 28 Apr 2024 15:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714318342
