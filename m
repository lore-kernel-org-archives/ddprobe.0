Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F2613DDAE
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 01:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770341034; cv=none; b=jHe4CHfLZ1jxHjvR68LJGMdIRcUWls0YoUN02k4NeNtXuxRyWpXgXmRqEtv2ZJVNQFS2wq9GGSkZYmj9RfQ6h+JTj/nDzOOjl8+3lDB0Q2K3Vz3qeb0eW/dz0EdFpOmmA7SFY9n9kg3SYmRK/vc+vpiDLzc7Zl3LeWyO95aEIaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770341034; c=relaxed/simple;
	bh=FKOE64NJMOf0Qvel+N72gVdD8Cza2n1DQIRqnS72atU=;
	h=To:Subject:From:Message-Id:Date; b=m6Dnll5huo9r6R6afdZDB7z36n8vMYYnVyLtTfwkte1wPcV/vVugIfLhis7DIgnEL++EgrSR+ATb22V+8mxhJov3FOH4z+ivcsK9DZ+HlrbRIAmLHvNKB8nScF4z3Bty5eymzF4gB2S5IiOgnmPuEazLHfdAkJ0XCbhKzHPcd4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mMAHFER9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mMAHFER9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE5EC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 01:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770341033;
	bh=FKOE64NJMOf0Qvel+N72gVdD8Cza2n1DQIRqnS72atU=;
	h=To:Subject:From:Date:From;
	b=mMAHFER9XCdS7ic+wqDAjpchCInjZ+VgakycSC5GFm5zzb+TlnFVpuQvmXV1LL1bM
	 lHkFkV2IBWIwVBxsKY1YWOF8mTkeHvAulz66W4T1aGSlgLi/mHW8ftlCDM0XzMjdB0
	 ddG8JnvtBBx3dR2EeKkuzKnjEH2S+zRC7WTZpTKtX+QyvTiM2/kI+Qy2Gd5pg3b6BL
	 QLTQ08iL4veN+S9rHMNpc4Ks6mXLJZ+/7hFK9/mWu0s3vM2oBJXk/hpvR/PK/WW2jg
	 rmY1ercyTQAtjnHVqbrrMWUDEcqzMB0D7OLoj+pQ8wkHpDjk793GNqAm0XymxzTZKs
	 dos2BZOG4hJ4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C23ECD9B5
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 01:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177034103360.31672.15044457362273843523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71bbcd91a0e4e0912a8365efcd76d8592e8317865a619e05ec904f3903165713
Date: Fri, 06 Feb 2026 01:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770341033
