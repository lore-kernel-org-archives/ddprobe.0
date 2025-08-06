Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B14429CB54
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754506194; cv=none; b=rFDOvER5/tJs1P1tEFGkcTa+SYJAaq3XW9eHt3RnxGciQwb6c19KLoCh50X5bI5XF7XHRYVbo/PASMaSxXhpoTTP9wVM0uRrpcptsxp6JAUotDgw5dPCnRCzTXPZowVmgAkfKDUEN/UGvHSdno+XbdYMUcWUvJ+ofqgtBugpnbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754506194; c=relaxed/simple;
	bh=N42F6R+ykEsD1I8qft+x/9/Bz6yeOwyecvOiqxpnU+c=;
	h=To:Subject:From:Message-Id:Date; b=WGxgPms8OAX+WMSECHGrwr1/hmusaMCGzc/r2ltA0ZUzz8l2PWw5Ms82qYmU9AnFpO1cisMt/B2fu5yMlFaRXSTJL9GwGvsieXjWwRg80nvrAjEJoR5yOMmPVsKlIrgLVppK/uiQ2nKpulF1ghRKKvpdqBmFUiIjQqdluQJI2G0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ie/kLIdM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ie/kLIdM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A046CC4CEED
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754506193;
	bh=N42F6R+ykEsD1I8qft+x/9/Bz6yeOwyecvOiqxpnU+c=;
	h=To:Subject:From:Date:From;
	b=Ie/kLIdMldIfPTc4e6nVVDrwNfGXIS227wvxWhUoHO3oAqWl0bX0WAK/8yy5ewx/P
	 LfHzUzuYfunFJFILzcmQGeMbIUeMXu7i8TVUKFIBR6UKMWk3znNfwG+NPltimRa+LD
	 hPJ2bMrAeu8lNPZTpE7OFp5bXj7cYPBv8vx5icBxMxC9U1Zb2ObQ4K3dctNMfpEoGd
	 osAk9tSQ3SfCv29aAD+Vepj7efTYZzoI98KS8fO2zf4tRWIRKgr0r4AUELq3zAu3/M
	 qyeBvDFZdrJj2o10HcYjTC05UQkkwOYyewBcWFLbLtRpJ1DtjPzUSyuVYQ0wFS13Em
	 QSm6GTP/DHr8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B4AC87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175450619357.8112.17580532851991495424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ff14eae43e2d97050a9c75408e1754d6ed7683a05b728e3ca8b186743ede4a3
Date: Wed, 06 Aug 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754506193
