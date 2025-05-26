Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C1414830A
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748281195; cv=none; b=LCK778yv4wFGZxrogdKF7nzyTjE/jw7QKuKxUkSNLoa05VGRyiqhJMEZszAv6IRmsfywkgsYNAlewrA2POx1yAizhLLkz9di8H5kumQme6CEKh7LFu5/S+BE3oV8fEUjQ9edMxlOO/+MHKJ9RSY44/gPofj9D+Zxds+Ho05C410=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748281195; c=relaxed/simple;
	bh=wJC/Qb2/Kzd6+FxXREB0pIye/CwSRRwbkF8blBSCxns=;
	h=To:Subject:From:Message-Id:Date; b=t//u7bR/aYEWLtdhFZR6zZH9MgSa63MW0fXB897J1X819QEhBlKqcvYJtFzjXGkLFSRObnNjIeirn2vl/QLSaeAQCrS9sbFSqRBjMQYtMzSMAPwLOmLG08hVrzJcpde0yTAtKYUzuMs2g8zxiycaTxfQ/rfnKFEvsdToCdoJUog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o6I2FY6C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o6I2FY6C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2173C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748281193;
	bh=wJC/Qb2/Kzd6+FxXREB0pIye/CwSRRwbkF8blBSCxns=;
	h=To:Subject:From:Date:From;
	b=o6I2FY6Cj0D7wUs8/uPzXtJian8s3M1zaI6ZxMYe9SftiIEv67PXQL/To2UxFHMak
	 AG2MuAa09C3SY5fNxltH/DKTl369PQccXk/6zuAFFarWiEho+hILbmY2dKS2zBD3QU
	 6d+Z0cEhCADWAIoCcUir3olIMIh9wwBfwpwJx4X0P3W6XjIYo9dKJ66oy8dY5j8Rij
	 xY60J0aORFVDWD8zLXw+gJ46pSdXRflAwS3qyro81dZkcEUM3yiB/Nyiw4uiKGIO+w
	 PeNxUCraopqc30JwfbmLCbFle1P6CjhQoh1/BXXWY2QdcyzZpCp/VhagTLkf66CB4O
	 LgYz5e6BtUw0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F78CC54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174828119357.17638.14595741571649651251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c06ad98a7dc5d62a991b5dca9a3f29794f0c1fef2307a5bc974bb2c0a505ce7
Date: Mon, 26 May 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748281193
