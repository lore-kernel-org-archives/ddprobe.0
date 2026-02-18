Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201A43033C5
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 10:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771412094; cv=none; b=rUXSPGih6dtiKYfYnmhU1/9ZWujqHh0hK0Nnfc5evxCxmWVvVoWguR21XQgOgZ4JEz/+9dwm6lv2dlHwgkyn+wg2isaXXbq3yuWybcHzikDpPXkPPZVtxyvxjC+jTgMopRxGYMvfwr7T81RnvyHXpx1eR5j+IuHExu7Skaq3/uc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771412094; c=relaxed/simple;
	bh=izw7hisF+3VPO7GJUlPj4JRUVjioYW3VnlRHEDmt1bk=;
	h=To:Subject:From:Message-Id:Date; b=PKMAx4bLybHpDP2DUnM3qWeCD6d/V32Hq8ywYSdiQCp0I3TsRc4CHX9CDbmDk8/BVzGUFYWvgo2aXPRVMjB1/jIpbrkQRYpMONcaG8+S593orbsOHlGoUfNw2H2bzCT33qiHMumHlP+Leuasvq0MkWxQSzxra+0KrBSkdlfhZFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PiPzeeAj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PiPzeeAj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A792CC19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 10:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771412093;
	bh=izw7hisF+3VPO7GJUlPj4JRUVjioYW3VnlRHEDmt1bk=;
	h=To:Subject:From:Date:From;
	b=PiPzeeAjRElmYhLSU3jQoEVm0rldnIcnAFUiWt163FKLIS9fSEOxJUgu3kWbl8u8J
	 dvdmVxuw8ZI2uvp0omFXp+AnYFSf0WTK6ygsrr6vyXw4IsxdaCPPufOb6VLs7Utjfl
	 Our7ZEZyWqgpugJOZejXc8yOLPl5i+Q/CcM0W6Kal/raHLr8sMoeH/pzFJEBwaq5FB
	 fYHw/02JC+kpz2i18VjtUy6JRDip+Dep1eCp/8YK0aIUquyzY8GzC+VbMhnZgJjS+X
	 qZ+NGSWvmvkwixGwi1y1u4lJe4wAoiQkvve9Zdmdhfll7gU8nYBvOEweo362Z2jiL2
	 61jZu7ifXn5aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922B3E9A03B
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 10:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177141209358.15976.6379762067156682575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffb1d11104647574f4e4e033e24750b28d69b978717fc21c7066681c9c9eb112
Date: Wed, 18 Feb 2026 10:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771412093
