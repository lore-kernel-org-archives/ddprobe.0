Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F2B4253F2B
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757781595; cv=none; b=kv5W7drhBxwnXdNWLtYe5eRk4Dvi1/HsNQ17m3/Cg86GP3G3cFwZUSkRaz3t+5CzlZUUdYIFRP+Anf8EYo4YgCxxKnthxsuxknP99z+q1RGubdyEUl/k+ETvVGuedl9etltBTGynbxEu29E8hKJocaVrG3j+HwvkLooi0AuneJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757781595; c=relaxed/simple;
	bh=9pVNOcgybjcdvZv3LjPe7vReZha7TULjGkzEQQmw5Z4=;
	h=To:Subject:From:Message-Id:Date; b=KIxSCAGs+lZHh0MfFyc5rmqO+UsOtXTBctYnFZqHn6v2keTMOXT8/cTXZMYLCJcAS6GbRuqZtCKVS/77XPsJW/OcZlSGSNa/+1CfSx35D1cCtCta7mUiyIS3UB1YLMN214N2AclwHEJMHYZRqMhcQLhPx8XSzqcsQHZB1Lm0pds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IK9sPYDF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IK9sPYDF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59C0C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757781593;
	bh=9pVNOcgybjcdvZv3LjPe7vReZha7TULjGkzEQQmw5Z4=;
	h=To:Subject:From:Date:From;
	b=IK9sPYDF9wKjPW89p7cCBWKY+/Byo5GbE2ZYD1y6MgKP/GeUQ8713Utp6e5Mr6S9U
	 JIPxzyW757j7dGee7dlK/w4ExnKd4IIdcwO6rxTN4UAPXRuUsgRjOanzC0GuBR3amp
	 EOwIJf+r170Doxt7ShQKvTG72T4rD1vaLL+USuzb3Z99ZpDu7JnaozzYbUKuTistu0
	 xH9jKCGR34ujj0Wx4sV5+zwurGtDeQDmgCn7yzs1l0G2n1bF8AhbDKQyupVFEMOU1C
	 KFndQLLEZD5oL21kJdrEeLkg72HoHDvHZy8FC6sQVNZt+f0ln7FiVvxOIGmv9cLPLa
	 7lQSlPlJJVWGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BDECAC58E
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175778159357.28784.6376491469048683473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64e0fd4bebe1713a509b5574098e8823a31f5b1622bbf7a39ebb6e7b6b93a845
Date: Sat, 13 Sep 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757781593
