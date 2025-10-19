Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5052E481CD
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760847594; cv=none; b=aRK+RJ+QNmH0GF/thQnfDYrKdyHTomhvtIWZedmVa3b8VQJH6HgOtPy/6q+Sg11ouHiy0BSt8KJ0HJ9kfq8jhowolsYQXq+caOK0z1hSkC8DbWJaJHyNPL7DbxHm+wa3rzpaloFazX0BV5vl8RWtBE5/CfItMSyA7DQlaQtLyNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760847594; c=relaxed/simple;
	bh=iuJxjTQgqSEsVvCPMsUDCwhDXBTZ0ZRJt/bBoZ6Cu/c=;
	h=To:Subject:From:Message-Id:Date; b=A9GM49P6zBPELNIUBfy69Vgx6kUmWHvR9oVcRyrenxxZVQ5iP23ctulynspOU0fFiCrEhxh6qDGkMAzsyqZKwXTXhi9P9PMl4J1eAX2SRIAxVXmlkKnJeSQCQ9psy2tME/x5QJfXQJTnd8RxBUw4NIO/aW8eaqKt4Hq07P3brVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QExqdNG2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QExqdNG2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF599C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760847593;
	bh=iuJxjTQgqSEsVvCPMsUDCwhDXBTZ0ZRJt/bBoZ6Cu/c=;
	h=To:Subject:From:Date:From;
	b=QExqdNG2+YrDq4K29ySMUZ7F26e+1VohjfeI29Yy14TcjUanWfLiYYT/kfhVkCDKz
	 nAL8sSe3dhvbJ05twzPOom8Gkw50oZR0TqJhQzS3K99w6w+aXCLXZIHaNjZglivXmb
	 C4xLw7OsZ4NrxSp055tvBBk0ICkaRbB/ZWlqbhoTgkBMb6td3viXSsQpsiT9ZVpKRK
	 h0RhSP813wD1QNxfq/rVQxBbJ1wcFykURZIOMcQD0QSuHWWBnrFay1gPGRWf4kUZBE
	 1Wu6Zdj6cMxLkSstzf++d0kNuMSkd8o6R06UOvBi2V1upt6foiMC56gS3L9harZEww
	 pZ292vLYpnq0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CD00CCD1AB
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176084759359.24198.16964132690387176497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4af891f5050f1cc4cdc75ef77a31d17f1a7925ee1e671ac0437ee8180d01f784
Date: Sun, 19 Oct 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760847593
