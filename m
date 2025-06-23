Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F5052F29
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750639198; cv=none; b=ZW2Vwd5ukNsCaHG9g2vb5w7rm80mtvy9QMmg8PPAQ4288QmLOeDrU1joMpSarJmevLeviV6TvWcE28MKS6s5u+BMyAXU9f+mo8/RJ7n1f4e/AuuQ8gmEsW7aqY2Z4SbwGSoL1JwC9XwlvktJKegKzXaIsFddyiqQI+T3/HPsWPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750639198; c=relaxed/simple;
	bh=h+DDUn74TYv8J93wp8SfolpDNJmtsB2tBQgKxkzuE00=;
	h=To:Subject:From:Message-Id:Date; b=PI9iVimD+mZ+Ks9fACxAnKOyZt2qmIB0/PLQDAa5HUMejMlxO628tm3Xurb+bDaMI+HFhqjcsDPOGqeoEGt7ofbHk6bbe9RJ0aKzyGkm73/bjCSZQSCdSAy6ilgbh1UazAWe5yoedz/ep6s4pACmErkpkAZQbqP5tSSCSNykmE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=stTPVeXn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="stTPVeXn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7606C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750639193;
	bh=h+DDUn74TYv8J93wp8SfolpDNJmtsB2tBQgKxkzuE00=;
	h=To:Subject:From:Date:From;
	b=stTPVeXn3m41xn/7pRchetnFlt/yXdcS0xTS9EM/SCRzl6Ip3jXrrl0edk2Qu55vw
	 EAAjXT5iKefibkrRyi1xEEKugqbKMAxf6LJNvMegBrw6VTSh+W030/uAzdyVUFqwZW
	 f2mIi2KrnUrpKabZrNz7TPlh946EjGUKQCZt42xhTUAKmVMijsXqB0yL9P8iKGJdFy
	 9WgGq97CC/JDzmARe3xsWG4z6pPkK9rPbvBeS6i37ESSqBykhzpAYdrcszJy948TN/
	 UsCdHOP2R2zB5XTAwwFUcMZmGCTf6whNPcvVmp7YrU44GfwcpBkjVf3yT7/Yu6c+Gr
	 0QCYRLpIpl4cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EAEC77B7C
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175063919357.864.7670361668562449862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63c14bebf523e1131c5f55e7efca0b3d5fcdabc7ad416153370c49aa99eacb6a
Date: Mon, 23 Jun 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750639193
