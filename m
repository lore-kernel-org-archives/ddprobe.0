Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307B3197548
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728479754; cv=none; b=N6lP5h2F76Z12tV1n+kcovelPwtxCoPF2Xcdt1cAiO2sJSGrjJzZ1gWylcd7JJkPa8qJ5HbBJF3yciNJZCAaawv25jWhIxgcbGNMFpomCRWyckvUzuPITcdybnj7kgMH8NIwVK7mtDap7Xi+NH2Q4AT8f56RAH2JkJeJD9Zie/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728479754; c=relaxed/simple;
	bh=qtXp/h17iPFKFhY3CupMMKAjADUUyiNrkL+rH41j/ig=;
	h=To:Subject:From:Message-Id:Date; b=Z5MDjS2KVlILtmXIOt/PCjyMr3GoKOJU4L21UM6379HUhVC4N/2xKRe6IZFji1Adwgu7H3ySobvRdRRlwn2NF3M86w1/dwBhAMHruCsaHpBfIOaVJYhpbWI8EiCFe0LoDG50ULv+fxqaFbtmPVlaV0vDedK+Yyk3V9kVkgtAoxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VSNnPWDx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VSNnPWDx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60CAC4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728479753;
	bh=qtXp/h17iPFKFhY3CupMMKAjADUUyiNrkL+rH41j/ig=;
	h=To:Subject:From:Date:From;
	b=VSNnPWDxUiNIaFOO4359erR/nbyVqbR2mSg9/FSIMzo7j9gx6eYBJgsQDPC+dwzq1
	 YH5O0+EH8ZPfMqwawYbtDpPrWJUhir+dBBak1j3F6p2EOQaxoHAJlo7sRhmLDdt0np
	 rLTDg+mIklZ+qUKXREYE7p60JT2WoTH/SPiU607j7r1VUF9pBmWGpm6aHmlhDZKrne
	 46k9LIZ3sPILjBsvwDFRwPPPQD+jD/QnEKhrFJ7xSJmOUcb289fdupiCkvXxC3Myum
	 LI3tfPV9LDIOZ/aB/2qCJHW0pz8F3iIENuatqQ1NdLQ4Nkh0goZUN2NaGJ1Gu7Fmej
	 Epbo6Oi3JoTeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98394CEDD90
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172847975361.30044.451809152057165689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 405efe4388125efd3307f022fb354b276edef5421dbd55a694829eee2e4dd3d1
Date: Wed, 09 Oct 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728479753
