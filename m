Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C83D834106F
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 04:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772165093; cv=none; b=d03koFLpTc8PItadS7+TaoT73MCuGnTRdfjvF85s3tzrht7Zp2yCeH3S8+ZkH4sMAHLnt6G7pHpzAfZK2DX8mdojMbigf0MfIJQQ9pRiQ1LTbLuoDHymVIysb6Cpzz/Klndm3JCja/sy7j/x5LIiGOw+Aa4cvz3J7mmbPzRAlo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772165093; c=relaxed/simple;
	bh=ZzZZaYT1fJMqI/jk0TUtadaX4nBg4/35S3oqudGibw8=;
	h=To:Subject:From:Message-Id:Date; b=gbI5w49QtRkG9NIXlHdjZ1M9njaEjJQYtiykd/NoihoMDApqP34UkBFF2OoXIOac7ez/CiFPGfu7BiflR8yuE61L5+SF26uQUoCTadGSXIOMljpnFMDKmhHsvGtDmB4FO2mRjV9aadiEyYd1rrqhUiiQIBNyHLwIorwpM6HEnDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UUvNuMuC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UUvNuMuC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE4ACC116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 04:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772165093;
	bh=ZzZZaYT1fJMqI/jk0TUtadaX4nBg4/35S3oqudGibw8=;
	h=To:Subject:From:Date:From;
	b=UUvNuMuCSQtMK6cCARHe02TqHtFLuSd9Undd/rFdkxQlqFnS5jlDNg3WuOIIYGfp2
	 QpSjEBCddbP5UV8B9GQ3DRvVgyVR69/oTQH6SL5+xslkuo0qO7BhGKZdw/7hKUN3CA
	 P9iGx0efRp0hWHnBlUOghVq1da72p0JDbCVV90WnxvEQLt4DfWsAdNl6LiCNjSst52
	 x/8t9C0fP/l5wY+59OGI8UVNARr36Esc4EgjpsBHJLMda9npRZV5qXOt+UtPT43Uzi
	 oqpG2iag8efAlXmx2QCsDdJPBn+jP99Za8WSpwRdEnSv6jPG4mDocxWJ/A5vwqB3Gn
	 QBG+jwRmmZ/IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E4BFD9E34
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 04:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177216509362.26858.535832773650031781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 388bff9191312b91f8e1d41a49a9b9542aa829f3594efbdbd5268e3378961a9a
Date: Fri, 27 Feb 2026 04:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772165093
