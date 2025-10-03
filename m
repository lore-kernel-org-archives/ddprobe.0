Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F4D418A6B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759484994; cv=none; b=VDzOezk7ZoOKgP3a0dr+cNCntHj8m5W6e+jaf2QgFF0bXvm5y5Bop1rdU/Q8hUSpaz2MD23ZoSs8+HuNMXUnlEW/J+5nrUCQc0Zz2RxvayQrBMuvS2Wdx0crd7nGVJrMV6CeL2VsU9nA+j0rxr8nJQY3q6zcJOjWRyvRzwUcEhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759484994; c=relaxed/simple;
	bh=0+kMHS45z3aBEt+ITDoTZlxNcjVwZYlT+FtvXkKc/rg=;
	h=To:Subject:From:Message-Id:Date; b=S9HnkytmZ6tCTPW7dAf5L3e0dITwRQaiCoVP+uFWDnTuYH+O43lEfUVK7i7749McyG5oiBYwLzYpHWUB4SswhTQmcfRtYIgSQNTdv/ifYPwXYR9ib+01JVwcrHrBQYFwnFod4GOEbBZjIDwOBVS8AG3daK4Mumn1zV6UJfeD0O4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R3dhfOW3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R3dhfOW3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0780C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759484993;
	bh=0+kMHS45z3aBEt+ITDoTZlxNcjVwZYlT+FtvXkKc/rg=;
	h=To:Subject:From:Date:From;
	b=R3dhfOW34pqNnckr/cqJhDsiJzYfvscSjJOoKEMKwu9HhPNJQ+ArIag/GU1Q6j7Ci
	 WDqdf590PdDPa2p9PSk855zZKtX/rjj3B42CUgoqFLa1F8ras74XKBw4pTreG6K3aQ
	 YyyfGtY1+vYhpwE6xC29OMsul+F7Sds5bwuF0E771gfdyTsC3aLnY/nhDtiAl8mME7
	 BtvBj5W0GHhO8bHAQoCn19MkOBNKcXCOnsMuF3vseNzXxzBB8NAsRu7WVBp+utkwGd
	 7TTSLAIAfXwC/HoXDLhYCPB6u0DuV+RVOjwVY/fUygALJOy7JJAK+FLRNRyAS6O1IA
	 WenVrhWkEh2Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E14BCAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175948499358.827.7071152256301801806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea6fd15a00dd310e9312feb248600e8d8f509cfd2ceeb615b490828ac206628e
Date: Fri, 03 Oct 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759484993
