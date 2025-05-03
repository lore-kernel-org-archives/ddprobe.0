Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40BCF29405
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746254995; cv=none; b=KjL9y0LkjqwFww1zmREIqRkm0WZsLZyb0SWtY+zy639bebtWMYHB7OuECuwt9nb+gZ6YPKeqJqtT50ZpdcV8mxjimi0H8iQ55EbZLOXSXwnNt/KwzhN1LRYzJxvj9+1VSIWKzrBDs3AZzHfnPL8oz9uzGFVmp8bFZ3aFKrTdJcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746254995; c=relaxed/simple;
	bh=sqvDpOPNJW5rxxw9f/uXyDTA1ImF7r8O7c+Lqo882qc=;
	h=To:Subject:From:Message-Id:Date; b=d57FLKBbi5TA3MrG+PJ/LVptRBdcQX8Fj4dC+jZ9iIrXVxrb1+PgeL5CmuPQUdrw3vZZMB6gf6UveaVLvMposhwqM1rDue97oLFFCkLU9UIPyNn3l9KSl+lIGqRdgvrmlp6+umQNQRtEVylOPkSsQisQ6Z8VDqHUGC5wSLgPlC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oHdylT+H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oHdylT+H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F625C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746254993;
	bh=sqvDpOPNJW5rxxw9f/uXyDTA1ImF7r8O7c+Lqo882qc=;
	h=To:Subject:From:Date:From;
	b=oHdylT+Hh/Xs16Jm+p5h3cjL0yiHVRiqABc78uZrL6agfPsHCCaVfwW4z2TczQLUK
	 +0QByjJ/c6qzaCQKwbHbzkg64XTXoAavw1tJNBZze2p78J4cwG+1YhLwEU56Mrl7vN
	 cSGwIe9G/K5S8OuEGgfsiU8fAFdRLYtc22fZPSi71JnuFgboWgPtURRUMk3P8/ujHt
	 EJ5vXN+i76h0RKIR7Ig8RxVt8R4OFfooRZAg5nF+bA8vXxnucIY1YKXJRvGExm7aOm
	 dgPnWVAkeMlTSqg8KDam8KJpyKhWYch05GgzxBSGKsJ+UVOhizaFIrAkMvie60DQSf
	 G0hE1TrXyCyog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3C1C369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174625499357.9612.13655975732608527251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b390aa7064606c2b930e3b5037dd28d3d85ceb44c1c2acb9376a6e71624258b0
Date: Sat, 03 May 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746254993
