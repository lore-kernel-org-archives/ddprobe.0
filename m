Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C1A315A8
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 02:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743216594; cv=none; b=D02QDrqeCgRuJCtZRPgdNxkJgIF4f4jHHMBbZ8qwusigK+WxIJWPuE1xp/yvWM54UpESsaPHnD1+YU0mAdwPzI1r5iYEO1G6pNmpy/tP3PyeSFb/1XfZsCXWxPehVOhcGiE0YPHLlS2TBroVVKzH8jbTheAHAuWHSQqOgZewLdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743216594; c=relaxed/simple;
	bh=xaplkUhdsuvYUEEJXsulni69rze3h+yCgbT3o60JKPY=;
	h=To:Subject:From:Message-Id:Date; b=VUbsqC061bASZ+9SO0aZU/045eZawb5xmRH1E881oRm2FjqpqqEgYULqdh5LKT8pJx0zVjyQsl1AgeTKQqvLhA2+thMC/+nc1R/TwfxbFMGbG37asyiKWnZ0ChQTp4UXQ1A+L6+BI5dW1vU1kq8Hq8i3iK7FSMQK2C4GvgFCXdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pS9XdNqe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pS9XdNqe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE9A2C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743216593;
	bh=xaplkUhdsuvYUEEJXsulni69rze3h+yCgbT3o60JKPY=;
	h=To:Subject:From:Date:From;
	b=pS9XdNqeoXV7IGUGofJ7BMr58Zzg91o3WDPPQIcqDTiKrp0GzSOaCgYHTG1n+JkUo
	 61MA5Jf0b9q5D4r3mKlsPuilcgjtOQnnZge3DtOZD13ZkGLSzdhhSwydcU8LcQx8HR
	 ASdc3jne527qazGK9NaFZI2VuS9yWsnlbFOeHIMU4fCoFe8VqBobFZg2V/pajIeF9/
	 cl98MWHL2hFaNSnFRA5UePD2x2pHANjcoxP7UVEgLT8ofzZ1GjiZh2oKU9qGwO4RSg
	 Z4ZrgmxsG1kcCJRw016RHLyn+dSxofx9LHdB+TvW63X5uhfmdj229m6ESBMLtzmW99
	 waYWzf3TTrSHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4282C28B20
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174321659369.29821.122951655782846546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b11751dd0319bf172e52af05263e2b99a5065d56fc1bc0b7bb63dbe68e7f4605
Date: Sat, 29 Mar 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743216593
