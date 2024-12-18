Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18971224F6
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734555354; cv=none; b=iv8N80DhfOY6Z9uauffPNQmDjNzWaeLWez4MsETwr9Tre4+6KdE0KOozH/EPllwHUZjLOPHzq97vlj9ErrJ7UDqbndQkQWWAeGfSWSOLmbaOrDQVo5LGif6/fvrSpRSYpwGQSu0StlvKoyORM1GZAJtdUVbR8dPLUSTt317WCCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734555354; c=relaxed/simple;
	bh=tpBu0bRDzmefd/gmNr3mBEjlsg6J5Fi/BTvIqyJpSvY=;
	h=To:Subject:From:Message-Id:Date; b=kccoNL+DZ8UVNMEERoBDXYTRefSWiEbYnjAKgAYzK4I1Ej9zvCxVslY1Cb+fcTi9r2RlfXeVh5H5A0dGIf1/YsbZURjys5XMKMC16ftn1ZpTSAbWkMof58iTjRnt7mqfiHlRc+sn5Eb5mIZoOdBHapr3ruFxmcYfRC8YbVOedTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JBnv/eY/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JBnv/eY/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E78C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734555353;
	bh=tpBu0bRDzmefd/gmNr3mBEjlsg6J5Fi/BTvIqyJpSvY=;
	h=To:Subject:From:Date:From;
	b=JBnv/eY/0p9BEq1ma0uCcSiA274ALRyWeaztfApIfGVjSZUMpn2dhYAgyH449qwa8
	 W1mjss9IPfuWz7fF3kG4i1TqvchO94taMmQzrVRYR7/2KOKELelY9gw0Far7yMVAZF
	 2MVgJdKCeqUswcbzzTUR0VUb3xO+HbwOucdzL9Dpzm6v9nJXdKbZYs0tcRYK10mU0S
	 uwUfjbZqBN7Nf5uVfyKgYi/e/EO6pPNQNXahmXlUdiCUPETrdkYTovUJhnA0/t8eWz
	 xTYzSZE7tXijpQCgkXSCVQCozi7q8BDTZHiiYkBGauVc3qbix71czYMRSDDcsd156b
	 uA0gML/mP7gxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A8F7E77188
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173455535361.14569.9255059381326344344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94df6c143668b2de40891fb94c96ca7160ac86686f5f5c13864f21e8b94a38c7
Date: Wed, 18 Dec 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734555353
