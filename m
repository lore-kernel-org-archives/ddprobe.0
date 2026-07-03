Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8211037BE7E
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 11:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783078114; cv=none; b=MAKS0U1F8tQKWNGtKQ5tsuhkaoyQdTLJW37l1UtD5MIVgvVQs9psT8RcmXkNIadIToe0hT2ihgVKO7B5vWdaB6+XisqJ4vMYUDS3lDAwj0/PGA1iJBWMfR0zq/hgf7vLR4aNW2h7TOog8CV9eAn64ehWllZIJf29leeGi/BxRr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783078114; c=relaxed/simple;
	bh=3kfIZHstyMVxCcwY5tG8ae2TZ0L4xyLxIJpe6zn6d5g=;
	h=To:Subject:From:Message-Id:Date; b=J4ElxDT/d0g1/S31sWr/6p3UhXIkGsaQoTuQRjoVIHo1FD9k9mTqOg7fPPizNqyiP9DiO5PBsZnzh7CvxqTitxWHO3KGtQx08I/GOOMlwSdhdASF5fUw+TiEkFkX/54dYcyTu26fkutP8wz9RqX/qivkdppFxOHtRAO9bXKTn1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hkhj7/yJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hkhj7/yJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9E98C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 11:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783078113;
	bh=3kfIZHstyMVxCcwY5tG8ae2TZ0L4xyLxIJpe6zn6d5g=;
	h=To:Subject:From:Date:From;
	b=Hkhj7/yJiwb4d23YHGtefsDKzUXl3P/2mc63WONIXDbjw5I6amv+azr2HcnzrySan
	 OO0yamcOETu998OfILGA7ItJkdJO+Td7qRJH0JhvF6W+ojP77JfH8SO9arfAIvK4KS
	 vlhvqLiVCJPkFy95qAoPr3oTX4euBLWOMFmSWqYkvAragbCE3BYR4eAq5A+l3cGlgE
	 V+84aVqtgwLhvHKLrZVeSsAc9RfVcCss3Sf3wG3dlDPjB9yZXFxqQyRmk83qeu+CtL
	 /yoSYosejqWTOkDUyvHbP9u2Q+SKP1vkPj5ZCRFCZ44D99Bh0zikOs3jT1QyaZB39A
	 BFrjK7CjfhFnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A944EC43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 11:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178307811368.9057.11614384821769459453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 043ef10a1145ad0e6b0a9f8831893b905e16c95c73e89f25f4476ed0ab2aa19f
Date: Fri, 03 Jul 2026 11:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783078113
