Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C305B188A14
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726058153; cv=none; b=WfuK/9+YHZmqlE6vxdTMsZ4yMR68PIJ0MKTLVq0U5py2TYPgGrAB5KUGLlu7uRUrlKdXbjrQ5OpaqNQO22KaMOUmRvDBue/DgTiqt79/EDPy6bF/ZQ+N4VzZ/Xgsmi8NxH5eZCI9izjXCUTFT41JRhdJiYBeqmm/fuu3n6Bdl2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726058153; c=relaxed/simple;
	bh=3UiTj5fMo+wQvMegTVhmdG+tb45Z0PyAqAqb9RPS/M0=;
	h=To:Subject:From:Message-Id:Date; b=VxfnSoA8+Y/2YNpTASqWdfz2wNCpvBY7iwzXh4mB0pH2CS6St5AmYQ5G8hIJj6IzcTyjdGSLk2H7JLY5AL/BxFrRCSLQee7Kc5L1p2u3W2pKhAnyScYmOKkOMbI8XllhEqpOATr7jW3J3Pdcu6rFqEYc57uQCqKGbxffWylTOTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ul3A1rNw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ul3A1rNw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E99C4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726058153;
	bh=3UiTj5fMo+wQvMegTVhmdG+tb45Z0PyAqAqb9RPS/M0=;
	h=To:Subject:From:Date:From;
	b=Ul3A1rNwksl81t+vmj7zkmTUYC1sLFiRVtqDhRHT9MNkiBrqzOvI6r7OIPZTWLBr+
	 gLaXP3zAIKPlS6o692xY026d5nZ0QJe0HsRLronQbFw5g1EvriFdGQgf6KVB/FtHvA
	 0EAbImKcOq215Y4AccFZ4cbT0bPiApuecm4gp0fKB8gOUYlAoccrn4PyskLJhetGTW
	 BMiXIc4hxsZX/VeM4J8xXTcA4/54HyIM8v7ew+l2jvQuFvGgEqdMd6pvfn+qCENmXg
	 5FmxzPWRVJLRtEqgjACcpq9UZ6TIiX6zTgTAfvwm8ueDd/g9AYey9CcndPcxudavE5
	 y45saPsTR9Ykw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952EEEE499F
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172605815360.13685.12510945571561981897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e2852d865da4aecaab9841cf0e90f3e278ad2cd41a4e2bdf8927ca8fd28dbec
Date: Wed, 11 Sep 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726058153
