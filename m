Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4258138DD3
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766999034; cv=none; b=oRFdeQSHiBbZIDkj8f+Ak6e+d3p6wsU85rz3+4sdE6Ao0pf49o2HHR6MKwk/5NQsjY3uIrGJkpvttJXvgHVWGmNlAKi+W+hBZ0/N8+ytTIGtPJRn9XMmR1nZTX+sryzriyBADTlWyvQgOWQyRtONZrBoVPktU2VhcHT+tEv1Dd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766999034; c=relaxed/simple;
	bh=VapFvBxDB8Eqz0XkXkvD5hOl2N6H0eWTA3cTGpsECeI=;
	h=To:Subject:From:Message-Id:Date; b=cq4bqRvOEcI55J76m4QfelTPJy2Mb2F4dgbYJiOCr3ZYy3kJARsV1bxGHpdMA7JIFPa6gl65pHMAp6cTaiyIriijKrfoZK6q7CwrOTn2OCvLPNMO7E3zGr5fWYNBUKKrVrx+wYKFpgLT1bOMrkdJk0KzPjwPf5tv5w0sBVasIQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XRh8Drxa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XRh8Drxa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8F3DC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 09:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766999033;
	bh=VapFvBxDB8Eqz0XkXkvD5hOl2N6H0eWTA3cTGpsECeI=;
	h=To:Subject:From:Date:From;
	b=XRh8Drxa3yYUYdSnXBSmIbCRWAvHzoAPnVPCgR3bWSgxRTDE3l4YfwixC8pOxv+sy
	 lKCS+WBrVH6xdhrfcOk6Q4Wd2D+9mhFOZRlNEk7QFngJJ3VqgBY7DTwtp2Z+dp03+t
	 oBRcg4WtAjjQSmK21IJ/Sofx8g/S1RkEnytf884lFhbAZHwjPxbksLGNbLki5jahZr
	 WKcVCnoV6o+LwfQBlOlRTXFpEs3Q5hHLS6mP1swAbcvxp/QOD173eel7fpRtxEt16u
	 w5rZ4w4XgFSOaqczwJdjer8b7rWkYzzzSz2aoCItZTXScZEui8tNfi+q1F3Gg085Dn
	 CxMGvldPYaTPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0D6FE8FDB1
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 09:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176699903360.7731.927345775446296280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baf74329e7e87b88b9c0fed77ff7274511fd6f41d4cb9b338daf4580321f93e6
Date: Mon, 29 Dec 2025 09:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766999033
