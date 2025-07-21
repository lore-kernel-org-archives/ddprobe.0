Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201A61DFDE
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753115394; cv=none; b=B2/JSFQXINBcZdQ22bcSf30k17nsILv1KpaWWjQaQxfjhzsClteRwhOYuKyu4sUvNPZ5gEUfCcNn/sAWhDYXoLB6Ku6Dx2ANgg/M8z9Lu/3W4+AnVNC3EWduatx+rCaHUZmlmFYShHAgWTKuJBM0TXbyE8kYUg069WGS8q26+M8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753115394; c=relaxed/simple;
	bh=sMvp1xshb93TU32YO6hL25Xumx3dofYUBHBVmgD/DDc=;
	h=To:Subject:From:Message-Id:Date; b=M+AkdAu6/56PClYzj5/z/nrVrwfF3heBcT20RV9bFpbo2WXN7Q5mtczkMCLPOmiq4WPmSMRJ7JjOZXInOcDpCmsMKySXk3Pje8DUGG+CkrFhBUALS0ACGcx4yAhNGmJaYtvLsGOqgjJINz7EwtCN20CI33Kg9jjkOKsgiKgNedI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T0MDMWL/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T0MDMWL/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37A1C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753115393;
	bh=sMvp1xshb93TU32YO6hL25Xumx3dofYUBHBVmgD/DDc=;
	h=To:Subject:From:Date:From;
	b=T0MDMWL/2fzeMO2QDP03hrPFY7iAATpWZ6ktyC6IXWDSE3HRIH8IaeDT+apD2VgvH
	 IYCeo/0jnNDXY3Dc6TZm1OREmELkZH0iTtVwGiKck59QkeiIzA9SPwhAF3dcDnuNvd
	 jWs6ZLCB6Vdl9azuarpjrb+lq9zMI6IPEg7qhpfnNQLaWuh9whQCbxyeUCKoKVOGhl
	 oiy5bMZX8+6LUHWHvINAuTzgqBLayoQ7EmIsBoqPx6/hjj2k54P2Vhkc4fhorlDo/h
	 6K2PD2UpzbqabknpmFB9nNhZXy24MTx0/Q9REWc/KcREya9i9XE9LRVOKQ2Pzc3h3F
	 ig+JsbrfQvvEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C53C83F25
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175311539358.13445.13349766506970250388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58f3403c18e28291a5cc31cd18e957a32dd438cb8390f8bd985acefe75d2fc6f
Date: Mon, 21 Jul 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753115393
