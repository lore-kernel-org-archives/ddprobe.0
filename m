Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2108C2BE655
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 06:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774419294; cv=none; b=JsczZWnQ7ZV4l0V+j2T+75c9utMem4P0IestqIq3Fuk0OKMATb2maVuBu3XJk5pXE7jawvG3auOjo0fjwqf3zfXN/4xOJkpiI/Un46Ge0ulVY+vg5yBI5qAOx28DD9WaeXsE9wfayxCLOVfPdG8QyzBjkVGvyMlhQbApY2uFpsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774419294; c=relaxed/simple;
	bh=qTCVZF3lwNRwCn2GSd8Fxz4h1RYKuImmB/yUBhUQmLA=;
	h=To:Subject:From:Message-Id:Date; b=mKzJlYQoHBqB78cPUKrOLoW0aJgzXk270time5HwWsEWGkEsvMx5babrCqb9TLPUZyRf4S8kLNYVafq6buqxJ7Dp8asMs1XeuUbRzDabRCM6WwCuReM29wWd8+jh12amFIzfmR9uh9NkQf311Lf94ZWefuT2udqtVBH8dO2934Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BzFMjuh7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BzFMjuh7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B794BC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 06:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774419293;
	bh=qTCVZF3lwNRwCn2GSd8Fxz4h1RYKuImmB/yUBhUQmLA=;
	h=To:Subject:From:Date:From;
	b=BzFMjuh7GybHfjRoVMxmywMWM9A/3Dz5ZNupJRiGLxGr0EtrHvDT8QctoYEBZERhI
	 FzbFwEjROpGd87hCyrAE2AWR6Z1toiT9j4ea4+m9PAKJQAP3b5aOUT2dSUid8ib3ho
	 8SygrIwOh14koIuXSbGbB3YLkeLvSfY1EdZlzlJm3E3+X/ftijXKbLv+uRzYnruLI3
	 sMi10hIpJ6ItcOxQuHEqsFBI+ufsQ8biTNmHAf/s5LFxQ8/MoVi+vTU7hm1k9e/Jbh
	 jmoxtv41ZK3OvJiREZ/C1BChSFUb7iEULc1aoqbH5GcfkvpbCW4xbowAgbW92kzHjD
	 M+eBpYig2ugsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1890FEA80C
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 06:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177441929363.23433.18445190719477720620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4cf6f725dd030a7c12de6b1aa7f13373efffe72dc3c5db4c6dd2b76a85419e1
Date: Wed, 25 Mar 2026 06:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774419293
