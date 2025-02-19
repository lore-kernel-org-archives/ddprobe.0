Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 528C922ACD3
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 19:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739993334; cv=none; b=c0MZtGYjNSyGWNfhL//K/zdNGqhSvfCFghhdGIVJ1EqeifbHOujJrLkzTvR+pxVZXud/krz/ZcVukmDrpzaI9uJ7I8atQV75cBIBq3At7JNv0JlFKRStjYqUxHGdkQELEIP1S0SCQWnzcb6Ls1Hmn94sfEZ0VWFwmT59h2zmlLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739993334; c=relaxed/simple;
	bh=kRwcnpYQXbY0R5SSYCLIR7bs2WXvRxcY9Slbb1wvrrI=;
	h=To:Subject:From:Message-Id:Date; b=TFXafX7H6XktomDaLEKXn1VhQ5hiB0mrybz7o/JvtsR5/nxIa9Qvab1qCorZ3+zp58Jl/5iDNIfWdMQg3lXJvZXWbzTIKVhSARJV62y4gm7sh+sLlcnxAnhqRyaPbjPNWWJzViQYkRQdEwa/4uj5D8Moa+OFqWceOg8f4dcSjBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TuYvm4Ic; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TuYvm4Ic"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0E1AC4CED1
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 19:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739993333;
	bh=kRwcnpYQXbY0R5SSYCLIR7bs2WXvRxcY9Slbb1wvrrI=;
	h=To:Subject:From:Date:From;
	b=TuYvm4IccZ7R3p47/CGxazPYQ2WuC20+ifddMWdykR+FYMLwMb5QZYRdSkPe4JJUY
	 yG89FM1++AiE1rK+XgWRXxcBKIlMsEhZc/r+n+5mfI7rVLxAWpFzeqwlVbACLpmdL6
	 YUKdOMPBVJyi+WUiWTu0syb08xWbfjx1yDJJBRcUOOZ1UQJdHj2aSABeuZOPaNPDGG
	 eQ5Vo3dmZP9MgGSVxJSe2LjaYPrqNyCU4zeK0/iPjWULTCNkNRuqv2VUIAcXY6Yoai
	 9YxgSYadWODKGvKBp/6o0L2/Nzn++XJlJ0nNvItOXNTAKwN0Ujlk1NbVIJM9OAL+9g
	 eR+BweQUGWmew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8962C021AA
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 19:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173999333368.18640.10953038388001648779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d70acb655c4afd02349cbe063e2e11a9564c63afcb5e93c4f4a52ddd6dbe9992
Date: Wed, 19 Feb 2025 19:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739993333
