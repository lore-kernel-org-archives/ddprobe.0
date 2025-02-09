Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F9E2CA6F
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 18:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739126154; cv=none; b=TQskv2NEB1gTLXOp4ium73Qn6rab6WiTIThPFDtCdLVbGhs9Uq5wRJQbPnQE3Qi66m+rcQAScmlxL0P961ljAm/TN5HrNuBB/6dppY6M4JAKiQ1VKjQrvhAMo11iQ7T+njouXAB+4QvgsaaniJVC4VFMK0nuB45o2+BuEdqlZqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739126154; c=relaxed/simple;
	bh=PmsTaqpkcTOIjkGzcE9xMQN9BixZTlukNyNeUa/UQH0=;
	h=To:Subject:From:Message-Id:Date; b=cjhaknRV3B6Vhf+yhQO9ZsMfsK3eNXmgUhoAYXG/M34kSqMTbziziVgzMJzAHDc8+9k74igqESwTYiTq9EPW4OYJUxOScUTKPLO1Wqc1SFcc9pYMpu2hBKrnmiw+3FJ5UyFD8zXWv1bF2exgUhiVE5GHrHwOfjTJ+FBOBFh8sdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eAMopZ3Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eAMopZ3Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0B3DC4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739126153;
	bh=PmsTaqpkcTOIjkGzcE9xMQN9BixZTlukNyNeUa/UQH0=;
	h=To:Subject:From:Date:From;
	b=eAMopZ3QfDy9dXEjqI0g8zND11+ikWZAbzbjnzjQj4ejX2p5BpJC2fuDeWd+9EyTC
	 jRRtcgaFa983tBrnyGj1dM/CYnhAJVOmuHI+DP1e3D6baX/GjP4+gh4cWcxbVTEPOH
	 50Es74FDekwXp9wK1DCHgYd7gtyNrZeY6fcSEoFu421Etp978MpeiYmHK41hN8PFn+
	 pSBIA6Tzqc0VmH1uDwHPj71JSS0duB2i12Ty18GelZ5ctlYqtkB9FPjPqXlNYWAbiR
	 62XRECEGHaQ8K8SaaQjUKOWlrrVDwtfMd6t0dEeGyE1YeYsSXGFH+uS6qpv+YY+vLM
	 yG0uFgtl21WSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC4B4C0219B
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173912615369.1095.16690694904865411983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5105b33aaf598362402c89815fcff1ca9c0aaca5b5422f40a4d52dda082831d3
Date: Sun, 09 Feb 2025 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739126153
