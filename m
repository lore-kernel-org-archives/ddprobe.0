Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2964027EFEA
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752236394; cv=none; b=jGCbhUnZTBASrGGayimrzEDrES2Lr+j6Cy4eKVFmxAIPoRiUiC/CzbwlyK3UQA5mHfiZNaV2VorvocggZhLA2jdfYWylBOvuVywEbcnR8CK8Fn/YsYkkKbMWBRQmIiA3E+n5yJOck5vdIfbBYTzAraA/Vtb+QxXccbcFo2s74MQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752236394; c=relaxed/simple;
	bh=cvILmpCtyPY29Ykj5vZpOP4fX0DijwfIliAC48HMHq0=;
	h=To:Subject:From:Message-Id:Date; b=ajWsSdXWKgPgWs88sqj29krvY9L/LJge+EYriJnhsaU7xyt08fNwH/Xm/fI8krF/FPMewDwO1/UCmHgWEKWE49MasVDLGkkHB6PgoVDJR36hhkOlbsh3q5ASvdCwqqwdS+SolqBZL/XXKf7aXVWEzZ2LRPvelpB7/I2rC62aqRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y+eRE+IG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y+eRE+IG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CEDC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752236393;
	bh=cvILmpCtyPY29Ykj5vZpOP4fX0DijwfIliAC48HMHq0=;
	h=To:Subject:From:Date:From;
	b=Y+eRE+IG4UXfLk3SqT3FTgK3LunaPzCo8Dd9B9k+trbqINgBhOJ6W2g7RkJpF0icM
	 IR7db6GcaenVnO3e4aUQs7XUOVyL1mZGe69QE0EpxQK1Qrx8jmCs5pEXfHmEw2lmtt
	 wvgnX+QM6OF/xq+CSDZg2+dhju52tcJrOJ4i/yyPGiHdCl0xIsOQL7irRQN2yEM+Mg
	 tRDMWaUbgtfWJTR6KDQr2orvoCtT8jP0G3D+d1tE5lpYh819eLgpErf5iHAuZFB8ho
	 k/aL6xynGph3jP52gXooQveFSLNlJC3StIy3akV3tEBC3JVYQc5M5SSWes0KBCy7Cd
	 N9ebtYa4IeYiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90311C8303C
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175223639358.23119.7351935589438168778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c5ceed163a99547fd6bc7e0bf1e17058144f22e5b6ddf9243a7543193e46f57
Date: Fri, 11 Jul 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752236393
