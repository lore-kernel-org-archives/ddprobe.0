Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5079F310645
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789178434; cv=none; b=gcm5DgCsYWAnAkTe4deFqJxFnU1uZVUZ9f8gpuNCAIF0ukrySKg1Ru99atcSVRA8OjWLtQkU/zq+xSggaO2ZP1eeujQCJ9YayqiVztUmUpxbeEbgS3y0qjHmTU+HC9BeOJmTYoqeoZFkSGSeRcCx04dgbHehLuP6VKhfW9eWKGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789178434; c=relaxed/simple;
	bh=ZHc/PuaH9plPcSPsvsb/DIXnMHFSsSdpkbJnFBMQfOM=;
	h=To:Subject:From:Message-Id:Date; b=bucHjgzEka7w1HSkLBv08cTPOoCQ0LKTwn68oAOlfzxcQwdZPG9Cb6XrjHT6/UmzRimdt7yYFRYKWXYT0bskH3O1p8PpGNutO9h713SJNjFUr4Ds3JEfZBk7PN+H6orhKlpkB6yA04GsApyuJdJhq3i1SVr7JzMXcu49qCwpBkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AqA2ccJE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AqA2ccJE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4BA9C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789178433;
	bh=ZHc/PuaH9plPcSPsvsb/DIXnMHFSsSdpkbJnFBMQfOM=;
	h=To:Subject:From:Date:From;
	b=AqA2ccJE2RrzM6NTGBFlPAiGAwx7ae5Mejbh0GxfZdKMDaBlSFMbE6L+LcE3qV4R2
	 gadW1xvJPmqiYYs65+6B7xA8rQg8fKQioXyN8k8AiuQ8u/ps4asL65rftKF+ZRJ0H6
	 3sZsntjedT2i2zdeGaoKG5U1Z6jWkzxbJ6W4s94TzqO4eg/ValGIJnBt8iszBQNVeF
	 Nx/c3wOXPwwHdpDRwPUBrO3oTovP6izdwRFLs5BXw9rwCFVh5g0S4oHLaxemjDQRzv
	 bHrxYo4ZLCFdBIgX7CQl62AshrtM33m+o7W6PRHkOCCVLCPBN6/mFMEZHbI+yG6plX
	 2bPKcUXFxVIQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B030AC88E50
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178917843368.31207.5991814622520111484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9f404f863b1b733b828e98f885c5c4cf663d4acfd5b7d60f177483b9e1ef81e
Date: Sat, 12 Sep 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789178433
