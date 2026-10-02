Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 649B925F7B9
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790981434; cv=none; b=bEwqZdr4zPDPsJZmpuseYgHMxudp8qLblq6hXW0MhRK3rXvvzVycjVGWs2Ec5hQDHCJ76NhdsiBajHcx6d5iotJuqUNhkGHYr3lbmJfVMzIlLy6BsxGQg0FOIDevF5ZABEMFbVG+Y+tlEiFFZ9fHRy/oqXCzFxqF8G1FGSlaJQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790981434; c=relaxed/simple;
	bh=mi7ZJRdsyXjTIOF/CS2kplm8K8iUOORsTM9jXOvoX2M=;
	h=To:Subject:From:Message-Id:Date; b=pOkeIo+7Ya4DjBForZ7N50iFVKsotFlgL0dM40iP0PN3zvau6VCAkxVgSfwLmSivMU0ibNZr5LgSQiljMlqk7RvaQbToNHJv1UQ12GU8KomYrPgRn48tRZegWUIX0TWRdghsC9ITSPFFKrktGhuhBHRilNyitK4B2nmJ9lX0Gx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qGRXZ8mn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qGRXZ8mn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D488CC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790981433;
	bh=mi7ZJRdsyXjTIOF/CS2kplm8K8iUOORsTM9jXOvoX2M=;
	h=To:Subject:From:Date:From;
	b=qGRXZ8mnVEte/gEPznPenwHg8/kCw75+FSwjD4BLY61OB9pWxTLUooPPXMx2czMvu
	 tFgCi5ZW1fQkJx7hXFMzXkOHj5xd3EhcyNH3NI9ydyZnKar5hO6M5iIvCGFXe4F5ER
	 8NS/arWvVmdqAE4IMvj/GJtGeSiIK5SEZ2/TFNYY/OImW/FdH0fmGY9+Pu0ng5HSfi
	 WnvpMuoUQDGjC3k8/YXWMBm6KAnTILqB0jSeHle/3nl9TkCsCxyGTT+DaG6qJsTE2M
	 HEJKzhL0eCIjOyeJKx2jupwW+xUi93bsgbMxNhm8FzcaDORvGN3yroTE4/Lt3YdCNF
	 QiG8+g97sk8jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC606CA5FDD
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179098143368.23420.4547720944992220083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aab1ab1fe711cf6767a013e5be260eb0be3a2f185f66ad65cdfd98416f7ac680
Date: Fri, 02 Oct 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790981433
