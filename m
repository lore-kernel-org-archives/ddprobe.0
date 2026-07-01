Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE1E72621
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 16:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782922714; cv=none; b=M630Zzc+uOVK2m07idn73wMRLB547xvs+Mqaw55dF02GMwrKZADhUlpPOKH7Hvd8Cv5H5wQMgFxcqJi8aqWrCqwO88M983thoYWkVqVqqUPcpDrhzHSkEDal1OvWz8FcCY1P1ayRRPGPacdWEHY6JoR8L/9vrbdCNg9lSYwmPb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782922714; c=relaxed/simple;
	bh=Uwg9JDt6B07m2cjVk/i266F2r9F9b7hUEqCJ1bHizvc=;
	h=To:Subject:From:Message-Id:Date; b=UkQYx/rwtHSDMRd+0/9nxRxQBynJYaBVq+jcWrekghlqrZnlou+8wR2ngN71tgU7SGhFvhvWyqVM491EstjOOapeLRR68uZG2CtxRAjepioFhI26lBtI70L3Bft9qCqQI8vAlMTkAeQ7adNY4oq2QIB65Zf9lCZUzqF7/hqfxfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pUM2ERdj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pUM2ERdj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5882C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 16:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782922713;
	bh=Uwg9JDt6B07m2cjVk/i266F2r9F9b7hUEqCJ1bHizvc=;
	h=To:Subject:From:Date:From;
	b=pUM2ERdjFW8kY1MyqbLzbwFSU20wgF0Qnh/Jedkk2JZKfa5UQ0SKtRnwe44+GDTgg
	 +d0c1FwWBtC+JIwP5bvsP0z4+jDIegz4WTpExKQDAXqS6oB++fmD4lv/vPQFni8VrX
	 QkiL6m7LAPLZG4DzUyUYJ6F4oz5cEOo5RrTVSg77J6wyYl5TubxblbdAbyHv08Pgq9
	 7JpwnBQATqKK93vEngU3SJq9mmZ632oQYZPXNd/eN20qUkXKcnLGGeuGsFOjuMHTN9
	 h2soGiXvpTfh7qWDK1owePA0t8os0jpgQHaWpVEbDvEsaOrw2DnrGZNQWxFIQcvEyy
	 +xqZUmfCDC6yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E79C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 16:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178292271368.24157.4840609609241904257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08c532b71a8867b7f1af6f686f08ea7914d238b0362f6526f9669f23a9193d02
Date: Wed, 01 Jul 2026 16:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782922713
