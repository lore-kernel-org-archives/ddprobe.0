Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A9C33A9DD
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 13:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778418034; cv=none; b=cn+wbd1oeAG1/cKW8+tmoQGaNwQyBDb3DzTVqHQ7YRflv6DckXD/1FNNk6zxSBOrdDqqVZlsMGZDJ/1Cn/hSd8xb6Nv0FEVGurVVMbSMDmAhalt5F8AV+kuN1A7phayQTyXiHEYZ33ytxJs4nz6GENGA0OeGu7XkhAYlyn9dmTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778418034; c=relaxed/simple;
	bh=GDGSvVWTMJ+RVmZheyeVQeijPXLV8z+D7yV75nSD9WI=;
	h=To:Subject:From:Message-Id:Date; b=giJIgtNArt6vI6sDMLyq1+OewxV43nN3ifcIcg/BrjngyifyihCnT/mYZN7RNZaiSK2MIA79wC86beFWFf6rbJ/bphCji6ImZRuoiYzOvG4+mXi4iC/gGPzoZh7vDdc7f7Uk3wGBDiJodNv+cy6dFPb8cvNmi+8rvCyBVMZv9ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fjl8NW9w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fjl8NW9w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B92DDC2BCF7
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778418033;
	bh=GDGSvVWTMJ+RVmZheyeVQeijPXLV8z+D7yV75nSD9WI=;
	h=To:Subject:From:Date:From;
	b=fjl8NW9wgPsk2Sdl6On3DN0h1uxwNnJDYplM2xbgrsoP3jmGMAJUwm4aH0om96zud
	 f1fW2wu+Vq9PDLx5g41mbaXJqdWzfIZPoVJ6XiMW2bsSnZ31zjqm+emEFiJktJz3B1
	 iHjaesFbn1fbXmnM0zzb/tQ3AaxMuy6sA2qf6g0W9+0Z/siWPiHdByqGiBCrbPyf+y
	 Dd2u6+nLEf5Z7faOhdAp1J+n3ItUDyrnZ16kFeB4BNe91dQtZH2FnUgDhhC3W0e74k
	 QJrsJTvrcjt9R3bCSRNuOaOVaHf09no/k4O2QkSlRBUJDgMO5Ds3FRpgRWpREoS5EV
	 5DGVaxANPlQ1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9D2CD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177841803368.9071.14508089541087969981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd6a4c1f39cf3c23b55d76ecd15b4b30b1f6977692fbc6934351b7b686fe7e4c
Date: Sun, 10 May 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778418033
