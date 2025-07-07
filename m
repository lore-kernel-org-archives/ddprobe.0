Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C66D925C704
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751862593; cv=none; b=c6af9nXfORt3k6LB7Jk177jwa2JBePKK19AEADaCC+aq+MklX2yxUY8zr6870FwdMBK6XVQIGyyTIcyYj0vN+JuuVxVldpW/9AidtaHcEfD1JAm2hHGqxsAnZ6bQxgX+puvjpvPJDNh8667Gf8JXMy9Qg33Z59hiDauS0G/Wxk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751862593; c=relaxed/simple;
	bh=goSVMc4craTvgiwCXrboqnr8PcG0kmE/fpdZdvJj/Ig=;
	h=To:Subject:From:Message-Id:Date; b=BsO7Y3Kz2w4KELU/5HuEXtxI5cMUPQnw22tlzTisxskMW3i8AaCTdBF1bnJ4Fyq6A2tQCFdX+FeAcSnShW6r0o35FAwtngerNS9KliPtY0+SaJpSQSH/U4XKKwJEOQ4JjwZKCMLM36Ow+9OH1G7/kSJq3nQe8ViFwkHljn9H80w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aeo9r99N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aeo9r99N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B2FC4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751862593;
	bh=goSVMc4craTvgiwCXrboqnr8PcG0kmE/fpdZdvJj/Ig=;
	h=To:Subject:From:Date:From;
	b=Aeo9r99NPpJmnfumtBbgi7kp7JSXPepChSI8flXkI3IIvkgsrjdUSfreMHBRYOZHC
	 H+y1HyKLt7GqoyGn7hLPIOUlEjArhVsyowuY2OyCBGzffbEQsMl1ktf9KRGwGEASsR
	 c+I/oVaJUvqKPbvmntd5pRk9FG9Q0coJqNuEikZ9Y6U1a86ZTzCuWFZ6hKrAhBAy68
	 csPdZf9OZIBZfoTjzv0/+MnRSUEB7dTAqm47/Qa8Zo0O5BlJQlxrDdbbBkunJBfx6C
	 awYTpOZTn9aGk4xHeM2NcpxKWSuiaqS5mNQUHi5Ay2IcR9ZrW3F+Xo4/nSzFQkxLj8
	 BdbbneBYePk0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9187BC83030
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175186259357.5713.14476510113940872779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ce809accd4a32ed74c0cabbd99ec01eedb3f18b9f3ec3740848dd2e27b09dfd
Date: Mon, 07 Jul 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751862593
