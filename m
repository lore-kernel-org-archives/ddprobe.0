Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 444D2145B16
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760330394; cv=none; b=foAxQ4j+tTvpn9jIXX19NMzSjN4MrL1CmjswLKggk8GaS5tEBFzyOg9lQqCrKfJ+cuZXRtbKl4Ak5xVxDYhSFKLxnNQTg7/U8QM43b+I6J9rQ2shW+lxn2V7DiKa/kb4rRCG7Agw5zZt2DmKBap9uODGOlQNnDe9AQLa50OqoY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760330394; c=relaxed/simple;
	bh=t7VnIMmCorJ8i6Yz4XgjSQpRT/e19S39g5hUD4UQtfA=;
	h=To:Subject:From:Message-Id:Date; b=WrtNrk53HhytXTzI9L7tHoOy3bdOogQUnJCO4raIYqCObIgrzIFJ3j5vaOof4W8ygaGDhHzzyAo1eLWjMetPfQxaAJip6TxAvvDkmmSfgt5CDIDpHn4l1XTN3Z1rkc8DcLbnsjRrfUCDDjo8KmvHvisaFV2RiXKgRKnIf3cl+/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qBswNrDY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qBswNrDY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89BFC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760330393;
	bh=t7VnIMmCorJ8i6Yz4XgjSQpRT/e19S39g5hUD4UQtfA=;
	h=To:Subject:From:Date:From;
	b=qBswNrDYdhu90PL4q8AZz+OcwOrFfLxEGcGZa9g4CvbS4CSzGitVkEH87/o6niSv/
	 +mgGgh4rvEU+YnbDD/8Hk7tBHUQJAkoMFyByTwU6ra32Uii3HDvlAEyEL2vA4FxBF+
	 IdrtSV4cmIqDTM+mB9PLyDO/LQL7FsugoGc2AmsZWurTQ3VShyzt2ZaSRRaANwEqhL
	 xciuwCmoGORzmX4gSPi2/LOLDefznAzvHV6/h+ny61cAF7mnBv28KDD+GYe/H1/nYO
	 lXYEkcLoIJoSf3UWnYqc4gxhiHU3NSrHd9e1RJr0UpOT1TfQEXNMr8v5PnJa5vGj+Y
	 pWE9M8fbEXoOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E94CCD185
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176033039358.12196.10439466438289371116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2a5b9a4182f5895afb015ac0932de47ed475c8ebe9e899e33c3a6d8a7c80c29
Date: Mon, 13 Oct 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760330393
