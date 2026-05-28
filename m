Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D9D2D97AA
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 02:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779934354; cv=none; b=Grt8Ya09Xj5dzJcGp3Uf/WEiH8Z+uewMhKEPHh3t1qoUd9Hrrhk3JebmPi5w2xJBPRcFKKfuJFUnxXtKdcRKQfMx59ouZ76fOtKjUFGbtbPsN0jZMu/xpN05zvKDYtaE/zbgyIXJtelvNX2dNZownSgCbDcJmBrMDC2286aIaJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779934354; c=relaxed/simple;
	bh=3sp2WKa7gv3TTUl6CBS3EM8ujU8I2bfaGBO5bm9mNyo=;
	h=To:Subject:From:Message-Id:Date; b=F64vouI0TagxTnXVyW6Wb6vEhCD6g0lCjwRD4qrIi+yBENOF7+IiB6yCha04BnaITBnT1MY6OwPHB9wPHnnPKV48yFBeHr4U3sThOkU7W249/t772IqcLSyls+Eh+Hzqy+0XrLcYnJ5wrlaQ+163JmC5YmmFpT6SW8JCk4IijVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q0qP7Y5E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q0qP7Y5E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C99CAC19425
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 02:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779934353;
	bh=3sp2WKa7gv3TTUl6CBS3EM8ujU8I2bfaGBO5bm9mNyo=;
	h=To:Subject:From:Date:From;
	b=Q0qP7Y5EQJaMkH8uRUU96yIbGzogJg0u0BUco5z+TjarAtnNGYvRIKOaZgcsm4e23
	 cBDtYwW2AIWn0+12luZ+Rn8G8Pt27JOeGrBnP83yNADJPR15ct3KNlfTM/QoSrxZ9f
	 upqmvBeZulHkUDhf57BeDHJrpQEegSKcoa0o56OLoQcWf4Mp6J/Ce3rtgQzymkmLAi
	 IeYFAT8udhkv6fG/oXCPW14MA5Z9fnSo3NaZ34TWiV8jTQZVVJn8UAkxaX1Ay4E1CC
	 YImbkNbnkrN/NfCV0k60XPy90kDAgwqR1szvXWKYrmW9N2jJH8OsXBFWei0ACR3o0i
	 nQdjTGXZb+ssQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF495CD5BC9
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 02:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177993435368.11728.7946150411761832974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1a73fc45808e9a46f0ca0694a6757fec4cc900b64fd018a38c19f1279d448ac
Date: Thu, 28 May 2026 02:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779934353
