Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6885E28EC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 05:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718774963; cv=none; b=emLh3YBlOSkGKW0fsgkKVzKu8qL4AL4puR7N2HMtazPHHkLhpi3XNp1pV0jYJmDug3BsphnktfdKN2zQBR04pRPfh4F63sH6icRn2X/atHY6NplYanzgRugw+8mZH19TDzmY6tXDROHnCJwB4vUamp7r+B5RMYulVFKSClnaqQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718774963; c=relaxed/simple;
	bh=NKxR4a53pz/d54tJcQhNxc+IVnlhtdg9D/s0eanywBM=;
	h=To:Subject:From:Message-Id:Date; b=pS1MbCKYu7J4DNE9klaMJee50GWPuUXg9Q2ZjeXA1PY5bPSJRHA47hhAXu+4tFKLmhorE6i4UQQGAkGryR26EbN4nTL3AogSrogvmGXZwMIi5DtRfW2hjqqF8IjC2IlUdQxLcABO9zh0/kowLIhwJC+kx+ZaXy5GBEQ1d+sGpIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a/ZdaqfS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a/ZdaqfS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4FF6C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 05:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718774962;
	bh=NKxR4a53pz/d54tJcQhNxc+IVnlhtdg9D/s0eanywBM=;
	h=To:Subject:From:Date:From;
	b=a/ZdaqfSubogsbxUj5O8jVkXYThEzxMLBw/1x1n64DMgxe+lnkE/DMjwx9fy5iZyG
	 TAt4JhJPZVMlgduc7HE0aT4PjMeyo6RqR4wrAavCZIKKVFkvqS2bpjiuCdXNN9CHlN
	 MhrJfYFyrUYEF4i664yrCg3vlJGDmE4O+KrOeetEhwUm9BGXl/VB4kvCDZIg6HHxWu
	 teA1w072XsqF+rsbvU4tFavJMbivRJ+EDM69OY4sBSEREqTOGpnbOTs3RomOmQ837w
	 iXajML4124GYFcZBnA9vUC8LL4lUgArlDHnnOZrJ+AOwuPdgTmQnljFW6ZSHUnlv2P
	 bsxB0PEQKdySg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF579C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 05:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171877496277.24488.4278745793713897957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20e9906345925e37aabfed03738389f038365df73c60e36d5c1dd6a9a6363ac1
Date: Wed, 19 Jun 2024 05:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718774962
