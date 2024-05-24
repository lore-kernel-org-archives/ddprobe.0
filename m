Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4287A1EEE9
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 13:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716557603; cv=none; b=BX6K9gp8p5bsx8GzgnfFO1ZW5PajlhmjnpGm/bUQ4RtZoMo8Etx81qPqLfz9kOgZXt1e+Ujgp+LNFGL7NgZcIpbiVVcYuGiDwO4CrXyjpH9yq01r31btA1zoKkJ5Z7UlJ6SvimjX+vBhE0vUKc2Vs8JOlXmjRA2v1HWGrujXaZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716557603; c=relaxed/simple;
	bh=6BCW+yQnnXd2a5LcV9RGhvzlxn5Szu7kI/cunvXUhUM=;
	h=To:Subject:From:Message-Id:Date; b=bm7jHmoh/mtH6ms4bb+h4PuSjI9yuY4mhgNHGFK2T2EJyMPEs8kam7uj0k4WJu1JWfShGN5YuKKzkVBafc0oYIzqu5h654DNRhg5tudhH0i6pkdyNLuSek3+qOETjUps0g+F9dBZkx/RLTls1IVObjPmp/Zup95nOQeKiGyr5Cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aiJXrwM6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aiJXrwM6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2EC6C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 13:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716557602;
	bh=6BCW+yQnnXd2a5LcV9RGhvzlxn5Szu7kI/cunvXUhUM=;
	h=To:Subject:From:Date:From;
	b=aiJXrwM62HK36ZuRbRIyyvEfnCn9KBWFeuHeWEajGYngH70frKBdVQpF/32SRXeuT
	 XZxJ6V+iqeYuRNCoxwzH+xptEnAvTLLIroMeWiqR9veMXpLbN6bODZDpNiYZHLzktf
	 yrQnqGhAcUuUhu4dtgEcTIYMyI/HCBnkXUTbyVgunPJTNcE177VITzHJBImTSiznCP
	 Ba1Tv2ARJq9/avxvfplzYOeqZ2yWCMig1V/nRvcaInKv1R00rRIOipb9A8vnefOk2n
	 a6/2L/EAhTm03yW5hNGitNC4eAlRVeqqVSBRiXK+YfqGDvkWCE3GcT26RD95geYdSo
	 5rPV2+8NIU9yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4D69C25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 13:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171655760279.32537.7174368157079454951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 618c56b37d920b00047c36b84235751f7a21efbb0f2e13ac9ef3666bf7cad2c0
Date: Fri, 24 May 2024 13:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716557602
