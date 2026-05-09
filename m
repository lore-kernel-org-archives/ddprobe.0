Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E18D623D2A4
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 11:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778326055; cv=none; b=pHttQL8FSlGRZ3b675WDtbrNSGoaFjZe/W6FTr2W1OFmIFNziejQgXuWybLpgy6Z1ajzLeNL/oO2qr31rtaspYEA7mYdN1BP16f6jRvvnNS5XBv5Owa60yA0+d395RXYepS8pwgplz7cIB9F/ADQico+tvRfJP5jrGg1V/KpTj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778326055; c=relaxed/simple;
	bh=pfGzs8ENnO9wEq2gjNbf0xt3yx5cG85nO6flQ4aXNtA=;
	h=To:Subject:From:Message-Id:Date; b=pqRF7xMWjC3I81LMQKsE9P1Md2lrWC5the6+pMSkwDkBjIsh8pny72ecDkZv7nt8XAkzIW4lI1YnJTw7kkma1X0ItiyGhgIQ6gwNXXsUuDBZJAyYJEiYE0ltC5QB9fqbommJ3g3cQfkcswbqNem+6yOv5V3PzDrKbpkr1cZW5BE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CXqv7PYU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CXqv7PYU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 29B03C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 11:27:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778326054;
	bh=pfGzs8ENnO9wEq2gjNbf0xt3yx5cG85nO6flQ4aXNtA=;
	h=To:Subject:From:Date:From;
	b=CXqv7PYUe80eUMJI3xW138p6FxZv/VivOv3sQQIL0Des2hdUr5+xTGAtIiQJnQHPh
	 Yz0ZpsIdSm2Cpgitb7drPStR21PyP3D47KCEJ9ypCCnFjYZ3YiezOGuDT6JiTzRNl0
	 mivp/iB20q+A1SNtOFsg7+5YRcTThlZKY2cpQJ+orbSzcfPWWOQZa9AURBuQwA0S6R
	 nh/NP1NnO1bBlRVeeQXdFbPdsuXGtAGy5dVwNlVCilKONVzcL1zmSZ+TmX86GJhL8A
	 qWqoSR11uaVkftR2GFl1I0VCjHRD2HVU9Bi8twECn/2KbBeTdOEOXsf4PgNAUBs1IU
	 6PqxeFH8wzgpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D860ECD3447
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 11:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177832605383.23212.4632896706792655146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b102c8248d4419f5022c33dcddbd5eed97bd1c87847e479207769d563931055a
Date: Sat, 09 May 2026 11:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778326053
