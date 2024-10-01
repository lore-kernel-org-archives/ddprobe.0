Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E34F31B1D4D
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727755554; cv=none; b=MyURMyBnjEin6T1RJpnCstk8LE97vqNqcWMH/qyowylembB/ygau/ivqPYDxf4yDTzfVgn1NHFDF7ntUGPa/nXWeB49J7N4cIl98T6Up2bzBmJvJeFvAfRhX6aO2BA5Btc+SuZa8nNxtskqQY3W+OIsDyVYctVJB9gtvLFGIM3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727755554; c=relaxed/simple;
	bh=bUxVpvZ/YWKWxLLSW4ZU/47Y256NdIEV+RSI0zI8oOY=;
	h=To:Subject:From:Message-Id:Date; b=kPiHdPY4lXZ3gHcHrA+/4GBoq0p6kx04n7JwrC/a1wEePecIbpqhjNF4nO0lUdumAY6s9XerW5CGlcSdPH6Unw2lv3BTp4q0tGeSZTWk5j8h3dBchRy7VbBI/sA1E/OiNqhwj8dpMOIyfPgeCe+Oz5xsauAcCYzUEx/J/0v0RYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KKwX0Djw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KKwX0Djw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C717BC4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727755553;
	bh=bUxVpvZ/YWKWxLLSW4ZU/47Y256NdIEV+RSI0zI8oOY=;
	h=To:Subject:From:Date:From;
	b=KKwX0DjwwaFpjU1gaVOhQQCg9lBKJUG/Fw4vQMjXnROFHrj4e6WsMdLMGPOtOhdRf
	 sDDhJoqQWqgE8j7994wf4dwNHmIvAPEC/kBGWGFRBxeUlpSFHTWnCjA78/9CAtQmc1
	 QioSLcMkocViXZXSGi5vZzD6yjCJRi3pBwsZk04TWJL4+Np3AwkZryCqUojONycbz7
	 Z9c0icrleP1ioW9UQGTMbpnmob7plKCd8ykikDh6Lzi6dcgVL5ek9mBO5ysOPEGo6k
	 9UDKfVgbaywbt6eWqGCX+fJ8WtfNWTRIJ9LZpAhBhKT1oCjMuetSMXAmW3zvKPfBTi
	 J3+wEUir1sM+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2712CEB2E4
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172775555372.746.10248528459645150923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06b17d771ddc3fe11e231fd0860bf0b742b1bfc0b23b35f75ea59fb45236faf1
Date: Tue, 01 Oct 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727755553
