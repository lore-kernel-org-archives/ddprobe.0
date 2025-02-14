Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F921E502
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 04:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739509135; cv=none; b=bMThRAIoyQkJmuc0i8fQmMngpyUUwdheI8dJGweOkBdknxjEFFcfnkt7WnTAICEuKrfngRqQSRN7cRBSlgiAD6omDf267+a18wO51/0oBI2NVdEtpo19g5IcVN9bI13Irj52g5eLyqS+wgQDS4zEg/50MBapnlxMfwyYXrQtfwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739509135; c=relaxed/simple;
	bh=h2BuDMUbhcWZagVokGxmVUmRJIdvRxi/9BrPLvRBycI=;
	h=To:Subject:From:Message-Id:Date; b=lC24WnuZuUappI2O1o5NU2iL05cwgQlmpPxQL3lmCmC58FZkSGkvGb+V04JXcCTeuSczCJNrqlisJZC6+D7k+qxwLFXFDx7mY1BlJA9GuGInAMmuVZQd/+9ngiZXcij+5JcjXnwgGfEbzhYR/+1VWkJDi5oojzj/4bvlIYMQMg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tDfqUYwj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tDfqUYwj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A257FC4CED1
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 04:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739509133;
	bh=h2BuDMUbhcWZagVokGxmVUmRJIdvRxi/9BrPLvRBycI=;
	h=To:Subject:From:Date:From;
	b=tDfqUYwj8kdT0W1d8f08Sk+VPcLAzm1ySmJuXmsdH8xPDAetYitMbcEKU4oalu6FV
	 Bc7Lvc5VEVrvI54kTcTzm2APgyYxe7W3DPiGiTXQZpbdsRZWyPwlKltnyKaOXP7XKD
	 fxHS0L+pMyulGhXd7BIcD0TEuYTtmCx/9sm9mPLx8z6tafYKGZBZalICxTGmUjkYem
	 FibBaEhasnnn08V1u+Lgf1THnG1dQLkdKF/7cknvOVeMPxDGvSLIUJ41Tih5qfVl3K
	 d1IV/OKg0p3Z3V53PCMEOwDYvuH1NCk4cw8mz+FW6Lg0rq8Iwps5FQv2UzllFhOIOP
	 9K1UjYOt50Jew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9170EC02198
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 04:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173950913358.23254.1920284129173787878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ed5f5228edeaa8010f0fe8c0b30151ccf0562c5cf2845ed7c26968fece3fb1d
Date: Fri, 14 Feb 2025 04:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739509133
