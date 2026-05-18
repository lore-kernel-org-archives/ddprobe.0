Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61D3F2F7F12
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779141634; cv=none; b=UtnY8JZVIcVjAXFftFG1uIF8o6laTWWMrUDYdkRPDMNtFOkkCQQj+fBlVrkWGTdjIJscCXdog+b50nD6/iYvmQK+iockma6BNA6/u8e9UCLxoIRLA0Zuj0tvgk125tsv4t76Q1ia2alwkG17zCUoUwGD18K0cPF5LmAPZQh4LpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779141634; c=relaxed/simple;
	bh=vaL9si9asDai/J4/h9qP+UVZiM3b7NACH2LiyjcCnbQ=;
	h=To:Subject:From:Message-Id:Date; b=nFuQ96Ga8MvLKEuZE/9UtHkcx1989Mh67gARBrrUwB2nyDlZGgODbw1cKygQz32nrxzjfrkgetAAllb6O9OcecFu/hj9YHaoeg0v5//JutTgZIbb7bujwi8GIByYDaWfR7L9a6yzDh6qvzoRKnB+mqswCWAC6Frmy2udywM23hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lrpPkCxs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lrpPkCxs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD8F8C2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779141633;
	bh=vaL9si9asDai/J4/h9qP+UVZiM3b7NACH2LiyjcCnbQ=;
	h=To:Subject:From:Date:From;
	b=lrpPkCxskNE6WolBo1fkCyPI/m1sEHOyjQIpvRkEKA7ocjWisB4g58WvvmZL+ypcJ
	 Hsaofz+qGWS9T8TOG8NkGCQL/ic3RnE0nYcEKLNNXJJqm8ucIX3FE1OZGXcjNTqzva
	 Jra3HJyA6Vw8UfcsyKCDHXVWDH4QBnOI52dp96aNnnW5Z6DDYZ5PZIL5lpTQxmQHFL
	 +s4JJnqht2LfK57Ua/cy9VUxgTheboU9pZCCn3LPx4cSqkMIZLnbPoIvG0ORTkRdi1
	 YIz66pSEV/4rzlYh8qIraRf2zYBW2Lzq0gTCk+RylBBfQ8+YF4ZzMVR0hBZYlfjgPo
	 AA/utk7q7Utdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0F8CD4F4A
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177914163368.5449.3315125242480980308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40bdd0d82249fc6bfaaccadc243d91ab609b34a7c74e2f8b949ca043765a6618
Date: Mon, 18 May 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779141633
