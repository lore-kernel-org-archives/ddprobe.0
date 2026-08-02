Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F6D230DEBA
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785666634; cv=none; b=rXjY9OUZe/RJi9N/km27hlsGBfLlwyUS1M6fWBtumIrqW6f+soqKh10DvwKaaq9+k/hA+CpvUkAV52Sm+eidBBwXYeEtSQNHnyUH0LA084YxnOBt3khP32cRlBZxPEUDyN9gKqlk99SSCf8NYwn8ZGLHl5BPJ3uvRkodArQgRj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785666634; c=relaxed/simple;
	bh=2JhKe/RuC6rw4KUnAbzBWf70gR6lMPo2gwEapnN5HMA=;
	h=To:Subject:From:Message-Id:Date; b=ts0Mw5BPgrAMC7tuP7QjKq0EeypR5UpdeIRMf8El76m6DdZdDAN9q0VhyztMAvvpVTk8yHCym1y16R3yGOqXCS4FYX4KChAMvDDpdE0qW4x1M5xk2JW7DHVu++XRYgLST2mqTbOv083RBKngVyXv1/H9+15P1jgv7Ocobjg4ULE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s42E7Zgm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s42E7Zgm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8E9BC2BCF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785666633;
	bh=2JhKe/RuC6rw4KUnAbzBWf70gR6lMPo2gwEapnN5HMA=;
	h=To:Subject:From:Date:From;
	b=s42E7Zgm2JDZCWfcELOXXPwsvnZl3BPfRHgjE0jP5rirIixwB3kmtjX/32EjNXCHb
	 w73QYRgEyoLgyLdAIxrycrGOFudbBsSDgRv12rOOuxfqz4ITZhz7WAU806D8vuZPw0
	 pvJQHeITeQC79uX9eE2xSZV5cpg+EIlarLZR/MlbZQM0Luy64nYqavjx2lUBTrlUrD
	 T1Xzr12P3Pg0+69Yj33N4oQo4Re8GqtmLjjSjWB6a/HTUlfIUIopwfNLGhMiTINS11
	 irGf2jzN6IhF13+0qdtmrYr76kr2XVT51X7N4xgma00FcMgpvPixdbTIMxsHyCfFcd
	 qWI1Kd7S3dwsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7F0BC55162
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178566663368.28682.8109334664355924333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e714fb0beedf0c23a71cdfe920a98225bb73fb40a1604368ac21b8dd8198fe7
Date: Sun, 02 Aug 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785666633
