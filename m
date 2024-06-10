Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 563517E766
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 13:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718024843; cv=none; b=UsDu5h3P/QlpED/N7J/elaTMM0mktL0+byfHkNk2NPohW2LRYPSwGxGjFoqh5PdEyB9gd5iKC1D3AFTLMdWpEB5QVVuuIGubFj5Kpd0iTBtl7TQg941MwV3PhVv9vI9UDD9wVGc2YrFuXCP1LJKoEGN/8CVbNy7KLcXCoTU9W7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718024843; c=relaxed/simple;
	bh=iAptc6rFkUJ54Di80a59lflNeeH4maXvGElnhKuxBtw=;
	h=To:Subject:From:Message-Id:Date; b=WEUAJzXRAOndKE240U4Z1n0kkZtR3NWMdCkpidit++SrbIg260vHqZWZCyieKVjzLoR8QGgidho5Yps8PqZXZPf/Nj74QFrUcW4gS8iWMwSJuhlCmbc5DMlo8K3NpnOE3PX3+UODEvfMyVYibKcoiZOPln8l+OP8DdIaleP8c08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=derwY8EF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="derwY8EF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3E76C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 13:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718024842;
	bh=iAptc6rFkUJ54Di80a59lflNeeH4maXvGElnhKuxBtw=;
	h=To:Subject:From:Date:From;
	b=derwY8EF+cxkR2SazOOAg8RItjcYXcq+Aoowc16eCnzJWIcNTfBiriUkx7cAFcmwS
	 1wiWXi2ajsVMfuhA3rsLvZG2e8E+1j3f/2J7P+ar7c3wt+l+hvTNv5dMk9QElpnfYM
	 2+b53CLaPw4PJmCU0ueb+qDwOK1/TsMWSTZ8lM3IMlwpWcfB2cmYoCvHDOD4oPiCws
	 zAouJGIGuReP2XKKe8Fnco9ZvWt2d9vBQ/Nu1xgpH0mbDImWzERRnVjPWJ+Fyk3p6c
	 +P8kdj9yFFQ+9qHs+CYYgm0gk2FQXE8gVtHdkTnYvxyI7u5ev7b4/6HFGciOi3NX+5
	 zsnMgXZSQNKYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB807C27C5E
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 13:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171802484282.25241.17397250154879496947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ffb6a7d562d3a584b53d64901a75671a845671c434309751b1da096d9c376ed
Date: Mon, 10 Jun 2024 13:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718024842
