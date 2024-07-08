Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A6EF2B9D4
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 08:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720428383; cv=none; b=HYuNg8ghFTOe5aNR851C/VBOORT1qBbo3s3z+Sqq091IBub7WbYNeRv2WnvRxHIqEqK34TwzfPEohZRAea5RzLovNTcWtf5nSB11BhASSWAOgABcxXg3Pj345IbfRk9tvzlvhFkXg/1PR0MVY39YSAf06j4+9JyvVvaQ98DVlCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720428383; c=relaxed/simple;
	bh=RmhmSHs9/7peA//OaIbd5Xa3W3MAvNeylhi4VkIMRyM=;
	h=To:Subject:From:Message-Id:Date; b=cCbByAEPIiky/fYkggF9u7Wq4DUw6ZZi43riQEKiFHY2fQmpWAR6ENt21DeMelSrFwc/mBiNvIqT61Q8hAQRUzVZ4sByYhp9UiphztVh5x3PHdqceSkXYAqSNrMLqgRFyZW+GSo4gTcNgIGgApWn8wl/1s5Ca0cG6r8U3RDoYwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CC60eN+X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CC60eN+X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8D22C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 08:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720428382;
	bh=RmhmSHs9/7peA//OaIbd5Xa3W3MAvNeylhi4VkIMRyM=;
	h=To:Subject:From:Date:From;
	b=CC60eN+XvoQXjOU9bodGsVK7gbDqLPuCLUbNkiyWqOzRouMb7WIqq9cDWySiebNg7
	 VcmLM+VE9qgp6BXDfMH3nf2IyyLm/d6aGgEXJKMkyIcOMaqNhLcCbiG3oP38+bhZkn
	 gsBQFWUUfcsRNQPtNPQ2FAev+sK8nhyddu1fyoW/Lks9t4gV5VobMXxs93LQFZzia2
	 ZOxNBJ8uw4c8RsoYJYCjg9QbDRfgumx9AFTV3xH5hBVZMOe0+nsXenN5PVtziBglam
	 APqAZPD6mmCVoJu5Ioq/WaGAbGz/ZDoUoPxxmkT6zKloDC5ym/j9sMZU8gd3pumzNR
	 J9Jry96XsSKBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA374C3DA42
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 08:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172042838279.7707.11571291513389830692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9773d5d59847c5d689461c69d28d1adabe425a8a8456581d1c85c9213c5e40d
Date: Mon, 08 Jul 2024 08:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720428382
