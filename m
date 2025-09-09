Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23ED332BF24
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757426994; cv=none; b=ZyvSBIaBjVZZKp7VbaxbIoXiKlYE5lC3qDj4EnV97UcchfgqTMzosNmHdr1KvygJ7YBHexToAUcooykwoUgiMZ4FsOvZCIYIJGw/Lg5uDKd6AOkpwUY3XaQNyfwT4ERj2bj6UHToSAzZv4cvEE/WrGR+65dpfo5NdKEuKxRx5Tc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757426994; c=relaxed/simple;
	bh=Nhhm9bu0z0UYJQmqTSfasHQXppBJjhwRlRnrHanltS4=;
	h=To:Subject:From:Message-Id:Date; b=ntD2roCAbznhR3SH2cMzP2pXMtx+dnXrpNE/sDt99i/KEQ6+NV8Lf4CAqS3GjszNoJq+AmMh/mLBIgOeEVOvb8x7KErrZG5mi1LPEUUkZ2D7Ctl5mMddl8i/tv4HNGRHA2aSiFcR59+cbPI+w40D5rzZ8Du2+4zPKPfDE1iepHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dtcn/bXF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dtcn/bXF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5717C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757426993;
	bh=Nhhm9bu0z0UYJQmqTSfasHQXppBJjhwRlRnrHanltS4=;
	h=To:Subject:From:Date:From;
	b=dtcn/bXFu2zLIpQm5zk4LWZLy56O8S7ZXlcn8/9ljmM9w0bvqHyihBH1qtZUvavZ8
	 BH6yx2qsrLMG/KlLZ5mtubQ67EdE1dtn7nuth5KdWxIbV2sNkO73DLy4ThzzS6B0HL
	 pilfPxqgMTHcigafHMJdRRYDDViJlbfO7VGHu47zf+Y5WvamhkFUqz8zHWzTONQYDd
	 BZevApOVvzSfjwnZfKG06pELMSDxDYSXb75SJk4HDTIVZFf8dSpt/ge6wzLTEvdQqq
	 5BSDeK0K4wACVlAESvVi2zpvAcRWmKtoO4GaQeYZDJWiyZ/drmNmKhuHU77N5bSokN
	 mJof2tnTxwbgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2C26CA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175742699365.26367.12932872741880527125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5665e56dcda510191d3949aadc1bb86f5aaf050865813ac0248e0d623367452
Date: Tue, 09 Sep 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757426993
