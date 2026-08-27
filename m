Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 747073E3D90
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787819434; cv=none; b=kqP3CSH9AK/1KUnVEszlGapKgpLJ351M4arqwV6OXwGyK0/HFGnCO1lwSYJ+fgJoJMg7G/gIxBPbUI13/2JO/prjvNCMN0lXqbNv4N9zIyURPIa6wVMZvtaZXvlO9+8qc5H1n7tN9uG0+69siNPXQvvF8BDemfcXfm1xSMB4i6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787819434; c=relaxed/simple;
	bh=p+7xKCuPyBB4hoThxZ4/NthaOqWi8w5B1J+wLASrbQU=;
	h=To:Subject:From:Message-Id:Date; b=T1TpQbR51ei443InTeNV+nzc20g+Xk1ICVv0Y0/3ttgWrepbsVgYuTL1Ntn6Yh6DGcrAPQxIXEpB7f/tRPFOFlrDCw1xkeyQH210CiSVnVJHYvAUtJqJnF6Nnu2eRYjxx98yHCBlQW4REMd7mkNdv0/9CIa1SPq/q/GQ/DbPWNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N7hup1LV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N7hup1LV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA2F1C19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787819433;
	bh=p+7xKCuPyBB4hoThxZ4/NthaOqWi8w5B1J+wLASrbQU=;
	h=To:Subject:From:Date:From;
	b=N7hup1LVIsiCwuvRtzJ2n7xBZ1BmlbZgE2pPBArFOnKZDsJnhKdQhoHCSv4y5vcQA
	 5vqnhhIRoCj2hI4tgvFwvafJSurUIhNgFqz0mnANs7fU9SaAeqN5BysOXEPgsNCva8
	 DPCghzrChIGEYwJdMBwp5Zc9C4cNnIN9OCLoB8ITFfS8s51zi+Qgide1N4s5HnLCdv
	 sLsuBu0h0L3dFcLjXRIsaReLPgdYsJY7/I+8gQ+hYobPWpcpQIcoN3owEMcHKQPMat
	 wb09JPCO6QOA3mTjlr8NZzQWAYu1xTeuYKMcu1f6Ogn8y61fzWn3ozjApvu6F+afqY
	 B4d9q4TdI0hRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0C4C61DC2
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178781943368.11113.12500144963804661578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be37f83fe11c2a0471b027c6193a338e2bbde44d839f566020b1217ed9fe539b
Date: Thu, 27 Aug 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787819433
