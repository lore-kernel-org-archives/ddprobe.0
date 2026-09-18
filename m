Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61E6F357D0F
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789708834; cv=none; b=EZt20AEGiba+wUiCvBLHgENGjUcjI44Xoe579uk2KNuQ025R9pSziSoygHltN8/cSVnKqKefYP7mZ2r0viOGCf/A3oVPjXkEbniHHnZRm5xiJD6ih5NUq+l2FlJBKvAyO7m7nFSoBOHDruF0bd3Jv1B7wmepsgR82wBhsLxw0V0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789708834; c=relaxed/simple;
	bh=VppIUVXFt+o5g5a1iEQn8cfA07MH0m9ZwQLgI80ebZ0=;
	h=To:Subject:From:Message-Id:Date; b=M8WwCHSMYXxuOoN5JgAJpYrc8d4seTE+PYLK2ShuxkLwIykBJoNRcHz6s2OFJOrsY49bXC/qjzUQ7RvT4AuQiNUykDtFKNOUjlS2+abLBEz+3CAK4asNUhxoJ9Uesg+jpQXhehWmI8v1hu4niIf5LXeM7YB24zPVMf0Zc/gJDAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GldbW4Zx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GldbW4Zx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6F99C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789708833;
	bh=VppIUVXFt+o5g5a1iEQn8cfA07MH0m9ZwQLgI80ebZ0=;
	h=To:Subject:From:Date:From;
	b=GldbW4ZxA5H60JOGJuLO3WuFc/OIrihtUGdrJJJt1ur84hMzni7CjHpu74BqhmjM6
	 lAItquY/Ou0Wl5D/3V7ucpb2XyFkg6Y/ftP8yuPpjbsF4yHxyU5J+DGIeK0Gv5flNA
	 fDqz0fhuxlCg0y2SoXDppqQghl6q9FBFlXXM7/eXcUSUfU3iJg4SuCuyqvy2G4dj9u
	 rNwX3yYkvTM6zvXbFe6X5Rg3bp76TZ0titBf2Af8zvHVmhhMpxyn6XdMs1UPFEkGLA
	 kDv5UcwefVQt9TvcgcSI6NDoxk+J84Pw6FbRicoiMOmyLGpHkoKlwLGBGiN6gi/7dG
	 tv/btDOD4ULgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B000BC88E75
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178970883370.1739.15560393056908673782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85dec1d19a69086f242f83f12e867d33919657b8a2af2b517d8481cec0336437
Date: Fri, 18 Sep 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789708833
