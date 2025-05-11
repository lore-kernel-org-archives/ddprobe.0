Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE671C84A8
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746986994; cv=none; b=mDeKdPx9qcDGPjg5lA+kSZTrj26feJaryGhfHQkb0fqOKAiP4Y9fLTPbtgwmNi2Mr6X+hQe/UbL8pvQwNEm3bDRTlk8vjG5vCeDOZYu6rvGukTZpBlvbETmJ7yfajRcQIMHOwlQTytiAKVpG10nEpoFqIBSKGdK861J8lrWt7pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746986994; c=relaxed/simple;
	bh=75nI3VCKen78S3se8zb4nhU1kPNA/nINz25l64C3qyE=;
	h=To:Subject:From:Message-Id:Date; b=kDHWfr8rpjjAbBsmTM9CnTvmEeGSALFbQ5atmm125MaMrrnLSf9LNg3dXHhlwfU9n3byxqqujGRCge7ddO8y3WCec+NF5JNlYNvM9EgeU7+SSKd7gLnF8bb76+smjPUBoyhzOfeqeB7+0KBISZKGJI+Jb99S1w8IjWwyx0m5ltA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BW5vL248; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BW5vL248"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53E2C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746986993;
	bh=75nI3VCKen78S3se8zb4nhU1kPNA/nINz25l64C3qyE=;
	h=To:Subject:From:Date:From;
	b=BW5vL248uvmvMrex/NSyzm8eWkrbTrpCjp4ajWLMtUMgy0iReEsU9y5scLFoEF/Vw
	 OoAOi37gPlE8LuJG1aIYGJCUkDnPrT0+/9X0QzUH5QGPeqWgRz0GjdLJ/fZiV3q3Qx
	 mBF5jh3lbPAU+c4kSjxQC0h+3eC02UcZh/NFHudw/HgcTnBRFWCKj+4Jbb3LQe0fwL
	 Ts2FAXYrG/j3/ApYSAr8lz3IS9VlFdIR8VK48EHvICj5jZTFYc2iIXxqQRe66+ISe/
	 NzOEUD15a4O79KWePYxSAD3HAK8Q1jYhs7nywLwwD4S8XidqJZpvoQsP3nm/1XRuc7
	 4X+x3/ChC4YtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95609C3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174698699357.10613.1642707937033349844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43b55ebbd9fa28000e57146ae1b1d948759142ff4427b49086b3224fff7e09d6
Date: Sun, 11 May 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746986993
