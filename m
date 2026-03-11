Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1806E18FDDE
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 14:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773238494; cv=none; b=uxO8B+t46T0B/2OKOgRawdQux+oCZXHRJe0HF5xrbMScQK+BSqKlRc4IkMGVZWuXpEbn/FfHHYwvWoPKbjAD6kvQR+0KLxytzutKQRjsvYSKeoBIkHp9YNUvqpoTtGbdLBq7QU/3rk7O2IJ3yKY6T6KNTvgJMfwQ0Qz9qLRAmhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773238494; c=relaxed/simple;
	bh=RNS0WtiKMj9aYLQufFZMcStl47QHz90Id/Ur6+OwMjk=;
	h=To:Subject:From:Message-Id:Date; b=PoTiNmjgtefZLX+nHBYw5Nm+dLIjon23yPgXfzyXy0zSyJQ3m5XQychKgj2hqJ37f4n4sQLBKfrKn+/u5I/dErpv9VexRbF8Dm+SJYbGFqAkoWih+zCsXb7pY04GyyDO88z9tsLkKNasPdiMmi6daFKMskvGw+a/JHwzD47puNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BBs5s/al; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BBs5s/al"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60CDC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 14:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773238493;
	bh=RNS0WtiKMj9aYLQufFZMcStl47QHz90Id/Ur6+OwMjk=;
	h=To:Subject:From:Date:From;
	b=BBs5s/alaYjj7kjVsD0nMIMzje+PHlTZ5yZsx/K1fHqFHWDHmOfOcf2wDtMKc5mW9
	 RNr0EDYyKEzqvF8TFv3pM1te4ndKr3ygnv1aBWoIwbx2cG4P+DvNmjBETOsQbakM9C
	 str+ZYOCH+U7ToKSaxO1/JIUyJa5ZQ3y989SxgMhrq5C1BOLapKW/KkGsPWfgC4dtr
	 uy1izExRmhY21lGYSc/mN+bUCH1tqSQIgpFV8gUTffNIeRBwGdFzniMQvnTkWvGbEL
	 mbibMUdIz82RInUZk7S0O4KQ5EvTaHeQFNZaDVqiSnxW/feJqEPW2lQWXqirhr9uyz
	 LJUO6StanPgsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924CD1125839
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 14:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177323849358.19567.16585039433196527075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0123e01af21433b39ab5c79a3c63b052ee8898673487f3e40829274d478a1859
Date: Wed, 11 Mar 2026 14:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773238493
