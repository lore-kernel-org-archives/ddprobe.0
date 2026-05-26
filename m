Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381631922FD
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 03:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779766354; cv=none; b=OrOzfH7bcy8pa+IqEl57TLAaz/4EUKQHlTGXs4lig9ozzqNXg719iqSqrjlzK3etA2aVYMXZ+RVf5uUbQpURCLpvhSv6iAoip84gMTVs2KImSePvXTM2mlbF10GoFO7ne9uoVwkRTWQMXa5HhVzuXntp9HDaSSNxYQbj2EJrmjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779766354; c=relaxed/simple;
	bh=UsojMQbyFfpBBkPDo2SMCy735coMN4AjyTmPP9e0MiM=;
	h=To:Subject:From:Message-Id:Date; b=smzjjRHDRikTBPGBXwxuvvePXcCIRSWL4Nn2VUC9+t7WhfkL3KU2EifKVjuKO9QYZF/u+zIC+a92arOl2+kGXJL/X2uxDW6V4+0q4K9Kf7+vrtUYcOnI+LNWoDdQKfcJAB+0Uk6YamreA3sNPZO23f0THivnSP4/ENxUmh+FGxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lAp2oMFu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lAp2oMFu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9077C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 03:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779766353;
	bh=UsojMQbyFfpBBkPDo2SMCy735coMN4AjyTmPP9e0MiM=;
	h=To:Subject:From:Date:From;
	b=lAp2oMFuxsbzznq8HY1DoxvRVEvBOX/VhPPS3YsU97WfB9s95DF+5n9flPDvXG/8S
	 T1uSla6cHI3F60O3ohjP4uUxTk5WAXLahRvcFY4mOj/0SPcORxW+GZYlR9yaemcQY9
	 OzcWKl3wX6iKAFv4mJmTexSJG9lfWfm5h4u9QOxXVeD+drFl4lG3H8SjzDi/18UakC
	 jGn6oGMSnIzpTc1qEUBUB4rNbMWgrnutQtKZoxoSVB1gDVebs3iqEsnC18FJPAk3VE
	 bT1nCijT92GpeqCfuJtmFKMB4O4QwkMK/EH23MwsBq/tIXB/ob42oig/mv5b+KNals
	 IcUnVARaonvKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B154CCD5BCF
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 03:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177976635371.9563.7969004366566477584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02af588dba0e4c8e9d7d7e342c5ba48f0d57485ddd2973237a7e98becd663007
Date: Tue, 26 May 2026 03:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779766353
