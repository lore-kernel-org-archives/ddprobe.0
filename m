Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4857C74041
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 20:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717099463; cv=none; b=mXdJITrnh9Yi45j4y3gkllSxqC0uiECM4g83jyoAE0bqbaXq3yYgicd1uMNHmYKbZTi2xer0ypH2t6+juzQUjG1VKAWj4jr00aaqDDPxYhIdpWeQSED3bXAGCBTFbTP6SYFnM8wi79SVF8hlivfZDgx81zRRDT9kpT6UFPFGJmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717099463; c=relaxed/simple;
	bh=Cn80P/3MrIke+y9Od5KlCK7pXyP/MM3zhtbf6X6m+ig=;
	h=To:Subject:From:Message-Id:Date; b=eDlYyaBHaAr1h46AJw0XLGWjuO8DiqtypS864Y1+5DAIlDcgyEdGYoH+xwkD9ln+fs+FKbWqLrV1KIprAyiiUMQoXAJU1BBgNLA9pk75fT57Zhg9eTyb2msvCYcJBbozOqYnc9aE4gB9HYxvZVNZ8aYr61pesGllvYivCrJiRdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G/KyQaXM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G/KyQaXM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6E8AC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 20:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717099462;
	bh=Cn80P/3MrIke+y9Od5KlCK7pXyP/MM3zhtbf6X6m+ig=;
	h=To:Subject:From:Date:From;
	b=G/KyQaXMa3txe2FCf4Pmq00zLUngiER6dLYF6CQUTrDJ2ZfVHYqesp6idzbW7PrGc
	 kgmq2YDaxgwi0mn3nhO3MZuRJCtI6VdwLQ2sdhWNiMq2GUv5LRBXJu6/iFk6XAO7pf
	 HA7tzI8uBLA6hXjwC1ohtV0WaWHu/jxMFfoxRawMA4Dgkq5tghzhtf1b6OM84kGVxV
	 kkEaetGD+eEhY4aKzTZWCUYbTS/Ybiwrfd62KAk0dE+pAzKRjeR/mi5bxvlbKF4nyH
	 5nqE5/KAofqePp8LGr8+K6awYtS5atAyaMWOKisiFucN7aelut/gIcYtzjMpaZiAc3
	 HGXJiR8HCzL5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C275BC25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 20:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171709946278.8326.16580602268130046096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4335a069de0192f5f4a2fb802a65c81b863384b0ea3cf34ef02b834ae670fffb
Date: Thu, 30 May 2024 20:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717099462
