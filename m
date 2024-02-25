Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 162D810E4
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 00:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708821497; cv=none; b=CAeQ5UY0t6cVRP+V6cMuBhRjry64Xoom9+Yp0GBB/82Ky4Z2BWrBL87g4QRyT+fae2ap2jpZGyTqT6cQY5XBbzkJQP0HqFln918V9yyYRFpmPEac1qlLq1EwbCpfbcJO5+BWjESUYYtaDCtWMuTY5RClHiXHxdSSkXZg9y4tP8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708821497; c=relaxed/simple;
	bh=w1zfJmbfGYUuaVLM2m9J7Pq9Fv8p2SaVxIfEHlBPUjc=;
	h=To:Subject:From:Message-Id:Date; b=K2vLxQ7VGJpVi6nQh2tozFK6Xe/56Fa/YHTnrn8XIKc82rPrbUc7WlN9RtitlQgeeha+XT4tYRAZRm4zs/hEOQZEzIp9dpi8igGYmsn4TKGoq+HSnDb9PIMgIu9wjHk9RhX59Xkr35s6uBXcmkyBUJ/VVcpiuxp3CQb/F20r1e8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nE8tAicz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nE8tAicz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85E3FC433C7
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 00:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708821496;
	bh=w1zfJmbfGYUuaVLM2m9J7Pq9Fv8p2SaVxIfEHlBPUjc=;
	h=To:Subject:From:Date:From;
	b=nE8tAiczzCMTxKWEcH+/pAFkVSouAiXj4b3D87+aDoFOSwshbu7hGYRGcUMLHbo8X
	 gMbAVTkJxBPsBRIVA/P3snYtvw7MD0y5FjP5MfAw6EuM0d9FN+EZD8TMq30rCI0ftB
	 Y6imtSWYJfX171zAFbRmxLZ0Wg0RjbY6+Bf4hCFcjWEppWwQZ1x2s1qfFT6quOZ96P
	 JB83Ybstx8zhaRu4wDSJmjxzMdMCpScNaLZvanXxGDqUJDMZMR2jH+F6bhE8/O9uXm
	 K+AVV8wjxXWv1V4HCBRmR60WY+Qa8qgBYTP1aNKK01GrgZsXQgVyZtPBY6M5WcJpQT
	 fcnOZzGrOZyJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67C7FC48BF6
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 00:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170882149640.24758.2890981507913170115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f326ab95b8b2a25181987e779f3a0ec5c2a9fd0ae9a5aaee0a42b3d5c1ef3cb9
Date: Sun, 25 Feb 2024 00:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708821496
