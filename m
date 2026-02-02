Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289AD199FAC
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 12:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770036834; cv=none; b=WwiU088QCFuevLtAEpzGV3xvq2YDZKKlwYWhRFkMgYyRZDkqE304BzSEToE39ijKEqrSzfwRvc3eQX33f+25tPkdRz8ceKeUeEwKTlN1jZ3/YZZB6uUlyNVaon8exhQhZ7+IN/newTeUX199V6qJW34SY4hAwH3hkXHtIUf56TI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770036834; c=relaxed/simple;
	bh=j9ArTEhtLdFpPSulB+TQGafTJfht5x085Vh3rnflIEk=;
	h=To:Subject:From:Message-Id:Date; b=ckysgZEX880ZVc5K10JZAmyNrI9OXYz2rJvUZOV+oTLIqdVT4LGRYIderQN4jSUJS2HFwiP+kAZmh1liIFv6HeqeyXkTaboKbqQYdnC/EcUFIe31AVAut+IJNgLrP4evkKz9bjIDu+7ahtRCqnGnllxNFySCQtz2SJ54NX+EhBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SCTuDtvU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SCTuDtvU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF9D0C116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770036833;
	bh=j9ArTEhtLdFpPSulB+TQGafTJfht5x085Vh3rnflIEk=;
	h=To:Subject:From:Date:From;
	b=SCTuDtvUtGqLbOqWZ5heZnSczqlhjrTnJMVxys3oBjwOTff4tS93+sEA1AOuY7ARq
	 cIZ1/iZJOo0y4dIYgNs39y+mAH0AU03WOj3rHoCjjMIn7hFkTjxf9PNvEnbai8mTdY
	 Bn00tDEBhH242mQn7u4EFxZYyioF/+5cyL8OCY8l25L+PyVHB+Md7ZFkwf3crfhJbF
	 Bpo7dSYqOGgkjuRVaD7lHgL5rEFOhdVLrE6eSoGlE9+WE6crv6vxVj2UwLgxRliSpb
	 Xy/9V5m5xNOeOkoLnSZ9WcTDYcYqw4Uj5//LDkHfB6rdB+c67ozsyjirnDzHRPBgdh
	 G/P/IfXfOQxpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B630E7315D
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 12:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177003683360.10108.9467429433691190783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad541ea1ef9bad12c431f789dd7e207158ba5c1b6b57536deb893c59123c2c45
Date: Mon, 02 Feb 2026 12:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770036833
