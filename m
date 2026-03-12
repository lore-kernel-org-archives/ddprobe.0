Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17CC035B650
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 09:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773308694; cv=none; b=foUEivQCnucJim1EpfaksiAFEgDnNqyHMCelW+x2LoyxZGKmCx5GFgL4K3uGSbSfBvyKc8NuIi8/M/U+SE6PJLwpzIaU+yRo92M2eQVXBDaRjNg1fKrotmVfbcZyg6SoP/tZp9AfH7GH52440LIlgBbBBzUzEeMXWU33J/ASq7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773308694; c=relaxed/simple;
	bh=u+amcvNEp1OFjxde5IozpHgdnsx5EsOl2eSzlMWI9kI=;
	h=To:Subject:From:Message-Id:Date; b=crRsfQTsRBHYdje2PWuquHBEpnH8OY+gmLIMBrQmk10tF+Kq6bZUxMqwLUYj0NCTLnabkoV+L2/8OFGEfsPDpqEpelzSZ4L+NZfTpJLZwVfcTf4wU9Lnvcuuj8ZLWOVyo9qsMbjdZsKUXzQCM8/OaXOBnZ+wsc5jC6bbIIgni3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RWIk7CBh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RWIk7CBh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D56CC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 09:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773308693;
	bh=u+amcvNEp1OFjxde5IozpHgdnsx5EsOl2eSzlMWI9kI=;
	h=To:Subject:From:Date:From;
	b=RWIk7CBhOPWuDgQMDa1EfpU6V+b8oM5HdWW6UsRpHIvlv7tVgpGsiI/k2WZrgc224
	 bTof8U/R9uO8gD65e+CFbLaTEzmA88LBQMJVX6kDeXBgVj4axu8ONpZ8qqqDS3QP4o
	 E8l9u9Li9GNv17egHh8wvTwLrbUQQE5uHHSFuD1F4NClRIvVs4FPJlFa7DHzSQFf4B
	 Cx/2VMuRp8FHidmfqe/ZJhezDC3DQwO1oTg+NRUNv7g8Awx2QQqiY+n3pl7s0CR/OU
	 /MnMJ7jzm0swJmuTdfSllF+RMRM/fxcXcwuTPxF9Gbj11rzX7mx0Ay67nc1q9amngy
	 F4Mlh4NaJnY0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F275FED2F7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 09:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177330869357.10488.6361675165790786168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7019e0259d8755857611d76a7051d67df9dbc2b8c485acb80f8a5904f073bd8f
Date: Thu, 12 Mar 2026 09:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773308693
