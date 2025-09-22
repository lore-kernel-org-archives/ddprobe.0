Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 154BE19994F
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758577194; cv=none; b=VwSOpfv1k/gY0ttlPcTOEuE2FhOojioW8t5pLw4eIco1BZmwgLL8NW2Qty0qSuBKZ8kYiSu2+A+MC0+XeCGFTEPUmkzN/zOgpVCAOQB/d+JjsKmI8Ci/vgNcfS3P9zUBuNue5q6Lkon292YCA1KM73NPBU/ViCmaD5xHKpTLqK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758577194; c=relaxed/simple;
	bh=XSckgd7to2F3Sn4I2QQ6yqvlTH4vp4Tf4htTCcNe0+U=;
	h=To:Subject:From:Message-Id:Date; b=iog5vUs/+6l5lUdS2EkokpPlCH9N2vqbvcmKOp+eLX8WmMa0czmSYf71fFxKTyHnlJnWRDVFRqHj7UwVsPqUip+2lthsOgchUXqIDnqa+GYixyKiWq7N18zDsIQI/OVlt5GqLUsOvkhe/Bx2nxHQRwJeH11XyCn7UH07RVdbYIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RCobg1mT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RCobg1mT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36F0C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758577193;
	bh=XSckgd7to2F3Sn4I2QQ6yqvlTH4vp4Tf4htTCcNe0+U=;
	h=To:Subject:From:Date:From;
	b=RCobg1mTRBtkmdaIHUdwqAzLJrG/u6aA42uu+CtY70W7/NzjZoadij7Id+8JXoxBt
	 e8rea65c3e1aMMRmRKkhLts4Qs7rcieKNRe7EY5ZwGXSuDbmhu9WBiQikyItBjUOFs
	 mHQCd/dDgFdEg93EwJE1ieT5b2Ap61Tlm1rb310mDpGhGEMpTKJzCQPHPJBF1cy6+H
	 V4eW/bf8UbGpas9Qv+4ZVi2M8Lck13BiD87pamlidqb3f5vKUehb2eslScMlp0Kpk6
	 3M9lMelv+PxHT2BuKfjjvxlKKfvAfrduOzEyghazpG8tUMhspSWtoHf2/RcNvG45ph
	 TLrmsxkCRM1sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CEDCAC592
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175857719357.21208.14710399293072412195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab4c474e508c671d3c6a6bbb42826c3b830c375fcb427c08214e68d624ecaaaf
Date: Mon, 22 Sep 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758577193
