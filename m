Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B1492744B
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 11:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713355163; cv=none; b=VsWByOqlH38KeL1JIvGpYtvzQiDc1t+2jYLQfUKE41tZQuWoxCWXpFdABBz2cFVs4U8vE278UyOIdlD61gGpt/YYHSEiuqIRA6Sg+0bfcitun7nxpR1d/3bit8JOynNeb2JNwMGGIsCiDU/ZAZD1AQBwrrX5g2t3LZlPnG7YJJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713355163; c=relaxed/simple;
	bh=7WyXWBEEiqRsDSNx7JaENQmmr70n01exdRrJ3mQoD0c=;
	h=To:Subject:From:Message-Id:Date; b=KQV9HTU03GZ8c2VdCWw7prDr2yHLPujFBc6TPRopPlKRiDaaKMUyMMQ1M66zsumvrrqxhsm8cvqE2/usW2bp++A92uBkCiC4qCwhy5PWBpV9Uip1fpbZEvBnwxWh76Ktq7St/+KPrAzFrnymy+qh/xrQMGQxBWyTEQTFKjvXbLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OT9KzNMw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OT9KzNMw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D23E0C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 11:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713355162;
	bh=7WyXWBEEiqRsDSNx7JaENQmmr70n01exdRrJ3mQoD0c=;
	h=To:Subject:From:Date:From;
	b=OT9KzNMwT+KIL9bJMxiTc2v8zpY06skeCt8D74iuwJAhVnw6fwF9KCEkLko1mVsTR
	 WyIeUHj75SgBj6tIgucs0jyszbgJrCksPXFPfXwtyDc9dcLm032+f1vAoSvKUn4xAS
	 w+js8CYQ8AnZLg4v8Ayo+h06aLc/wtxYP+AKSWJDrly4BDde5sEqxxSQY9y8RRFLvj
	 0cVzIGHiktNqp6KZRBQ7Ob31h0yM41+JA/EmnXFel30WtvM5ac5fJtdD8dSNUlUbPu
	 yz6PtFPTgud95WTnBlof2xCLtOMGE8Sl+KgyDxkfEwygEcTii3kSZ6rDy4bGU+pU0B
	 vpyZKd3Sa38DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAE3AC4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 11:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171335516275.1524.14705130548155707691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12d41827b1dc147b858f63e6052cd6337295abdf561d98695e1ce1219069b611
Date: Wed, 17 Apr 2024 11:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713355162
