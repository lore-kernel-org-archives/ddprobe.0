Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A9863988E3
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 16:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781972794; cv=none; b=Q53rm57/ofDi2Inc30DcW79X9nvEQMW29FdVG+ShJClhL8CzeM+ymLdfEfdV0SuOx2tHzgdUqqpQ8K6a3IW7OKZGqFsAzwYLEaLDNMKXz1yW61I75JUkd6xWeGBSYdm/hb6ns+qDIO62EwhIArjKAclDaWqlBQUDkVwTiYb5KM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781972794; c=relaxed/simple;
	bh=GrCQAHil13A6DJ7echzjHlnuN265qFuyCoGk/Hd9XU8=;
	h=To:Subject:From:Message-Id:Date; b=hrBfyIhylTFzk22n1dBN+O0+29VcrvDNZsoLkQSFoiiO4mNef5voeHJmUuVpgl8MAvrYhrSYd8kNJd6ZsZefTnsNyjOhYNRIa4axuQCbiFU3Ntl29NXGyhRJQ11NSgALMeNb2DSr5S0W8Uxp6tljpXiJyNJJ7X3pMRywlXjgics=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QT793dnI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QT793dnI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBF35C2BCC9
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 16:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781972793;
	bh=GrCQAHil13A6DJ7echzjHlnuN265qFuyCoGk/Hd9XU8=;
	h=To:Subject:From:Date:From;
	b=QT793dnI9YNKpAQSxl/7a5fhG0Jm7ubo083fKhlSy7A6unoRXtoqenyiIGDevtbIH
	 efgkFfTdNGGnuky5X6etdQq6usSLLNaPyA09qO4KjIMLQYHwggJ13+oqYzQjlN//+m
	 MRWT5X9cdh0oY/qjrhSi4qvcc7PiJPVLKgDcAzrQkqMH/T+JAobgN8nRxQODjOJnVI
	 I5ozgRSDkRLtWdY++m9ycON2Vd1LFJAl9P9MpnKJtTjqsPutRMyPK37u4DRkVukRFN
	 OgC6hP9Vp2mk7lGbRJbB5ug/SgYlYvDFgJFoQ2ZBG7K1DorOWZ7Yvy9dem+gnwtjzV
	 k2PgK1VpTTmbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0848CD98E4
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 16:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178197279369.2505.4096322990490032248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfe71d2cb67da2ad5995a2dbb6c1c973b5bee7fd0aa89626d6bf5048125ea143
Date: Sat, 20 Jun 2026 16:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781972793
