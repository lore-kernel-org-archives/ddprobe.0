Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248CE217704
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 18:23:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780165414; cv=none; b=ncCrhZ4+hARyyt9d1tyNoIr3sVfXmfBuKWiTrgkAe45YlG0/BrCWp6q356ofrdonb7MHVTTwMoVeyQx5bjyusR4JlFBSvXy+Y7siwoFYPxFzoZDzjjkJMtgT+VyhntsOlkUjeQiKLlmJmaYfHFaNYlXpJAxfvrlvbxaT3Jgsf1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780165414; c=relaxed/simple;
	bh=rxnXnDlnEXRP+oAnabNLOhtgLHKfuWlm0dwyasAsjSM=;
	h=To:Subject:From:Message-Id:Date; b=DPHSvxIzO36m/Za1NkUPuymy+p++0SVOk6C3Bt1f+BE9LgAGzF4K8ha4eWEaR9Yx62Cs/5k7AoQtSLW/v0SV7WM54FyvrcfLujU5NzBILccGocppQzsnmN9FB5rFi0AIRkB+SjObiXIkQA4FNvrW/G4y/4A0qBqsz3czoxncctk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KJ+tBl8O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KJ+tBl8O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC57C2BCC4
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 18:23:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780165413;
	bh=rxnXnDlnEXRP+oAnabNLOhtgLHKfuWlm0dwyasAsjSM=;
	h=To:Subject:From:Date:From;
	b=KJ+tBl8O3/MjthRRs3jBrAIXMNqQ35hQarLtYjO4ZBAfFh1bW4GAjGCQdwfKraRt2
	 EBZ/SvfAaHTpQfi4dIIu2sO2fFw3Adghpi2ofJXYPEoZ94c3415SUp4x04EQVVo7Tv
	 Tbe2HtspjZUjL2L0b1sU14AmhSKkOTR/26fCkl+zl7ILAJ9oQPSYPPm8gPCgU7BrHU
	 9Hcrw5+1pe8DisbIPDXK0Kxvfn79ntQYcz6jXwXxcXYHnbGAIHr03c9Ng8G00qIOfr
	 UwHE1556wCIaQRN3jZFis3x0RrtHjFHLDTmBc6vTTTG3IWpHsha6xq8r29lk+rc8UM
	 2Uj1U25y9sAJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3CC1CD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 18:23:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178016541371.14481.752119957617850576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 210b5a9a57594e23cff9b01d407dc8f1c6e2d4aa451f43da10c084dfa2e05ca1
Date: Sat, 30 May 2026 18:23:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780165413
