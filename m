Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45746217668
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 06:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740636535; cv=none; b=EtwWu2G/qvhc3h8hIMtlgHDsTeNMJHsUOd/40Y2qm+WcLwiMoemayRSl7AAOaHqEh9/JStZkxTrv/mdtHVQZFUniQiM6P81UaOrU2bEWPeGjUrl1wuU3GacCC//6r8JW7DIozhCr+kAFuV5+cZP/m7eZhspkMhPM2AHnS2sLvy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740636535; c=relaxed/simple;
	bh=nlTjwf18k0Ny+4SQKmIioQlUkazla3lS6lIchtgzfvs=;
	h=To:Subject:From:Message-Id:Date; b=FEOxURaAhjc1EI8NigkXExczLiZHBKCtwQqrIC2r0pS+DfEs3/aFN6PjaXy0yol/ld/AxH5xYiwNOV7Re4AOi7p/lMm2MNpXXg5Y5jZNSJSosy9fPxFoEkntLL8E2jRpAGe37gPw22f1agvMD9aANAY+cSxj8Uo6DQaH82J37G8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ayXjSMko; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ayXjSMko"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1961C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 06:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740636533;
	bh=nlTjwf18k0Ny+4SQKmIioQlUkazla3lS6lIchtgzfvs=;
	h=To:Subject:From:Date:From;
	b=ayXjSMkoOeiO3U34UTpbdd4zXHV7XtXpxC868beA8dCb1m/uPTYQ19Ap0Bqqt38Ji
	 tqHSeWN7MCk5HjVu061GK8d7LzofXBLPaPa3Jr9DULvT7LTuW9L5cnBaI83VKY347x
	 9aXNhnR3ruA2JXTwdeM3A55JYB03ygOtDhXEf7XTHLEqHaQTE0cnZeVq32pQzYkYn4
	 0gUSfPhEljtyqMXSE7M8CkqJYIH3zMQIFNwZtPI4md4BrMlPkSR4LYFndIoL7RUd4U
	 BRBS4pEbXe6ilhdF4W3ltSVVCShdbLwxFoDYlKEhFyfXPM41drgx2PggQE41KoLeBe
	 jqnR2zuzT3Gig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93499C021BE
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 06:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174063653359.15301.6382636615001328368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90ad535851391cd0c289cc8ed1aabd336c98d3e0a1d69ca72e2cadfcb6602493
Date: Thu, 27 Feb 2025 06:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740636533
