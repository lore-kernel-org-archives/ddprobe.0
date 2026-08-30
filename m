Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DBDE3D73
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788087634; cv=none; b=BkaLPPmjSYKDux8xqy/pztF0g0Cloyuuj9odIcrq4FCBcHb3KAmD+uNhpAXhQit2ggLRC8CdD7hbZ9PQE/Ecb8SOTpwrbDkI8/DgehWwfpEOdDDvWH171BNrKpbRznYUhgaGInEd6D8DyMfooa/CQ3W/cLaIezdM0DdkXPxgCV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788087634; c=relaxed/simple;
	bh=RreUxY7XKFKcqILxomnRnD/bPK2CKDvv5Bik/cgi5y8=;
	h=To:Subject:From:Message-Id:Date; b=Rpnpf3OUzfDRI2lJRv3mJ9rWlrJtM9bRGYZo91I3wGdPdx2tUxF2wlC3jsgMLFVxW+KDXRBok9b5nkO4ks3eZYIn0Uzy6C0ZxlukLq+bQHTR+/3GQjyXbO2HRkuV/XAghcOVgDktZO2zA23pPQwbxuJkhEcXsL2U0cYM/eXZfbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rv3GF/u7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rv3GF/u7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D34A6C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788087633;
	bh=RreUxY7XKFKcqILxomnRnD/bPK2CKDvv5Bik/cgi5y8=;
	h=To:Subject:From:Date:From;
	b=rv3GF/u7bq0WMXStIcSGFGIxUnX7oGN4KuHsf+3tPQiGi/AMAvEvYfKddQi0KZ6ag
	 4j/PQ2mck+raupjGIApXyTGOaUNs0kJE3ToGR/bW5d5beAIPjI7JxBUirgfUmCjIqA
	 S/hAeaJeNwQuemWOk1ld/nuj5Y6ysQnmx+pCbEUdCDT+7IRn9dPM9AVV/jFY0lMYx9
	 UkNFSQZ/7whIiSM1xCdEvMHYmyqPYai7LxXZf48HFamMWQ7wz4kR0Tv4hmX+HSOPH5
	 U2oi7uVIPOMzr6x5tx/XsIWJo+MDIjv2kJepltAHgRxB0Iwy5A2kSOJtoUoAUK5JD1
	 qQXFS1IUvYk0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B01C8C61DB9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178808763368.30721.15518092599070346638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a290e6527a4224945a22c78662c1147f56fc88970efbbf1837e81783126f95cb
Date: Sun, 30 Aug 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788087633
