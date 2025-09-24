Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5B071FDD
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758739193; cv=none; b=WReCo8PnxWOZXAym74mFbKfk3sbz2UN7sWWGMqKD8iPIgH1yueU19G71z1tOSp6trApm4lacxr7NGAYNVhox435BH+QhFN1RyAE60IuJXwBydmxa/FCxhVT42+ArbSyZbt6gxkehTjPJ2QyszvJgQypmSyf3MI8y68Hwj5MI2f0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758739193; c=relaxed/simple;
	bh=FaoFQaz++z3RswKZTLQp3NFF9bZ2vdZKUOs+VOnwBn4=;
	h=To:Subject:From:Message-Id:Date; b=Axbm54D37GMpNk0ElQzMiTK/NsEpvmUnCXdIWOpduEZhgZDyctSsAEdwjCkxuLdUnIUnn7qu/+0G93V3eYaJsbqLlSB6jRNMalks5lj/QCYhY20QpaQAL7xR6BV1HpUkZFoxck8GKNz0xUAFyktidzS79lJH3wN4OJhjcIXoLa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aDofjMGD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aDofjMGD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64B4C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758739193;
	bh=FaoFQaz++z3RswKZTLQp3NFF9bZ2vdZKUOs+VOnwBn4=;
	h=To:Subject:From:Date:From;
	b=aDofjMGDximxghuQmRBwzy2+su/YZN1D8MG1agWV0/Ud9HinNA2CleuNqM8ULkWNl
	 BFfIQNwJ8HX/U22XYxQ78S/cBt426Q1VI/7q/UY0kpTX4rho6jj4AOGISOfEoGpcv8
	 FnTISu3bzlIdgNPeArgKScBFx/4dUhDl9zNeHvJ2ME7BmErdSamLIJb4U7K59RSj+T
	 lnTTf0+6Lf6z7C8ws/VjXezmJ89PJbTQmRlE+AP/SUGehj69laqRCloJCPyCrwXAzp
	 YlXmiJPtELZGom6jlRB2cEg9tSxShfF86uZ8Fzp6eHA46T232dgOgBNA1Osy3J8V0h
	 xUrus5CPIQdhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931B5CAC5AE
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175873919359.16724.890961680945104068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdc7e4f2ccf656ed14fd6653063d90a912a4b1150b43ccb79e3f86848ae56ded
Date: Wed, 24 Sep 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758739193
