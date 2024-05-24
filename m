Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64ACB29403
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 21:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716585803; cv=none; b=ZHfL/7o9cBCfSlHlYduWZEB2itgN53VcyL+BuHzi+0JrIAG+RZzlTRx6ShOmjvtTdPfE8PTPXqwhT44bFsyY5KH72cp6aDbnPWN/+pPTiQdpp538GpJu7KaqXabZ3ri5rg5XK74ALLLLgbjvg3IfivIs0EKdmmaZbtQ8uWG6h+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716585803; c=relaxed/simple;
	bh=twlEH4O7q9SCXDmfi1mxHxLWazGPdEHgZwj1CHLL7XE=;
	h=To:Subject:From:Message-Id:Date; b=kRqyx6AFfeXFx/koKyGsOAKYJMonJ1lVFkjMO+orKL6sWJ/O7/1kwv8jBVqeQf9BySqGxA2ID9gwrRYi8gs2LqelHyIvB+2KfdZuS/U/63bqWc5A3L/kDHTaxC/pm+GtNWiyNGuFdcrhnK5OAUWygt+LV8ooQdAH1AVlO0pqr00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=giDFVWWD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="giDFVWWD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAC5CC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 21:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716585802;
	bh=twlEH4O7q9SCXDmfi1mxHxLWazGPdEHgZwj1CHLL7XE=;
	h=To:Subject:From:Date:From;
	b=giDFVWWDAnqIy8iK13FqBIQVLzt9NP2a3Pb8qiASdRQjNM3yrsFqcnlrk1NdyS4XY
	 kECZtHoBBKk/pZMbqogmXw9mkxAMojDc1QuTygmUWJXdz57XfRRxDkKKT3Q/fFzeVb
	 gAeliennueSq+r5+H+HApwkTHM+LdPkmwZ7q9kcXSem+JTgoHGhc4Ge0z7Q6LjbEu/
	 vTd4wun0ZrdklR2uZyRRV+9myy3C4JL2RIrbaRS4RZITrv2cFVjSbZ0IByAbgreexk
	 fuA9nJV71ikwxk4yXPc2U642HBQUdE6XcmrQRL/w2y449du06xvPBjTE4HTq4ZJz3o
	 9AGMZsJntVqNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C38FDC25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 21:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171658580277.12945.15511590681690942210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0dc8fbde897101ebc90ef8a748333a0dc595a07ddf34a514051e8b669db64d5
Date: Fri, 24 May 2024 21:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716585802
