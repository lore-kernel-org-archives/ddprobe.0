Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73EEB134433
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 23:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713138563; cv=none; b=IVjcKysDI4OjZApr5sjejyQxufsyWstHJ+zbWsfltQzfj3yN5bVkFnW+D/34i8NvtOka4H6J9Ej74HnZVXvTwhdXVuQuqLsthyhej09+vXYdCgn9CmIYhoFHb0sQrqv4aelNbm86WGK0I01Fe9cBaAVRAQV+lIrFlQZZaddJBQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713138563; c=relaxed/simple;
	bh=dYxLxikS+IW8dQF0PE+Zjq47T75JhS5KVg0zDPLMZeY=;
	h=To:Subject:From:Message-Id:Date; b=kSHf2kZuT8k2HHFsc9h1tmo+4m6K5UQbmufF23mUXP3xG5gvs1w5bCR4o7kheW0UQj+MR+hJsEXxm/aG2yAoVjKOT1Pk0IOQ3IEPQfLc7K1NxuAXo2AjetDEU45PD32xi9q98mTojeD/jvjipj7cE8vpsADS15DVbWrV92Sx1IA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iIUz3k2f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iIUz3k2f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2AC1C072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 23:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713138562;
	bh=dYxLxikS+IW8dQF0PE+Zjq47T75JhS5KVg0zDPLMZeY=;
	h=To:Subject:From:Date:From;
	b=iIUz3k2fJYVDjqlopsfUqCEHvDsiPqSovG2tuRuw5MypibygczFIFN7o/3LlZolvx
	 wgVXQzZrPiP3lpdPVDRYVih35rGSh4TG/osbOe1G5lCFSK8ibrkO0Zf0AJGrXv5lgQ
	 dmu3FYyZ/njOSuRQYvhOuUYck7hs7OWhZ0yY9dUONfJusagvfUKutbuHXEyI9/blY5
	 jWwgRC+tNFh655QbcMop0uA/yg17WkXRDgT/nbnWOg5/sJoltuUtDgnoCdAd4Iz3HA
	 O+oSJbXVtZztiCUBfA9xya4AUZdF0jc9u/DEuIJNwZXg32fG1rYf8EwM2DqoFuFNCr
	 oaNhGJr+AQ3QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFA73C4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 23:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171313856275.31114.1826231173323724681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35439fe80ed352cf3e7c63a96b046ee4f21796b3d791452757b01af7f1a11620
Date: Sun, 14 Apr 2024 23:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713138562
