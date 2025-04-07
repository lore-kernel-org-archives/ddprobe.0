Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B989188A0E
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744006794; cv=none; b=JIVWyIkLXT/StdCumXQMit55069j8Xuft744v94paeiLZATKwdJpbtOyQrnW5lr/v8VwH1hymXjdGiRXxznQJXLWtuV2SAN9LqI7EnxIkhGYvvzcp+jkuJWAHekEaWrAfTxQzgQ7i/n+4MxKX17//kUEuD0vbbaBrS8JjqFlkwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744006794; c=relaxed/simple;
	bh=p9YecSn9BcRStVIWGSFaNlaiZjHOnSr6NMK7F5tec0k=;
	h=To:Subject:From:Message-Id:Date; b=aXi9zF8ApuCO1gXuB1KfAgTThhQNpcHeGfBX9KsVtBjEZpG+ewPZUgt7v3YExH++g7nHEH8L/cj34qfDjLmOBzQ/Xa4iDGOQS4cgSN31bNnyq5fB5gSxBPTdFziBz6OEIfi/hHcRbNLgxNBf1yseGhYBzA14XZ0QRlqoKlHdNU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FH9P71Qw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FH9P71Qw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6DFEC4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744006793;
	bh=p9YecSn9BcRStVIWGSFaNlaiZjHOnSr6NMK7F5tec0k=;
	h=To:Subject:From:Date:From;
	b=FH9P71QwHbk/kPBO1/SUPdKir5CIF/o4RzuG8G3amDaCx2TZrk8FOBLUSZuVhXInN
	 WvYSEaIvhSafzzkzRC4Z7sXUA1VT4hSB5/J9QkY3020oqv0TtvOzc1/q0JNIwK/OnR
	 9bOHor5kdeUN5EQDJ/d2zIEHJuivywq6ZsAtJMW7dNs86RXOP3mHarxaYw2oInk9js
	 GLwJMLb1/8aIoLRoO3AIhDYk0zvQZRunBp1AeSSw95ykIo7xpK/sdia5JhX8ZJrC2y
	 bRO8BJJsIncGLQnyUmf36+IzauLQhEXgoW3RF/tPKsuwPQSrsDO9anHZdetqZV9Jrh
	 akuiJVlMaU9NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CEEFC36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174400679362.27605.16179853141721724230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1872c0f83d1c5cf2cd16eb4662730665d348506f7362e6b3c9b0b19653fb59ea
Date: Mon, 07 Apr 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744006793
