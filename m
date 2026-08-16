Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ACE5352009
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786879234; cv=none; b=uBw3w+RLYqyreOkcmbqP4i47ZyTPosEGAtnKmmDwcSs829hxhNUKDoi74KHEgBZUKsElC8csuh0jckpLyOezVSCgR42vfkdfgEyE0ug8kIVPA5A8VGiSC3eSzB1/dmjA0x8IytH7088mWvESwWx1km/riRFgdW3kLZcshZr0F0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786879234; c=relaxed/simple;
	bh=mu3ArDLEtwDOlfqkaT4YYQXnOZZLYNl0PTbcCw8JGJQ=;
	h=To:Subject:From:Message-Id:Date; b=OtL9fvDYxpOap+MYv47yD6dLR9C4AikP6/bleaa+jyAsOBpgxtXHP0xt0vBXawuAmDUBE73jPyIMozYs9tXMefbXwpqZ4fkz1BcF+BQ/NG2GRpFr0+T7YgPqeHTjiiCTUkymKuzCwbsgK2P3yYpFOKUL6Rts+LwfS9nKE7OSHxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iPw7Jrkl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iPw7Jrkl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDAC3C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786879233;
	bh=mu3ArDLEtwDOlfqkaT4YYQXnOZZLYNl0PTbcCw8JGJQ=;
	h=To:Subject:From:Date:From;
	b=iPw7Jrkll+sDM48y4zEiavf8EOPuTWPlgztHrokKaQw357Pml/epT/LA/NiHgWYqh
	 K7na68vEk7CvY0SOTA9IIZDA1a270TH+Rs1VvSTPro5UXjFxvUsjxwIQdQ9SjXNXrq
	 tzt3qi0y6Bb4wXDAsIGX6qogYBa6XsfojLIJ6Qjet0uKvx43Dyeb9/0T6gLGulZoBS
	 ARKxjmwsKDfpt13H1xpW5lOC3K8eb3XcRYC1IwVPID6uVTe7jBu7mkYBhvhY2mboiH
	 yKYjgqQi1ChSYM1nzgb6tdNuLa9o6T7I/38roCairfNI2GwRiSY7+0wzh40VEqeUBV
	 ylFI6TRL44HWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F42C5DF66
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178687923368.6237.18002678761493925872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d0d582b8b10e152aad8558e69cc79450000e262c4a35cb31a17ab81e59735b5
Date: Sun, 16 Aug 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786879233
