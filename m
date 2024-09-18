Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D33C44A1D
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726647953; cv=none; b=bAbduWrxUH/uWZ/tYdiTZiPbjIUEMd3I+kf4tocJeyG2WP37Q14GXo/b6sqtBuJ4/3t42PKUvgaX7MU3RK8FphM/VeXAJGRCO65Nq92JGpfnG0IiUoaPthMtPc66t+RZtJwUzHpsOhU8CmXjNDM/YuEXTkcz9JR2mqJkjN/pKy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726647953; c=relaxed/simple;
	bh=uUKIkW/Obc/x3/s2+hnH2vDbls2HNMn+KBd132Udexg=;
	h=To:Subject:From:Message-Id:Date; b=RlEiAC08c/839j5MoueaBGqoLK1ySYI8mBRAMhA1E3pM3xLEkbZ72wX4JACXC268BQ338z+hV2mhQ9NcxUYoE3JmgHw+BWtfCi0+lU+aMtvhgWj1eyo+3C/0lm1k17vNrH+WEcyfapqhIfR1zuB6qB7XgUkN5B5b7JFFmRgro6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uB21fs6z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uB21fs6z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0395C4CECE
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726647953;
	bh=uUKIkW/Obc/x3/s2+hnH2vDbls2HNMn+KBd132Udexg=;
	h=To:Subject:From:Date:From;
	b=uB21fs6z9EmrTLW+RrNHXjGd2o7+e8ZGO3Xer4oYUHVNN/Csl1rLRJBR14yAf2ZoO
	 uJBNSjswc1pvfly8xb6wS3kTtoQOMhpYsQTOneK+l+ApIjHB3oNviv7BDbKtLa7D9O
	 jFaVmoPPHyewFdT92r1LWQxMUthPSWFqXwG2gou+IwkSZWnl4x/pnMU0ijdYAEfx48
	 qHcyJjveXUoLSLUdXfgJRnEbgsw+UX+yn2w5KsSQ4ltf4hzyNvYaWWJNVJyLwpYoqs
	 x+l8yRvjtgCw7JXh5utJd2AIlGTmbIIB9AmgOvWJ0ml4OTuifPBTm6su3CsTHtEVxA
	 qk/CUMkHPHVIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A497CCD18B
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172664795361.12722.14358912149127533181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d85ae3621474e857f22cc89a7a9411d8d68afaadf5c3948fe87e82f0677eaf78
Date: Wed, 18 Sep 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726647953
