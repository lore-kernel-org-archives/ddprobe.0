Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7331C3F9FC
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 05:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716875063; cv=none; b=qBMJupcoRMfKJw/+zzCTBTdZmD7NUV7zjduOFeIOr9YK2auRu0UL0koj1hF0IreSC/w13cfAsQGlSHhbUtB681QVamIycGQ7vM2CSRlNizMPoDehkfOJtUUCYOU+WaF9F4rGOK7Tl57H1ulCrub8EBeeiAwa/A1BAmGl3ndVkrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716875063; c=relaxed/simple;
	bh=YiAc7WFnFhu+wLlAEgZuMjOSUtANsivGrf6Ntj1J5sA=;
	h=To:Subject:From:Message-Id:Date; b=XXnCnHFKjA1cLznZFzAuYMWD2Nxjk4AJ81EFZCdBQeICck7NIIDgfPII56ZDIkV/iK421BJXCelWQLX8k6gag1EOS89zCvrEi3xrgItAVDjuwyMp2iQRdEcdExWtqVt5PSUbsfxRllbVT9mRquTSkv0FoDSgYnSLWveEHLkOqb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YV66+FAj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YV66+FAj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFF16C3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 05:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716875062;
	bh=YiAc7WFnFhu+wLlAEgZuMjOSUtANsivGrf6Ntj1J5sA=;
	h=To:Subject:From:Date:From;
	b=YV66+FAjRfvEHEfj8R8Zg1i4lDLGpgDOhN7m3QDhxHld6UP8Z8ecbZsKTU/vTW3kE
	 NHo2Odtq/76UDIBX1yzQjt9v736817yZe3OYouxKCXtqZxKjYC5KC/RWjno6tKZZ2O
	 jXAnpGyxiBsibPf5v8XLNNslOuUzSD3VXVFT0DP1uDPWO6+mDz4tuHjZLpRKgZjDMs
	 fdDTtVODLIx0oP5HaXzWxOW9AZokHQNCv6ZzHB9ClAWOxphc4x51B4sraByigA6vke
	 LhxPIH0ygkuduhbpVAv3gFN8PFnXoQnZJPKDr33sK+MwZZj5V9kMsRaVL2x64m7GuS
	 jSOfMvtzGYhuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8057C25B7A
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 05:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171687506280.11285.13692506267883474719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70c2517f59f482317301f5e8a8e897685f75393cc8840b8808b6448f19d69863
Date: Tue, 28 May 2024 05:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716875062
