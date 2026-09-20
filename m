Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79D6AEACD
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789914634; cv=none; b=iZUz4exOIwQZO0CZOJqNxEkoUDaOBvL0FRIlQWd6S07y88H8oJ/eB16z7OqJtcogzVkNeYbt0o2Nghzgg6tt4ujnKlhI1xQFmuzNX2ug3PBPCWQAvHU95fznCz2BW0hvYxM0sfug20yHRPl/u/KklzGQJAe9q9v8FN5nC937RTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789914634; c=relaxed/simple;
	bh=h2/Rs1t8sRc5wtczXTdpGMgr4HdaoJ9Zp8sqFoZoCIk=;
	h=To:Subject:From:Message-Id:Date; b=fpx8Yl9XJRDqO/DgOzU4qv+qzKeo19XaLwZqW/WgsCFk7+BrCiNn9MKeFquqIlom2FcP8JIjPbsD1rIKe0yie1N0xQU/MYhllUgvnyKrsjHrUjuERUIRIBLN+mhci+8VB1VTEKBWOe1K6Dh5TijfVNPotqRfJNa4MKHKMipaaP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jErvjNJt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jErvjNJt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0EA5C2BCF6
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789914633;
	bh=h2/Rs1t8sRc5wtczXTdpGMgr4HdaoJ9Zp8sqFoZoCIk=;
	h=To:Subject:From:Date:From;
	b=jErvjNJtIr0zRuxd959Gw+kGZmbmzuHhSR39pOKq26+hWKgznBDRwceQCtDnrB5la
	 tR6hIfSHlFbF/7i4j1J6Doiyh4ZEBVPVl5Hllz95H4mWC1Nm6uosExQbBH3znv7XaZ
	 0HlgpU2TPqICRKA0oSgIMT7g9zXzAZZIOYlfTuNKdfUKiXtMEekS6n5NpsctBCjml7
	 neV9z+NipJCctFZtzOZO9zNZ0hWp+1rtcbXa3V/w8HxIu6Xgi5j/iquwKTU76gygWS
	 NxdJeb34qZSZ52VN4qGe9g+v8Gydc7+hSnKWrRa12MmUBP3txMNaqELo+rDMjI2p7t
	 ZCUgc/wGkCulw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD114C982D8
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178991463368.2056.12922373335257056463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b32858296b3cef06d9b7bba10d7d26d00b512618441080ef5f058483b579b1a
Date: Sun, 20 Sep 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789914633
