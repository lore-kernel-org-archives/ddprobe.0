Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2A214A0B5
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759807194; cv=none; b=bKsXF8y2Pba/P3OWBuejH66WiY71QAjI0tk9ObLApBUSe2W02u1PjRDr4DdXu7/tYxyVIqo5Okh1l6vuMCWNuuubdLtubhBr4QLOlrzKZfgno431eQXUYXVJ/5ZWDsCwUb2u7bbmMHSDxv7QhgJP3Qezigs34JVbDx6kTTL2oBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759807194; c=relaxed/simple;
	bh=lcjlnwaq9qoaxqSg7048V2eRB3+fpTTpcV+krY2CHgY=;
	h=To:Subject:From:Message-Id:Date; b=XOBYLPixxHBxEcTOeeK0mfaa4KQc3gFsJ+7Iw4yX4g3mhgFfEUENHa6XUcJY0Ea0n2DrEv2tdNpDvc7OPftdFM1bGYU/Uz2osMAP5eN52vd97xZOnZI9AbVMGnPwcQsjy2j8ZL1/n5uob9yAFnRWCmGK6ex9YBTrbjR0WwdzyMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VPCZbfn9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VPCZbfn9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70AEC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759807193;
	bh=lcjlnwaq9qoaxqSg7048V2eRB3+fpTTpcV+krY2CHgY=;
	h=To:Subject:From:Date:From;
	b=VPCZbfn9jFlAZ2O9/FSjRZXvoYcsmQNVxSbq1Wa9PbiyAk+M/MT120NPY6aalcwNs
	 5agl0f4LqbwAAO5uHfFdqwBZEeFGF+g8IKnGwY+mXp8aZ3TWtPuFSac0Zun9tSuokv
	 ak93eIx8I7R3URHv2MkfaMSdKM448qpSzOQyM6ZTaxf3bz5O8XAMHbe3GB+xB9NRuf
	 WoTeFRhHplW0Fmhwc3WcyVbW3y/J5UVNsGy5kJS8NLM0uCvHQkNiU3kA1C7IEqbuS3
	 HFtKpyz4q/AcKpcOnx1kTh30MdLsU7rfuk04Z21KekA6QUHBItaKekvCov1x6gychb
	 CyTDmRaQTlQpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9527CCAC5B8
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175980719357.11246.6271432450793689490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3aa66319659f0f1f270907275541a21eee4c27337f33e8e655066ba95dac086
Date: Tue, 07 Oct 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759807193
