Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D293221FD8
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755458394; cv=none; b=Sq0jiupSWoZNNbOVxTdsWd8CyMgzkpRLB25M4IFo/P22CSDQR4sOENFUcqyl3kIFFrAjzuP2tJEDwYuTkQIxbxvqP6kdgvbGHu/Z0uQ/YkW2K+JZ2CWCI9Dh1JgzWSVXMNZF1DK8Qy2fYKMFNCnXD1I3DMiupwAFo9yiFC2diy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755458394; c=relaxed/simple;
	bh=gA2zdO05zqmMdGvOHid89zblKdy+EYShApyZvGapnXE=;
	h=To:Subject:From:Message-Id:Date; b=nuV4xjweMXl8A57tGJhookySgEeqHyJUm4ebl0god4Xz69qXsc2M+huf5aknt/mjlbyGtenUC+62196qgDy7aE90cwxGPViP2agUTbTy2Pw7AuAZV8sWJyAtyiENPRMAwtAbou1wP87whAFMxllXjOf1W/THgENcJOnDQE2RbDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SUVViZz8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SUVViZz8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A642FC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755458393;
	bh=gA2zdO05zqmMdGvOHid89zblKdy+EYShApyZvGapnXE=;
	h=To:Subject:From:Date:From;
	b=SUVViZz8CuljhLrO6neXKIcpiUqsVRR0l0o78D6FcUKPA9Wu4sQ3tGDxggikx7RC0
	 ejTZwbQgJDWerPBbhRIJdhjv+rRpT3D0t8fIyQtIxYUtGggNDXuRA5wRlHg0HfXf78
	 hjI2fcos4RZlZfLKOw0XvSEM/WALRJ8xF40kC/mvq/9aDxTdt8OHWK2Ig4kJdQpq2Y
	 KVshx79e8lYxkgKx5ZhUQ61Kyw0yeVRt4K5yGwCq285UpMNmRQ2Z588HgEWPfPxNN+
	 UEU+GnmhyJqHBFqFYQja9EyLrRyv1SSQ4OyU+VvABJS6PYDYZ68O/9l5E4SUlS8epG
	 M1fNSaE1NbtSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94433CA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175545839357.26507.7064303657352922437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4a7ab21d85e1b1c15f9d2ebefcfce1c1b3f3a0b502aaedf37c91cf4ab078407
Date: Sun, 17 Aug 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755458393
