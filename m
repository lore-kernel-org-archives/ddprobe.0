Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18BEA26ED25
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 04:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768452834; cv=none; b=YVaSBGhgdAbKcKA4ordy6pi1Akw6yhykgcFi3uAzPp0sisUqyxn2HJNVmy/aw4uPXj2+MeFUgWfIWFJZr7rKPLzoiBH7ZKoUdhvcXxyYSiQJYEN43YB9ChNlSGGodbD3pbVU/8mpaEOS+45nWhDMZjKvhBxzK4kyyjofTA3EDP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768452834; c=relaxed/simple;
	bh=YUHbNglJwz0nFksjD8Twe6nGWJMCbjNhzy8WBhd9bPk=;
	h=To:Subject:From:Message-Id:Date; b=f0EG4hqfr8DKLLf1KJUeFvkF5l00+87U8ydKAsvGt0d5hYDkK/sXSm1w5RKz8qRRpPAc7fjm635j9ncjsyXaZ2GT1/g2gXRTpGONzGiPZv3hyJvFyagYMK+dWowz/M5ut1h1HKEDRmj867065CG6ACEJZ0s9/78vWbtfnesrz30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cZ2h6kVb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cZ2h6kVb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2115C116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 04:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768452833;
	bh=YUHbNglJwz0nFksjD8Twe6nGWJMCbjNhzy8WBhd9bPk=;
	h=To:Subject:From:Date:From;
	b=cZ2h6kVbO7vvT59JDYqUJOf6B25ryIw1GdEZMrYqg+3GUfISST9ajGmyp8wuvNzil
	 zXUmluwROJ5CiZOpGimRNleP32DMfc3fLC+NmbO71umy0Ue+/SGY0rcz4XQoX2tyyY
	 24ASYG/idfcxMz5xFJ4IrjT43xtcnxuDTx+6eN1T8TfIcd68wFzQYyP3MPk+tJvfmT
	 CFWZnyFaVnLpW2b5EsRohVlKgaPzU24cFuxeX0H0T31pdE5gobCe4K6cr+SHvryV5I
	 gmpPxyLF5+rhzRiALMAUW19SgYbcTRDjhb9tlmvg2CzIbAvhxQI3fa4zIHNWPngae5
	 zkixqH9uxgdRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92708D3CCAF
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 04:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176845283359.3265.5140270346033821570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7db82a093d11ce9a5adf7ba60cba58ee03f4864cccc7358b6045d33a7a6caec
Date: Thu, 15 Jan 2026 04:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768452833
