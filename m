Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66295168DA
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 21:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717189463; cv=none; b=fD0/GObG93DeEsYho6Smd41Jk1JS48V/9/gw5PMX+z4P+EvBxMj9P3ZPN3onviCT0HoQ+3xe3gkERqgz+5LpxkJLscEXsqd06Y5bViRiV6TWnnCmzyYHF9Vp88GbNH/Y0VKs0iPKrinPWtdWo/YCcz65/sFNA9XWW5dlGxXac4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717189463; c=relaxed/simple;
	bh=ZbiZJgAG2x6j+THEWbVefd0huywEozFtar43EQOGeUA=;
	h=To:Subject:From:Message-Id:Date; b=hbu40BZLI8IDddDNvO7eUHP91CVzRTC/br92hrzzaWV2M+fNp/a84R1yysHpBHh2dr4t6u7fM1PvlMWzDcfgw4XL+yjAQ+QQcuNEvsugURIhGmhlVC2+UhOHEWeH2zgS7EhWmGdr39CKD5j8Emi9kJ8Kraek4vqMQn0/h4akB3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vHcpsmKF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vHcpsmKF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E29D4C32786
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 21:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717189462;
	bh=ZbiZJgAG2x6j+THEWbVefd0huywEozFtar43EQOGeUA=;
	h=To:Subject:From:Date:From;
	b=vHcpsmKFZ4odKftnI7t2o6SYrxz1D5AOLLRw89FZoMmWnD1HlaZT5OZ6uPWSPC56Q
	 lNzVHvZNc5jgXoAeUK1ZYxlEeTjyJ+vyNy443VxUdrak+O92pXCPOLvNPkV9gBOIfV
	 7VLWLk61QN2NqwrUY4XUENt4DCf2vUBQsw6fRBLy9iACACyZaZZaadutZ0jKpvCrMG
	 QHVT3cR5J/q95sXcbo6yQEtjjyQjZ49ZOeX8k7pLTOeByWZ6GN9cMc4BWOmvQLKmYc
	 QGKpsikPR+/36aVraUoIsbC1aPICU0H+0fhYu4hH6ShioMme2e/W7L6JL+EFfM4lMI
	 TX8JPo92+OIEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBA0CC25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 21:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171718946277.25275.13556387203620364343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 247b8b656f1388ff36302986df36e8cdea3cfd57c9fd980f1ae2f9b70a73705a
Date: Fri, 31 May 2024 21:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717189462
