Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34DDE18732F
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 21:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715118743; cv=none; b=bEKwJ1Cbh9nx5JtzHpvsGLLavm2gEUzqL8wInJGnZIqsfswDmGJoW5HyaPAfDqVfDHf+KVYLrh4ftZH5tdTSHfI3dWOsLx/8AxzQCEp7YUMqL1m9OxD/Coa2rpaG5VreItRTePKm++daheiftrTXFTVIjVKUsslAG525tYMxFUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715118743; c=relaxed/simple;
	bh=jb7V6FI0YNotjl8BOfS2agKFTsrrCbEtabuuZE9cDyU=;
	h=To:Subject:From:Message-Id:Date; b=spcea9m0N74haiyzAjaju9tRbbIi5+ZtGPBBx9UBWsRgg9ip00BdWx4VIHfH8exTVn1A0UhiimCZwq4zy9MfJ1KgzvZWhDr6dgZxSq3gFXViM6A3Ev1VrPVUaZFoCpSI2dL4Wiadw2WtgnxaDjL2Yj58+jRzv4RCyx+6zm2IXqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eIGRtOu4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eIGRtOu4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D869EC2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 21:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715118742;
	bh=jb7V6FI0YNotjl8BOfS2agKFTsrrCbEtabuuZE9cDyU=;
	h=To:Subject:From:Date:From;
	b=eIGRtOu4X3mCK+NbiEZFALZ44oiOaxGsKz0nBWG0LWNiSbss09nYroCyoWSxLJeVx
	 WuZW/o3ppF2FLIsaRWH8CYSH/2+8atPESbXigCOGrsg/i1EEbmUfzzohMy2LtWLFfm
	 ntqfQgKqV4xhJuxidnb/si8l78jTEVzFxJ2f2n84s6ouUpidyEp2L64zeMAskTwaMu
	 dCo8zSogI/7cKM2WxbFyYDzFARxd5v2vrLfNStHQPkNuThhqYlg8kDb7D4A0Y4EpOF
	 hXeUzTpMFfNHMNdijvHEpy2S+kxIqZoG8cfkXrE61+3AJDNeP6gaWUEyy1erxXGmed
	 ya/9CwdsmPvAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0771C10F1A
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 21:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171511874277.6108.13058297243464667831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4908c705d5bb64fca8ab6ae30f6ce2ecd8de1205ee2c39287d25d2d5cd99248b
Date: Tue, 07 May 2024 21:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715118742
