Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B651207DF7
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789965034; cv=none; b=cC3iT3folHORAj7DAGxIaFnF8Wy3s1xTeED8TF5uoCt2M/9SB/pMuX3eXipl3Ou/sr8zJpyeVTFDZkPKq9NHPRvh8bXo5odwkJ56Cczm3Sog563InkXsO453m3VHFH7PHFVzWffe1tP1nI0c/PInNMfQ3ly5TiEYw0Om/TaIMxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789965034; c=relaxed/simple;
	bh=PlMycd2zQbEecC3L+UeGnSTXWEMoSDlhR3b3HR9lOv0=;
	h=To:Subject:From:Message-Id:Date; b=BcQFWA2lDbC6gxaimmPGLZ8zY5C5QUMFWflM/LYE5XW7fCLg2a0g2esd3Rtboy6fbXwPbEysu+dqUNFPZ8wGG1GTbsAvJXrMJyNsO+DHBieBFNHc/c2yUsaBnzsg5UI64hAsEd7Vc5MAPnJM0nW8P2KBynIiJ2GENnOVbGwN18w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u3xRLg6v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u3xRLg6v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D575BC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789965033;
	bh=PlMycd2zQbEecC3L+UeGnSTXWEMoSDlhR3b3HR9lOv0=;
	h=To:Subject:From:Date:From;
	b=u3xRLg6vzLrsAm1IXRrRk6XDn7uW2/qEQTACCh31QOUGOSt6npVh359Yclt3qWG13
	 cqBv/Z9H/Pfu7zHYBjsNk+jX8FDn76KAEEzY3M77EQPyBYBKWxFCaN4P2+SkBt7MyI
	 rT/VTvZ+vF0KOZftWwPlfcx0u8SI5XUTz8KI9Fo8cmwKJ1b4LpE/INX8aBaw+QjQ7a
	 pPUsT/nXWQeR52t6Mx2019WSBCrFPuo7TZrVZ2v4ARpsD6oIFUlHi3KpIekWwIFT6R
	 rCHNh2nLK4q5PKGg7fW/mZ6IN1Ij1SeQ3Z0oLssWn3NuPiNnhNphbep6+OWnouo4Sc
	 Vk+TRvOM6pRdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B033CC982F0
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178996503371.27897.973631981177758820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d5835f05e469b78937074cd20821d1f01bd64f81db0be4fb4c957b96d47c3fb
Date: Mon, 21 Sep 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789965033
