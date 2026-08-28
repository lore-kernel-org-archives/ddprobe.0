Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55937390C88
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787890834; cv=none; b=aoGpZmRL/Cm8m8+j9B7cDcKfjh9//GtvscJH5zE7Aq5xBnQgIe7OuM3xK6iT1rnNmNnh1HLygaDAaKOMVv34l0cLPqI5YGHI9abXUfgDlpQM+GnRJ/OiYi8cuYHsCaOiTyVxZtaDH5KfttPpBvoh8wvwLHBYPWp+8WVAPLx4E2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787890834; c=relaxed/simple;
	bh=AXKw7IBzNyDMkkt/t7Es3L2G88sEFYsS1HJipVDRCSE=;
	h=To:Subject:From:Message-Id:Date; b=k37oDdPmQNwhR74T4e8gbdlK8JzhtT6w1M8HWUDr5w1fs2boe1m9WWId+Ee+zx0n5w5+GvIeGo5t8Ns5AD6h4Lz0SXXQf6Jz0bOEHWfGO7WfrXCGBVPawIDuJxXLVK4sdbX1bfkOkFyaTzou5ymtJ7AGfuUl+CWjtuIQCcsnKNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=af8pDFTZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="af8pDFTZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D06CEC19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787890833;
	bh=AXKw7IBzNyDMkkt/t7Es3L2G88sEFYsS1HJipVDRCSE=;
	h=To:Subject:From:Date:From;
	b=af8pDFTZ1V/zgUsoufLP74bWQpWTC5lPk/GJAyWezAi7W3kf4FnTYk0QNB1PCmnA5
	 b0T321W2jVbYqnhxU4beeXLfr9pvTIr1t1+nyDMkSSFhJX/eucBl0XTKINZ3833f2S
	 6XhqacSP18s6SvkYoEYrHgUtucQpoIp/WhOnD9qIioM0po+y2wkEp13ld3SfQSRkCf
	 INCNXjf6UDDF1eqybdu22QlyXUvWUibN1ORIs54P9xYP5WsVW/inj/IluPSV8jWxQL
	 eHD+lVQUpEabArIQUwyb3CWbgPKmrW1yug3BU+JKTsEQG0FrHtgOXRgRiyzOxQJfAO
	 x/PE36SzGnTGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB87AC61DB9
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178789083369.23383.6873746207954424131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4853fa6fc3956644c806be9ffeb7232144373a8cbaceccad26751a656c24f6ac
Date: Fri, 28 Aug 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787890833
