Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6E3EC2
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755043794; cv=none; b=HKbvgnx4ndVw+eEyVLrQp3XcDSMsq4C1RpsChiRanDgAcHOELECP/TtMcBEtvqbKo3LHOGewtOGVCRkoZcAZHSFy/nCzo6uS2WvwP2Fk8fupl/em5+gKr9ARlWmIbw8tQJphu3AUmZ3o+aZQ+FcbR1Kjxe+HVDdsCYO6vdmTdbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755043794; c=relaxed/simple;
	bh=2bCN/PL54j+lFbJd2eQjaGsjap/wWS6gKqvrxHpGJxs=;
	h=To:Subject:From:Message-Id:Date; b=kNRlUq6aaqkWIDlJNwpUL+793NoGsrSwaOwdNSVcoSFxYkz2Nb6Vs7pbtcnlZjPmXsUdWm8IFFbLfHdSLO76oxe0mBmBUtR44qNzGyy7dDUDIEZG0QHu/uokqquCE56wMH4Qwvhwa8VFrVnJVVORs2cY2QN3+r3F/gz34ztOPHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IMvCJSf/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IMvCJSf/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D9FC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755043793;
	bh=2bCN/PL54j+lFbJd2eQjaGsjap/wWS6gKqvrxHpGJxs=;
	h=To:Subject:From:Date:From;
	b=IMvCJSf/waSqK1p0SWWU0OaUHd1+OAgVA0JOJjcHWgp9RcQThwZ4Taq6ad9XEYXYE
	 bo1FTmKfqNAC5yLniyXlQenkfJ23Lbnck+DQ4yUuOYKnHYcolc15SyMA2JNKvnKP47
	 Ab5LN9Zi4Y96L9m7ECaldjDCnKhVZcoHaxDheUeCYPZpfNeAIgcF6/+F6Wun9zbRJm
	 OA+VkFdgIx5ks0/28pCksstkYsToKlYjtK8WqcotIEuxLjRjmesa0LdSqAKwq9gTo4
	 pYW17TscSOzEUEGDcTpg6LcSvdP4pbFQa0ARWU6oc6tIGtS1Z1GoAoW9oTUYXsKqt4
	 r+5bUavBzMsTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B6ACA0EC4
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175504379357.10770.10026252400327127799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2332f51e0acf537cf89b087a5bc4a5c322a13dfee1a3244c4c6d3641bd0ea92
Date: Wed, 13 Aug 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755043793
