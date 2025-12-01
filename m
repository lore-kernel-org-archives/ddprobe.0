Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B3CF21348
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 02:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764555774; cv=none; b=K3H2hVDAu78dMWEPAi4XmIriuEqpEkoxNZrafqdzlHx2/PpXyuLw1dgK0mvFPINQI4tY4E6kiJQcpkB43QfV47EGWKpqiuzcObq5uNp/qbSuqcvP5etLTCnl/ysypRpxkZknlug7CI21NQy+YHXov4RooXR6c5IfwrLdN78EufI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764555774; c=relaxed/simple;
	bh=otMBjNhae99RCAQv3ItqsRYj08I12wfAzPebdP64W/U=;
	h=To:Subject:From:Message-Id:Date; b=CtpLFi0q0FpEInMTdWzJvTqjIAIQ9SRD//CJsGOmdhR+poI9PZTWDFUAAri19ivSFtQ4YAiy+CSsivvjVrFSyjyA3KfCtLl0ba/gtNUN7BXxcu0tprfJyxVRPxe8beONzOVPmbAaUQvz3D13UeErCtZWYWRvvFYC9LE65MtlRtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N7sTlSk+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N7sTlSk+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EACC4CEFB
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 02:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764555773;
	bh=otMBjNhae99RCAQv3ItqsRYj08I12wfAzPebdP64W/U=;
	h=To:Subject:From:Date:From;
	b=N7sTlSk+bZ39kl4hJwjaO4LjZlxIoJUMw3/kJdKny8csrTL5bcODMvl/Ome3reRZU
	 TEs4/yUkDzzbZ1wTBsSLgf/acmGjBSbjZ0Z7qntT4uCv27g34MHDmYWrhTqmX4bpJD
	 zMmvXY2gNxRUqhZbvUxDytnUf/M/0VLtXQTQ1VBA5kb66+aN2niY1ncSWHjQUp3BTo
	 c9lHuKJhiyPH/E4rg+TaAu50Y7VPtNAxPmkhKvuM61WNvIE78c/QGKpF8FaN67834W
	 R/v0FX6dZV21/YjqgbiGQ7AXFV0yuguDAGRlK79aXAKl+n+uVJq1mO6nPBqKtWkkHY
	 tNDNTCUkDv8CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942AFCFD376
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 02:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176455577358.19847.12690090828459300381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 302d755ef7ee825ed7c667c2d7a746d605fb385e3d0e19e968aad672da445077
Date: Mon, 01 Dec 2025 02:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764555773
