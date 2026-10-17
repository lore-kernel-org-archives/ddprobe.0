Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DA4448164A
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792231234; cv=none; b=bSV1mwZOKA0oqy2eW074mYgfzrsux7YKcJwMk4u4SHKloHFha0fx51VBg55hbWS4DocjccioFKNiPMqnnG4qsvhIXBnuea6pjdf6Z2jxfjlcaErsNnd4Mua3PFdAq65uw8hVDOaQNl3SW5RPo3PLvp+9GM6Vz1LcKJL+WnHcpmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792231234; c=relaxed/simple;
	bh=EcQypCCQgjqfrElF7++5asduVC4u0Lb66yLJMIaP+Y0=;
	h=To:Subject:From:Message-Id:Date; b=jZX9C5eU7fb4UR7c/7ptBAyLfDVC/D5rebr2gThCRW8ny7NxPCK53b/PSVRih0PvXv96P+fuDaLp1ckMDLjtzB8Trpzuyz9qVCE08Sfynp0hVZ1uCW55bJP3J4NDqUXzbu3SncvL8euwhhn8Wi9qzg9GRI7CQWcF2xC1MC+cy6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QP5enAIr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QP5enAIr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2313C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792231233;
	bh=EcQypCCQgjqfrElF7++5asduVC4u0Lb66yLJMIaP+Y0=;
	h=To:Subject:From:Date:From;
	b=QP5enAIr+9B6pzh/xnG1ivo2cPb+DjNIy+dd5QOOV3Y2UaQxhu/+YIhYmAvCfMwEC
	 XRNOPhTtkDCt6UVS0hKX6T0ezSZf2UmdNL+Zk+cPgnkInVVZLj4nFTi02Wd5ajx7zm
	 cEhUls0B/vKlDcGAAc4CAxgJjMxqMqKdtEtKt9DElWnKI4hkJWUzaBg1GiqGsq7v4W
	 ZyJLSxUrSo8YXvPefrQE+Za7mX13vwJrhc1akZI3s3UvWrc++Jact0H5GnjjUk7kjq
	 RuLq0rJMPbZUCxXnjhj488uUGb7P4Pe87uZS5j0zRqmZLED8gkEOTjW/wLmnaDcBki
	 BThi4t/8hT3WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C36CCF2C1
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179223123368.11722.6936223717477626306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 125a4b803469a72ef20b7d4edf8a89845298c7026d4613a325d90b1c7ea24c9d
Date: Sat, 17 Oct 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792231233
