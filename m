Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43CE2F9C0
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 00:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783555714; cv=none; b=QLYZhY0Jkc5xqfEa+wZ6emAqhOSWUWBmQgsLXWxdDpbYApJ6rtokr8P/EEVGGIdiqpkKN+etlEV4wGf2Axkb0rKiOHMc2INkyU3CqelQ4DrxahHNDC2r20LAE12W6J7y/0RGE16EZBaX9UjRoNyFmDAEQ/5lm/DU4Ts4FcKDQQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783555714; c=relaxed/simple;
	bh=2pr/WzPQqM3CxDovT4jK2KZuL1A+/EpDHFR5a/vZ0KQ=;
	h=To:Subject:From:Message-Id:Date; b=YPydpmzH0EEjrQV5bfYE+bTaXq05wNrL8k5y+uGjE3sf/N79mHrDf+MPsLmEVHmxGN/s7QLChdybmWRxcIcBstRGFqhyIR8UPyVVTvqErDzSaeLYltArxHA9fbocjRH2E8qKejw10tf9JudhRPlXjDWSbgjXI1WcaXoAaoqmyHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ID37A7F3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ID37A7F3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0543C2BCB3
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 00:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783555713;
	bh=2pr/WzPQqM3CxDovT4jK2KZuL1A+/EpDHFR5a/vZ0KQ=;
	h=To:Subject:From:Date:From;
	b=ID37A7F3wbkuoMOYhO6iaXwNv8AgrlwAbcD9N0YXfk6IMX8rBGioxuU71Bp6CNOxG
	 W31J5N2ORysHxUKjxs4MynhpVy9k5adBXp6d/MgvsqbkRW9NTB7SK78qa2l7ic0AYG
	 aLPInJJS038Dq2SNdfMUU68zFVaMF5mT469cJ56u7lctHJX4Kl/3GWeBPV6/pS3wyw
	 6MYhot7WB1yMrBpuCQacz4gW9Lm+vNW5IqgWNaabwDP1iFREa9deT6AJWUZCWLKXiS
	 EBoQ7jhvdq53ApXJ5LqjL9KEwsK5fhRs4lp6nCi3g+Cjny72X5SKnZTq+LkDfu3+wN
	 WCMHBbokAr/zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF8FC43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 00:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178355571368.26869.16451694086422130604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9576caaed866a09979109b1df7ff2b03bbf6203b5e2e2abdd12ab71622686ea6
Date: Thu, 09 Jul 2026 00:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783555713
