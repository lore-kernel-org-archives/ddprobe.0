Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E31C211712
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725843954; cv=none; b=ujUXzccd92JINlmC8sMYEIeYs2Hih+QXkwhuq1Xoh5u2p4KK2LPGtIZatStEwJrHgmWltXCeQuve7CBRGCm4cIV7F0qlbpyI6ZzewWH5MeJeCj/4x8GY9NCWcNNoh4yCzTBAlMUsKoetGLYgz0J965lvZxIG8jP+r9FZDryqV3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725843954; c=relaxed/simple;
	bh=GD0pK92JXp7Bns0p2//XKf0Xn2wkjJpmV1SO7BBbVE4=;
	h=To:Subject:From:Message-Id:Date; b=fAAtgHxNV22OieurxjATjeJubUN2hIkKuLLXNbyVlitpRSdl38X6h25/Ob66qntrPhu+55cwDtoIfh/qthleLFqmWcMN5qREZN15lUO3FJFWRHWFDhtRkf45FgAhEdbUBVak9uSjkZMuTo5QE4OEZMG//p6351HoyN0GD2BysE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BjighGUV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BjighGUV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B72A9C4CEC3
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725843953;
	bh=GD0pK92JXp7Bns0p2//XKf0Xn2wkjJpmV1SO7BBbVE4=;
	h=To:Subject:From:Date:From;
	b=BjighGUVGIx2farD/tuYCZZAQZTK8S1pmuZ/thKO4XCvn8yr8f3P8ToGsarfFMCQn
	 y/gqezpeP7SmEtrpFL0FTO1JNRTsSlORjaVHzH9ldlTTaOLM9rNF0Ep5AZLr3PEb60
	 F2++4Bsv1f8UUuBCsptj2nxqR14GchgQ1mfI3ciDcwXr8WXf91g4F4zuBJFltI6+Nr
	 fIxdFArp/cZwbLeVcma9sGeQF4OoqOGXpPIx4CKWGIXgmgo5eNad+XQ4eNMeIGTGay
	 cbdT3vUDQLZR9oFbB/aVeDx64SopT0oQ8nipzkxhwUSx5V4Uab+N4Itn9hByam/ZEz
	 rXdSIgq6NgQyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A74A7ECE577
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172584395363.12913.5733950384140848354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59f4236d8251ec422d5b5061ef99fa38a419d8c194a73a30d1a2c67f2a726dcb
Date: Mon, 09 Sep 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725843953
