Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303152459D7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761615594; cv=none; b=B/cgPDJEDoevywnTULwLym019caFAKijWEqb1ebsIzQIQojoci4Bd1h8vMxKJOIyPC4gVrsfGg/SH+2SaWzYwm4KtndVrTZ9Cf2H1zsFaJP50v5ACuDZaBOGqZLraXtPEEcmHZQIs9RFeXO0ecMJwL2TLjJMvpBTpe1Jph/zYIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761615594; c=relaxed/simple;
	bh=CbDqRNr8d8JIFUoFWCQY8fcLjVqyj74UmNdsZAy9jic=;
	h=To:Subject:From:Message-Id:Date; b=hczg7YSkNW6j8/IkhJ6fJP5Am7vcaAVHLhdQmAG5aVEOj6BLFDhuyVkBgWccVrKkVrEyu9huoPgWsJtFBl2ZMqooyTANpG9L5l6cSs7BDnHMKximQkFUMIt26BT2pWiFTc106IxLgloq6pkrmCDHiN/GIQPpE68Osqdg6N5HwoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LSHPX4X6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LSHPX4X6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE922C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761615593;
	bh=CbDqRNr8d8JIFUoFWCQY8fcLjVqyj74UmNdsZAy9jic=;
	h=To:Subject:From:Date:From;
	b=LSHPX4X6LB4ccGjGcWwmeT0TviZ9kCEeNJUU/0A0atCZfT9PA9EIo80h+M37Gdejp
	 e9scpW2Ll8qIwHnkt3MeXBfahKEDK0fzQcqru2yEDYOBAfVQICSMfzLpqqMqno/uEW
	 Jukv9PBPi4Xco+GDblvqXaCy6K9u9Bv7+DVv9K5eSV2sk9N/76fxPjI0YAMFZ3PPz2
	 UCyrcajKulcHJ04vBTzDLKsnuvat4KTGzSjoWyJ3kEpQ4d/kWU2Y2lO2vnDgZXALPl
	 JGN+80OIRMl7RJDJVEaQfv69YzcvB2decB5m8T3IxXMG9BXo/1V3MkfYDMz2+3bP0X
	 epuYfiIBnTuVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9140FCCF9E5
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176161559358.11270.6853484064010113532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d73dadda2010e83e883c00af507fcac3e45f7b0891155070749be93fc0d0f2e
Date: Tue, 28 Oct 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761615593
