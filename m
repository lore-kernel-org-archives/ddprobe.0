Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E92B1337BB5
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 08:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770538434; cv=none; b=T0Zoiva10EL/kKad0c3n2RPCtG6LVS634zzUNKhFjF2JOhK2xZHIQRlf1mnzHhYWBFBzsrdbSz5QDaf/gkKQFozCVdJbcb34cPmcYXzCUI1P56v93Vb+sIegQ+AAFhghOONj7+U8AKig6fL428HZwD/m3q39BmpDMMthm2yJQDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770538434; c=relaxed/simple;
	bh=kLJKz87K12YkalpwQrpL8xQxVajkacqU/7i6RXvYQYU=;
	h=To:Subject:From:Message-Id:Date; b=oHMFefZPzkUoooHr0SNiTckR8vh/VXrTXgG4hCy9LwCuMlWEFgRkLwDyXx6mPZ7oDOsNpXxdW45l5PXPdrZr+52mdwg5jxC7MBSVh2ojMsv670dczFZgLN6nIfRp/4QwD6R+CQ36CXFm2WSoAr87GCiwmlHVgbqkHqu66EKwnI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TUi+JZaD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TUi+JZaD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE8D8C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770538433;
	bh=kLJKz87K12YkalpwQrpL8xQxVajkacqU/7i6RXvYQYU=;
	h=To:Subject:From:Date:From;
	b=TUi+JZaDmpDqxHoq/qA3J5E12WKgASlXMR+IlIHoDoDbSYuOfl4237xinZ8LQe4AO
	 iMOCCOF4lSVd4wqj9VFwwy8IR1qCUu2P2A4D9A6KM63nK5HHMst1/92yULmc7kvBaJ
	 mk7XuRX/g3sR7em639JLRNlua12MCdvtlxW77+IQqfthZlFIAjGS2ks8Y7Q9tJcR9T
	 F1g73U+A9IG99cOGJr9zifzTu73YcLMPkV6lAobD84DQuDYrUgzMhsjOAuVijKtzy5
	 d6eNmk41/JPazTqtYmY5Hht7TCw/lTzgjfhGxY4DqvgFPMNX9Dkkvbe0nSnsMlcWT3
	 MOo+DSt1BvmBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B513EF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 08:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177053843359.14978.8547932980184493333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d0ac5e7c51ef407ba36faa04946dc7441039b726a16eb3d33866994f8656a26
Date: Sun, 08 Feb 2026 08:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770538433
