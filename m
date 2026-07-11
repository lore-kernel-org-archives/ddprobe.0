Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 290ED3BADB5
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 10:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783766314; cv=none; b=Hq9xxYsSlWJcJYY//AiQVoRNI8bLKpdSG4wHIjd/TGPdshf9+hIubnVE2QAZjnydxzWV02XnwboZQmmgHlJBlvczi9aP8O7LH8E2liZT1bJxzSBmjs0aRIFJxCrvtIotVD3gYtMTguVVJzaRuYleAB/6rsGPUWuCAtF5KAvM6H0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783766314; c=relaxed/simple;
	bh=mvRwD2KClNz4kxsyOiwui4zylS4mTABFxO6nr1lKiAA=;
	h=To:Subject:From:Message-Id:Date; b=ay/i3aCYQAbwYERe9vd+ViZ70uJF/FLWxDLLNkv3c+Fgq2huiuG9B98vROYpN0AYa/N7Ho0M2SZJd5F8uABSJRl0RYCXR2JOhnXgBqmgEL4BBlPVLyJPZTOKTniDmcC77AzEf/329/fKNWmRReD2urskzEMAStf8Ej4y7HccI3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KjYOQZw1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KjYOQZw1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C96E2C2BCC6
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 10:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783766313;
	bh=mvRwD2KClNz4kxsyOiwui4zylS4mTABFxO6nr1lKiAA=;
	h=To:Subject:From:Date:From;
	b=KjYOQZw1A7KtcWXj8Bj07wPr3FP/DVhgDxkQuX1nLm84qT2v3B0nGZ9IvRHszeeqm
	 WkmGAvsQuOdITIwbROpoRwZ0ko4f9KfRSX2eBUObrKLvDCETQuC8xNpUqzNXNdJnPH
	 9bQPmjb+E/NgGgKygKqSFjmJCdeGrGgGbpQmXn4a6CaPbew0p2dfTsq/AdRdUYbkZQ
	 SE/0DHg8aGTbkYBvmTjqq4FuUR5PomIoYZaRvQCkYLI4lc9csSFbh41SdBxBn5eT5O
	 Bzh6t+vM8Wnwr+C4eAFser/Xv+fDFNwQHzZPEZUgW7iTfGGrkaYHgMX9f0vbIejA17
	 n9+cC7ny6hAPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8473C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 10:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178376631368.2288.1691188277597149697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4fd33af52d2af2d3d99b241a589e5ea04f5436168d3b87b9939d98622b12b3d
Date: Sat, 11 Jul 2026 10:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783766313
