Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9C573242DF
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 02:09:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784772574; cv=none; b=nDLcmTuKUS+sTUfw/QIY3j3z//Cr6XLV/nv99zq+9l9FJAT2Bl5CdyQzv/kVDsnY48Pg9lamfL2iC6LHn/+yO5CBGmH70hoPyX5TNpdFxfrRQp1a8VFOwxPV8CdXJ2NEmXOnENgGkhmR1L2Ti7CVwzDD/YhUyCBeQVweykP6jM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784772574; c=relaxed/simple;
	bh=ZYV2f8c1OPM818mOvpEhl6PpiUGQbJq9mRkZ/klympo=;
	h=To:Subject:From:Message-Id:Date; b=LThnfhH78JltoeaBJBkOXdiNjH2AMPl1+t7WkwBLaxMo1ieiJCglpWGAN4ezrYkZM9FpA/M1ROPiL+8ih4E7uwNUCrNgTl56p99vgVyAyWKAknOgXevIE1WJrvoOR0kkms8elL53aQGpqeZLlb9rYVzemOeBoedMSnRvtyYBvzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VX/fwACZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VX/fwACZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D98EEC19425
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 02:09:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784772573;
	bh=ZYV2f8c1OPM818mOvpEhl6PpiUGQbJq9mRkZ/klympo=;
	h=To:Subject:From:Date:From;
	b=VX/fwACZp1qFPAxx8oXKdnjXX5Gw8H08gK+jUuDG1o3/8dicd9olZ7cCtB4KrxWOa
	 KADp9IlfF5SHicXEnSLEyHHZMOiXbggGUj21jBl+nrG3IypHL89gncyePQ4Z6Rh/eK
	 hSrQhBmqCvInXsO26HsHJRgSX/1D7ewCBIy69QEW9+pdDDriEK5VjWsMg8XEgwnPJm
	 Q+0LzFOnqBIET9Cf83YKzCMrM6gpCakDxoflOnpPpCB/xCF+rPMybd4dSFJs+e9omv
	 NWI2Q3urkEToRPDxg8YT+Hary3YRaxdDhg/owOXHxMgvu/8YQqHq2NgmvFbofdJ5YR
	 QRCUzo1iGO5mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3B75C4453D
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 02:09:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178477257372.29003.8403481076126544165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db3802f33da703dc361b061b93e44dca75e749e969448ff4e2fc6cfdf9cbad78
Date: Thu, 23 Jul 2026 02:09:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784772573
