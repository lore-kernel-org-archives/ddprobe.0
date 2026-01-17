Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33322125A9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 05:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768627434; cv=none; b=JgVScBu2M0yj2faJPysuirMIH1EfrYXn4VZRsHBdjtpcoWkNgnz5+8sbdYk5clp5v5In2AoGC2G/wk/5t5w16pTijRWKd68+mCQ36RH0qsoBSEtf1n7ijq045uz4O5W6cN04WKTjOPTuimkUBTd017oTWwBzte1lr+IPMecF/CQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768627434; c=relaxed/simple;
	bh=oPXVnwY2SQcRTbLCDnokUwPgz5Z6BAy79NcAfe2Ev/E=;
	h=To:Subject:From:Message-Id:Date; b=LGRjRrzXTUErDKHhZZtzLOCrJRAlX2MVVgpuVMqi0kS31eeTXDwkIOFCz0DtI2Rtt33dusixdxCdgkwbBK0MQoALuYCrPHWSIvlxyJ62x+ljm7uRTS4XvfshaKXrv0VQuH5RHclsnob6IF6E05lFVJPQwi2xW8RzUhE0qRVwKrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eVw2+53z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eVw2+53z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3768C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 05:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768627433;
	bh=oPXVnwY2SQcRTbLCDnokUwPgz5Z6BAy79NcAfe2Ev/E=;
	h=To:Subject:From:Date:From;
	b=eVw2+53zr0DxFJwOCFZ859uNWRWTO5yfPb6H95Afw4HI35yGLbhbKvbmBC72jVgF0
	 Xzk6NIWy7rwa1Usjecj6ehnETBb4UZMZCMlkRhlxJtdQDTiQZ7eCkJsUW712xW02WN
	 8vLqKT1EJB7/CwIFfVqL3X6Lv0E7lAyt99Z/4N/+w7nGNdDaPqkWyPlnl+h/a6G/ww
	 iC53DIQ7jVqP597Jg8JQXNzNCy7Pjy5ZtoxaJntbmzakJpfXKz4SFY3Pr+SrtHJtmV
	 XZcP4eRjw22k4x3Cj91S/SDsN0Tn1L1k6C+UGSmqCVFLE40IC1ejfvihvgbf+VoNmX
	 CyqyowAhC/K0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92841C9830D
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 05:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176862743357.14608.7611500527889648783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ee5e847cff79aeb530ad3c8dfc532ed0066168a436a29c675d64f2e23fb97c0
Date: Sat, 17 Jan 2026 05:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768627433
