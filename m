Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53675184E
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734921954; cv=none; b=lMXgnI/mMY2hS51ZEml9vodmt7EMEbdnvAiATzqRjnV3LZ5Yb7HRjSoZAzIC1eYaETkzOCkJSDR5WkhHwallXkuNpw83qYhxyP8lrssgEatbbQhudeVQiSjuP86/9CUhTOWAUrZSOIGcLgmEIHFTLTyFUFnYLRhNuYkn24F4LlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734921954; c=relaxed/simple;
	bh=jQ83hBFata4s/Vo7ybOoIKOBxgJMKV37OaUg8s9XTPU=;
	h=To:Subject:From:Message-Id:Date; b=TebNrwMr3PiNdpJVdN47JCXMqj243isZ0C472mUKvv8A3mj1lnzwN7UeVrPZuNObHu+Vm+X+H321BQBoKQeymNyakTkKTwb+Ks2mrKjoDKf4NG7iVDfNRuIOpxqMIE3khCfCxWH6EJPrCCaJCV+b8zkBon/TdasXTkd10k0VGAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cCtPJKim; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cCtPJKim"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4DEFC4CECD
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734921953;
	bh=jQ83hBFata4s/Vo7ybOoIKOBxgJMKV37OaUg8s9XTPU=;
	h=To:Subject:From:Date:From;
	b=cCtPJKimbtZSJWffLQ8+/k9KZri958bChUVvi99kUaKeu/KvgjmqaOVR6NZUDp8w9
	 YV6G3vxU9j8APLQL0LccUoYapaNsdAZc4yB0ZLJcQMZPAOUxlGlvigDBimMjwZzAkh
	 1sys+LzP1OECK9DbxUpmK+O3vdvGcWD960bnyeOxq7svChouXF0vGKBnaKZYq/+dq9
	 Lj18xcwRU7UxDHo4+h03+FjdFCpWi3Dj1r2AVTZ68hEDZy25naQ4lSd2PAJxFgPuik
	 kffxQGvyu76MpwEJzNF1UtPX/slXVwjLav/wCi+ShkUaMjA2O53BCXqKTO0hW/2xHh
	 /M5wSlAWVlS8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F2EFE77188
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173492195361.24254.6559644039041318928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 832be35509d592249f721f77224d6434d5846244c2124115e5eb9f0ecc40ab80
Date: Mon, 23 Dec 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734921953
