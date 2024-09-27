Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0B3B5234
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727454953; cv=none; b=WRlQgZ2KliLvDLGczJPQpXVbHflYL2NquaWgMiZm4S9A+RkrFhpsOIxk52KzG4WLA7vQ9N36g/Ojk0rMtZP716ZPnRod6yOPteYciE1/N7sHKn3xfFlKhpLMmNSbIrMN0M8MZM5f1rKduAjajIg11jmXsWqiNhezn0zizypEA9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727454953; c=relaxed/simple;
	bh=+dxHE+rkUKKxeuwowXhrjSUtr8cte5YtDBJrmNvl2kc=;
	h=To:Subject:From:Message-Id:Date; b=EnNX649+I0LUUoGuGsjXtLCylbnenFyHEVqc0/U6ge313yNRJjECmYP3xEqitspfxUzR4lXQgFL6Sc1nhDmlCwWg0ovmP0DkWGu3cIboxUVmrBz1ulHVQuGnawrOe2oWVHOcfi5C8Z5gRxCQN+tDtcrUt1rLnRXwewGiYL/+VkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S8PphNp4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S8PphNp4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B270EC4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727454953;
	bh=+dxHE+rkUKKxeuwowXhrjSUtr8cte5YtDBJrmNvl2kc=;
	h=To:Subject:From:Date:From;
	b=S8PphNp4FelYpUDITlilfJTybX6ouATdU+hTU1a5+OVhiHEsTxaBHTiNCLmNsgp5o
	 lCdpQK5pnLU36i99aJE318JbqChvmKZXCcdA4+/hZcRT+0T0D7WeZfyU6bUjzB/GdA
	 DqE/p7TasxMqoPkHip/bTqX6XF3m++xqiAOs7VP/a8hFk+H5kNgIMtNfEM6fr4d0B8
	 ddPC8kbHMAgAUOsu7kx8PWI6QI4tBhFBJjagrgGLimuXvjAm4RcRUQt8ROViTuXiwB
	 J1KWSmKDggjLhJUt75p2z3IWhEJqWfmDUjCG1UNDKry5qr1NIXumDGjL/C6V4uEMW/
	 bXsoaPdO8OPKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4BEBCDD1CE
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172745495366.29501.3913117474549114205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eafa29d8ee3c867378ee079527de7bb7b2cca23d181b1d756da79fe72a8d06f8
Date: Fri, 27 Sep 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727454953
