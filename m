Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F48C36F420
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 09:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780823674; cv=none; b=WUblDESj5idbVlwfnPo9ZXo6cRfRIZ5YB2H9LeQwJODl4m/WvP7t7RzkIGfKsUPhe/vZ/jJznTgLS0GstX/gqXYrv5r0UGEcZ7cxy/CXlWcfbZkXTkMMxnitraVLq8QAxnGHlFx/Xh5t1NlB5UyFYzeZM5WOe39oUxclTQn3ze0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780823674; c=relaxed/simple;
	bh=lUtqqBCcXkl9ARRBt3cFzsSQEmIU4XX9p8nOK/qXGBk=;
	h=To:Subject:From:Message-Id:Date; b=IEaxqcRnPrr6ExK28HTuWmV2nbiUrxURcB7Et/EVpzevB5Xgmv1x40OIYkNZzNCjIR3mWoBG2PAljaXKNXMDZ48bqct4+BG34OBHr21lobeYlR5e3nJPzhsUZKNde08XZGPwQZmuG/5z3/Otylo8UMeIeuNVmg3gW7fk3mmksxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nqT8JnhW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nqT8JnhW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1CDEC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 09:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780823673;
	bh=lUtqqBCcXkl9ARRBt3cFzsSQEmIU4XX9p8nOK/qXGBk=;
	h=To:Subject:From:Date:From;
	b=nqT8JnhWocj00bKlpTrfKAYIhLQuLYsR3+Ei2GrF+pGC5Ajtufz6BDbUPYyzWXK7b
	 xw0OE7O5pTWJi5nhOKSz/yoZBL8Z7pDqp7Nmwh6GFNRZ5RjCR6VYmvRKPHHP30dcew
	 Su2aejnSA8X+Vi02ksoRQ6eqbtl9fxImakKNnv/spTkrBmJ2Ywv9dflh4BcQr5OpYM
	 4OSz9Iep7KA9Z2NsE1yb4xG/4oeBOkk1GrDbfRm5J1r+TWEveAiGeDYYoL621zMum7
	 TcDPNQh8iyqAj2Z3/TqaLTEhe6erK5uBSrK9WIxUfe8j6cWOmwHYvmMGF81DzuNPKe
	 ZdAOkROcCYQYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B0ECD8C8C
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 09:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178082367368.18302.14989823083096004529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc2fbdce2f956f4971ec98c0742fe30eb74ea19595fc46c7b93daec7d39197e2
Date: Sun, 07 Jun 2026 09:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780823673
