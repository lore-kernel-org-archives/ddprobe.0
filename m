Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62B9410965
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 04:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713502763; cv=none; b=ufwb/WxqZ6+MV7OxLiw+UNSA2tHYaCrO8NVclLugp4EPjCztciHB4ODZOpyCkOeIvdbdeKAYoN12NXXgPKWmWSvrJFkbsvPHB+BY+62BuVQYi9zHoS+TEkjqD814QlyyDa0WwrCsKqruMwLZjdRBnKpv4tg2lbcZpHILzUv85FA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713502763; c=relaxed/simple;
	bh=JWqkqmhXscmZDT8Ts9E7qZsJU5yRPp5xbl1dJeGUDX4=;
	h=To:Subject:From:Message-Id:Date; b=SLjvoU+RmZK6glyVYMV8G4CcPT1poyc68+gyy/zPSdrbEfXyOM3GuvTus0lFUHrwd/jaik6SalWtojPyGYr8U/yXTpe01mHaabh33a6lxbud7nro8vYiIoCEK+khFCx+bPYGWupHHmxDn3o2ECB1SS2c52aGubOYtdTDTKxv7ow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KfQ4n6iw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KfQ4n6iw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8E9FC072AA
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 04:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713502762;
	bh=JWqkqmhXscmZDT8Ts9E7qZsJU5yRPp5xbl1dJeGUDX4=;
	h=To:Subject:From:Date:From;
	b=KfQ4n6iwTXwIhHFLWNUs8uHjPrlDuIKVdA4GgwhIMalQDf0cvrZBYdwwioD93GIrn
	 fv/n+z79uo1nbY2t6Fbx/zXkHw0fDwg+3nBs1VCq/retS0bl3NIhy2o/JlOks3biDD
	 XYWcgWFcKsYl2votX+EbdqIsCl4h4FOza5yZsGj9Q1PkFBz08sT1wg52OPPaQnfEvZ
	 wdbKOntLrtkXL/4ma5wnlrpz0R91uSQHgCYlp8jU0m3iM6yk7suTqVBZu0bSZLlGNr
	 j33eoB0uSpau5mlAxozHfT4B+OfnnJcMtQm+Ys3NyfNlmdpemEUck9nsrKpIn86e1H
	 YL0+vQwlOv6SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C535AC4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 04:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171350276277.7872.3497802500003306980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5272a2ee35450069561a53006898826c8263ab246d4bd81be3e5bad647eb6c75
Date: Fri, 19 Apr 2024 04:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713502762
