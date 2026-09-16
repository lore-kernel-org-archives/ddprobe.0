Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8159F4BD7BD
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789599034; cv=none; b=BKLUM6fONaEgdJwONEpFVntG50zO6bm1HpAYzn4YC055SNJGhx65p6jIh5G6gw/Osbnbwskt7Gv/9vdtduQtWb0H394dRfWG0cAtKqebEZgC4tR0OvJTeqDe4Yp6S4qRpTCGNllndYIGHLHvyjmrF+tIM9K2CaQieZaPDm8eSj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789599034; c=relaxed/simple;
	bh=vUwgcchpoDodwVWffuAGFAimeLxlQr007g2f5BqTvh4=;
	h=To:Subject:From:Message-Id:Date; b=LAM3fm8s06J2juwEBJcGYqgZD5YofweLf+XE27JNELdpMuINWvBHief0fGurYbH8m84Z4vmQPvgC+O24Nk5H0Cy5TXGHDoYoWS4RZQLaylCkTQWxDbNaKGfjAoWvFdLXj9P0Ko7QUTvfLrjUkxCV0hqoKCSVzwGkJo9xwnaW5Xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VyVw9mhU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VyVw9mhU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4697C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789599033;
	bh=vUwgcchpoDodwVWffuAGFAimeLxlQr007g2f5BqTvh4=;
	h=To:Subject:From:Date:From;
	b=VyVw9mhU/5IJU/FhoFT4tTjj6Rz2DS1qavRLB1M8keKP+yvnAufebxIBDJMqgPywV
	 5XxCERcu100wRz8F3Uejzc4mv0Z8TBUxMRlfqeuADjOeqSa86qfNPTbQD1ANYrsqRH
	 15MGc8X+lu+dyaXz54HfZCjUyVtK/dG8QzdwhpWJN1rlvFq4Hn7T09A0Abnplf2V0Q
	 5WmPDw9jwy8J80WBtXFixXJN/kRBPKxuWeBZywb+G8r9fLNDmcqFUIEvf4vOanDaXm
	 zBDfj5WT9+/3FpPwQ5QQLJEz654pzfboibBhHzjXDOdEy/rds3tzXYsrZ5HPrZr8SS
	 BTMJxDf0kJqsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD25C982C1
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178959903371.2638.15574435975410091392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 483531d426be63913cba7c1149bd785e57ea734b81130db3e0c59c2b83e89987
Date: Wed, 16 Sep 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789599033
