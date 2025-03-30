Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 510091388
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 00:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743295795; cv=none; b=bcQ1QtDOVRCfhjnOk7ITGbIBIuCjLVBeqO7EHu5lcTwBWv3h3Hbqs7akUs4gBxXkehliMiYoTniewpTwVSwnBw8mgtLk8ixeqDTmkU1vcfKtp8ubDaUcMq7nfiwFsciV7XNkti4ARzKTA9P/ikM2kmcwnIHWmlwgNoXql1Wj60A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743295795; c=relaxed/simple;
	bh=MpcaveKIzyxp8Q7ZkeW1NTiSdTTNeXgn8+79HUIhrJ0=;
	h=To:Subject:From:Message-Id:Date; b=pFRIsUBOfozGhGEqA6hPc2GXD4U3esOk2XgOhhiV3fYX7SpG8rvXtycFfLFrcKP1Ac6XYOdNOCXpoLYshtRLSxyu66kyUlICM/zFYS1VhvjxSYOqdx2pnSObhMXY2dfdfCgKlY8E2KHT0evHw2/sIAKNmIlz+PKzn7/NSPKeNrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KnOmoeoK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KnOmoeoK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B63D5C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743295794;
	bh=MpcaveKIzyxp8Q7ZkeW1NTiSdTTNeXgn8+79HUIhrJ0=;
	h=To:Subject:From:Date:From;
	b=KnOmoeoKCXAi23vpJ1StJpi0xdgY7tQ1TR8rCyOU7qfXTLGXoJRRzngV/pI1wt9jy
	 mCscb1BlXK3mGc3NrOdgM4sO9OaWxzzVNZ+Ma0j5wyYX9tpNuCePBQ85Pfyh7PuQFW
	 z3XS85I0/hOXSl0f9d16LcWtNad9kw8+jF96Y8JH1P1dupHUnUsGjZuv3k9gkxl5yS
	 Gw53PRS0pJ/tuNAUiwRIwOl//7kWEafhAdloxSqaT1JasnxsrQQeJX4qAUkaYuI/7a
	 R6ffcvP/N0prR3BynHzhMSjMq0swTvVHMgVMd7MqqvHdNuufNnRqbLffIUZFS+BrMv
	 jB1DkhvaOO31g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A00B0C36008
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174329579361.10303.16084963913710911099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbd479de429d3e3fcbc998e6da2656eeaf2cf215a1220bf19b4a1fd8fad391cf
Date: Sun, 30 Mar 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743295793
