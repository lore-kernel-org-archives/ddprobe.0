Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F54615E8B
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753493394; cv=none; b=g17bMwyJtAx7bMTEWzkD9FZcfFUSmQKa5KGHvWPyWR6fzj0my1zQZPuDknf1nIgkZKo2dnpcUFTFX8g4uOBMUU/5JlQo5l45T2sJyXhYK+HM/KVsO5epvWJVdG9L+OVg/CgkhbyVySlC5Z3JzhZlaywQUsqQVB7GXwXxLw0vuo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753493394; c=relaxed/simple;
	bh=4FdxBO6xoh847GKcizQ556zMYrHXMSjaV8EVh1pw1tY=;
	h=To:Subject:From:Message-Id:Date; b=sx9ROplv8qKq3VRWzoDSrYdHPzZZ5GrMHrJOWvbQAyBY+u2JT1a8jk7C69krV168DH1lN7YYxp2kW/R2yzmLDFUX95SKCk09WRAL43RqL+pKzEstwr9YNrkEHc2eaeUJYr/WXPbnIeUnTM2ZtBKFZ19QVMz9917joF5lkH64X9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z1JwmtlT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z1JwmtlT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABDE6C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753493393;
	bh=4FdxBO6xoh847GKcizQ556zMYrHXMSjaV8EVh1pw1tY=;
	h=To:Subject:From:Date:From;
	b=Z1JwmtlTv7QTCXk55cxlHqptfQVU38L16ET2k7D8kFSCPPxEDRS6c2h4lzm6BTzTM
	 1EToFcUvCZFjGASuwm79tRp7xeDdRl0qhPvmVIe3gBTCEGteqt++OWcoqQBjG4oBKW
	 4xwxvYQP50dXi0CXgaD9TgdoIS8kBESRZAtPD7EUCYE9C5rxjX4oVw0TTaqGwSUsFO
	 T9xAVI72+kyI3D0TT0M04E3tOqVYzAV39yuFSovfRPF3L5AJHg4Ct5fiKneGJjyL3+
	 XolUHBGSwrRfUPoaHv3Uz3mxlo1CpHBLRip8r2g5WbqDzngmXt/u1ice/jbnzmIoOC
	 eXVQnWMUbRTrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C48C87FCE
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175349339357.18005.10571141688750655852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5572b9ebf653c1fc6313836e32201573d64741633ccf773bb681c0fa4a964ad5
Date: Sat, 26 Jul 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753493393
