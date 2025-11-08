Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 182112253FC
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762633794; cv=none; b=qc2c5DAp3Fti9bedSx3ZCuH+uSC6XhQtXUwzcp15Ryh0guHKvSVHFN9KnGOoIw72yrYhzpIPLYJ//9nzCYHbKylby+USziBGu4WQ+UrNdio+altYAFnwW9bOUOxo8VOH2auqDaT92jToy27Ukn7ldcbJW/Tvw2njustCzWutpEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762633794; c=relaxed/simple;
	bh=ylxJHa1pNdvVhmHYUVDQPfzyhJEafa6yoq+ma7IYQyA=;
	h=To:Subject:From:Message-Id:Date; b=uH93RJDgsW/snPBKL4KuzXH4R4X8ezdRPf9Awlm2ozw9MhJvWfrTPffwE0C3CMqb+9E64dKM8zcefur9+iAAKmiv9mRy1ycpuxOl3RerphtIjb2CgmJ/xfANc4zLnatX0Q1xE6CzmDDOvU3uWvfI9LXPQkeB67D09S4UsY+PAHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sMZ3CVny; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sMZ3CVny"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02CFC19421
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762633793;
	bh=ylxJHa1pNdvVhmHYUVDQPfzyhJEafa6yoq+ma7IYQyA=;
	h=To:Subject:From:Date:From;
	b=sMZ3CVnyyy9q1D8WGY9CA5N4LS2WzPB1MjvX2nsDhurN3+ktI0cdiL3i8RE3h3ZT/
	 QEx+8NMhqDs9ZruA+jDyXX0qZVQ+youlTyqk5hYg3S/LWNR/qVD0vzpLdhRSEqCeKg
	 /1Aw9Mj9mqzyXiwCSDHgE5wFuskhQmdSjPjvwbHWk2QKvmKFKFbNYWhoFB0mSaAGly
	 U9jV3XObB7ItX7VgG0cU3+QS08HqI4qO9uKy38WO05AbazL2DL1LYujksNWi/Jx9Jh
	 vK2ZyHAsOm62TA5Jd4/TQviFhxNQ/t4PQT4Exys7JPzAxi1I4AkM8Zti5Fs+nKHWBt
	 6SBCk4QRRNmSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95200CCFA13
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176263379357.10175.18247080164963091397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36ca884a90176f588c68de73a0dc14c0f223c32d60a34026396f6af68fd34fbd
Date: Sat, 08 Nov 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762633793
