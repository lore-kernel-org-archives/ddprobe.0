Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F45A76026
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 05:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780637674; cv=none; b=lXcAH5gnTyucwioQJE4y8Um91IEVjqivF84Gg/8huGybxXIogeSHV4ffPkztUdBtR56Nr99GLey0gGsFRG8zupOcCMkeWpvxZ8eY4vndepuqbVJ0GMOFMEf83C6ymR2ju4nFq6VGaTbURFN6g3jxxydMQPU8A2gX8VLk+YdTy7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780637674; c=relaxed/simple;
	bh=x3jJOexNvJbGH2mIkR9ogwyvCxDpDi38B3GH/5UGtgw=;
	h=To:Subject:From:Message-Id:Date; b=hS/n3KvM2GlHjP9yeeAolMhUpF2v/WGbHaQXA/0wOdyDvfyAJTc9+xzr6IOyxQ7gtXzJ3GVRmyZ+Z9Vq/xbGmytoB5YZjpC55OY4jli6hh1izBcWkubzMPUnKAxvNwlQ9UyNZ5J/MVM3/4W9ga0ONUXxsUMwAaVYKJYwUhEGv6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XTk03Bgh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XTk03Bgh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D36FCC2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 05:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780637673;
	bh=x3jJOexNvJbGH2mIkR9ogwyvCxDpDi38B3GH/5UGtgw=;
	h=To:Subject:From:Date:From;
	b=XTk03BghoAmXCrc8Ciocx8HsLK3gqxvoY0RdSUWLvGx8PWgAxRdoP+JpELhxYfjyC
	 nCsG+trqLiwhQlYBbjiWM/r1r4wl1NBGp3EnkkcGP2jc95Nj/zFrdmpxxzxvgXwyP8
	 hgDkxZHd8KLe2gKYxn2H6meMx1DEzs9SQ2ZcVCJVIKJulaRCTgSxx+c5/h1zU3GDEi
	 7SHOE6TwrjoAmM4T/GLfAtxhoaYoRFSLjyRI8dcZDXFQtlNAli/OplDAtIrw9j/Cm8
	 OyiNDtt8e3k7xwpXxc2FffuNyqqgHhlrtlMLVnM4A7kDNHnO1HZJRMj2GeuVvWaEue
	 ftFLC8c22VPVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B484ECD6E5D
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 05:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178063767372.1262.4145463875395227580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39335b1aefa2fd7565a783f066fd024e731fe302159e355b2eb4e3614ba88ea6
Date: Fri, 05 Jun 2026 05:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780637673
