Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E0876DCE1
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786249234; cv=none; b=l1XMmSpgYSLbMju6AN8sw2/FXjlfdrsLuikd0V9vK9sGg7V2JQ7HYwEElVr7/ahCyoFwCR9q2YBv0vSlkh3Xkzb1PgzOKIRlehM0wAnmqwgEX/8YGHnzGTpP3Z2PgivcpR2TKZ4sfnSNrGwXmtSaN/6JOvVCBXmuq+ZG8PJwSZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786249234; c=relaxed/simple;
	bh=+RENOdD1ELyJMr6H2ka8gWd1thrm8KG9rqQ81IXhWgI=;
	h=To:Subject:From:Message-Id:Date; b=qBqg1BaFlHvQzrqTlKINALFly8EGVaOOoD5btoO4ohFd/aM0zXYBZ/Jj4wnarYU0zUcD/IlLE9FpCspEACQmO4Ad5qkvmzLDKQhSYKsKgxfUHmHgxsA2vj1kGRcfxZpwMIEgekKkwp+BtvMEbdd7kZRmUX3z8imR+A2wdORZ5RM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iwGuvyW6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iwGuvyW6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8572C2BCF7
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786249233;
	bh=+RENOdD1ELyJMr6H2ka8gWd1thrm8KG9rqQ81IXhWgI=;
	h=To:Subject:From:Date:From;
	b=iwGuvyW6omrpNODJM1bgev3Q0eShqdgm4ID4coYYpc/dydZVgylXhiSA4PizwKF87
	 FsbwNwHM9lN7RDiJKd9vLo+N3HUn92KtZTIxX0otQfkIEXny/vjlP0duuYcHyZFJ7w
	 rAcRH2AFRa/O4+UfV13ns2Ms3+rpVd/NJyV4Ya8N2bfSZ941qsB1FkWkXWW6B6mOWN
	 In3Fvav3KLRZ2toOiRwGN22zO7q2n5/bsZeYVfCYmqklV7MAmUE2oo8lQcskSCKu/5
	 FVD77LMKrhYdJ75jqw9Fb8wETvE3YkeSuA2ksNuq82GnK6YSP6hTprksk4xZaMJoMA
	 zqWoskAYDAe0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B35D2C5AC80
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178624923370.14549.15253951631961070132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bd16b8969af1ff49ed7ae31e53ccfa0c02b060510f0178efc9518adabdd0ec5
Date: Sun, 09 Aug 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786249233
