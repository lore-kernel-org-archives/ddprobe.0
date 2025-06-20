Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0CA1E47B7
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750420194; cv=none; b=U0+48ui/ME79HSzCc79jMzEHRldnCWf/yxjfRcn4AqQf3zV5JlfXxmtvc0eXJ9ZVI7fZS1OULNFhdblGHPB/4cGknri+hTOjxFQE4JKkDH/SeEAoQYI0hr8JpH6meM338PJ5G+drTV05C0irm4lEp/+1BD23TGKgB4FfUGE7Tag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750420194; c=relaxed/simple;
	bh=E5hv1vY18ulw8hHbBIxd418YmYj9hld342fSj/+MC2I=;
	h=To:Subject:From:Message-Id:Date; b=gPzCWN/1nD/yFDu1FvE18HP3aNiBz83HOquMuVhJ92tBSGs9CIM2G5iDAr8J4lCcOTcdIT4KXnKyW78vrrYvvtiGxVOCvJyVNNyGUDwpbx4Xi+fzkrEefdzRjmtDKVcw128HMofnuyyEeAQkExnu3EnOjVo0Z1FjijFpM3pTvCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NKrR42dM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NKrR42dM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B76C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750420193;
	bh=E5hv1vY18ulw8hHbBIxd418YmYj9hld342fSj/+MC2I=;
	h=To:Subject:From:Date:From;
	b=NKrR42dM9TeUHrQxOnC5aehWktJLu86DBxVt+mZG0CjJ8yuYD4bu9RMKS7QQlgHdv
	 iE+DVjcxGtrVkN0N5jPS4oOQWtt6WTVzfv2jS9d8PNxnmo6N5xJHeWE2r9ije21wfh
	 JhN++kvh5cX4yeaVx5ZBw+hyaPP+Ss1eQc0hxWnprV0q75mjsV2qXfAsMQgEyAQhD+
	 lcL4opligvBVNDXMUFRsWQerm2YiLYworiy68H5v5kxSAyfKcCcIeDzcBk7z6qyvpJ
	 koNf1DR/JLI/VAzgwbnAJPLS/N1h1Zo1jqpsvbUOD12Ac+zSPwbMTKzDlJi8E/QChA
	 /CIreCqfHXFOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9117CC7115D
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175042019358.25923.10902809178653597698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dfd79536ef06ee35bc02d12b554f803ae75d5d98724864c6f186216e8462f54
Date: Fri, 20 Jun 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750420193
