Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A0AA29AAF3
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 07:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773387294; cv=none; b=Xr+OeA6s6lXVtsj8sJRTDCTGFKfsqPEWHpzCWn5AONLExtaDgnZT7By9P8WOVy1hnptraI/pMw0VP0N3myqWanJE93d9BrsJJkVMJRgyOaMwFXVzoRN/IPOfyeOcesUaOJQDTzOe8476GG2G9M1O2RRoAUtfNAP1n6K2zY+BkxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773387294; c=relaxed/simple;
	bh=lpwMSUpUBiHXgHFE4I95BR8wQS+sYojULeUVVJyKuBY=;
	h=To:Subject:From:Message-Id:Date; b=X53kuwOM8MaFusJlqtJlcfjnsX6Wk3P8mkzlbutkgqEdXsdcZogL1mLniT5+XtX5viIVrXsFKZakIlWfPDfSO4sxW797f+jG/SWYy20tgdMxysfL8M22zo/jjqjnxzvyQgGwuDiV1TyZei+FAtIfCdLoRyqvhzntVqAx3g6If/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dxz0muQx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dxz0muQx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4506C19424
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 07:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773387293;
	bh=lpwMSUpUBiHXgHFE4I95BR8wQS+sYojULeUVVJyKuBY=;
	h=To:Subject:From:Date:From;
	b=Dxz0muQxvZMooXs/kITVaUGOuEEnSgKoKAYkDLG/aNOLSt6yEeMj0ABUbx5k1DCK5
	 1d3U/1LHbt/v4muT+pqGTq4qPvl/Kh/sAaW6QpZlvmF8xpVKSrmXOT7WKvaUuh0+Ip
	 ZP9DTLviW12uhIINOutErpzEpHvGk/f6Tme2GVNQEhe6MON4YLkiAr1kJA63B8o3DD
	 OHWoYh2tblihn3W+y3p6qZ9et6p/YnSiPoYlewpD73E2eiF26Q/pbDI5PDDR3/qNR3
	 35ikPMwA7wPEqErReFX4wgnH/zYm3zcO+RMO3XUOC+xUDApc8V+GffyoIJaJmY9pqJ
	 yL+EMJ+kJ3gIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA99106FD9B
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 07:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177338729358.20259.9033009857411589193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 328d37ee7fc505740295a6ca14dce68e8db9f19163bd1780470d136239315867
Date: Fri, 13 Mar 2026 07:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773387293
