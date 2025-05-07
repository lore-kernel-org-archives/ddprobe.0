Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BB3E28F94F
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746650995; cv=none; b=uZTdvjGH3GeKSDS5nQP8Fr287AKjkkuSXbSJbOu/2b4PsMSSa4BX4/VMfZIrqss52HkYuz/fOwolyoAeRWXe9kozTIBWzqC/qlMxuqUjzpvb+n790id4O7f+9gs0agEeI0/R86CvpatKOi9r+ZIPxFB7FjjtO2147kmbQ9QoiNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746650995; c=relaxed/simple;
	bh=iibFKK6GWTpQ/uTXbL16ATXXaL4NCyGVtP1rOryuOWw=;
	h=To:Subject:From:Message-Id:Date; b=ux42EI5eLyF1IJZxAXwxCnk/BPahWv8e8uE1dzIFpJYAftQLVXystloF/7Jfs/W6jRLEvG17xy1+KFFqLx3RbW6gAMdCVfX5e+m0KDaAXA0pVcXYnXZpczGAYT5K22qQqprzC84LyNn7x254erAc9423BG8eUo2jTyBAyIDN75I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KLxDA9K7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KLxDA9K7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDFEC4CEE8
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746650993;
	bh=iibFKK6GWTpQ/uTXbL16ATXXaL4NCyGVtP1rOryuOWw=;
	h=To:Subject:From:Date:From;
	b=KLxDA9K7Qf74XrjvT9NHMHS3E/ytVQvhm9iqhiPLnPyDPKMxb6q6+Dogb208MP66W
	 CU1n/1R6EpCP07Q2VoIBq+9AwmQocvjx9txDjybhpyVWcaPMBm14Nlpyoo9n+pyD0E
	 VYP8fPj7ncV2QHpj0DmQoEBz6nJeI23H9AR0rTWptpuR0AZsa6mPfWLN3c0T5N3VXn
	 e4miVSPAdva37qXdPQ+ymrQvcFb8xbxAV9lOStrkNE4kr/iQXOhjGw8964CZ1/z1ZQ
	 zJisayIn8SThrJTmCQVObYZu+TXQSgIwv2I1raCr8IW8rD4A98FRN1t6gnZlyTvmfr
	 UAFSYpZglLG6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF2AC3ABBF
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174665099358.8591.8075078585062203725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fae7b8111a73864c27b63059e980803239464788d1953bf2285c4cab3bc45e9
Date: Wed, 07 May 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746650993
