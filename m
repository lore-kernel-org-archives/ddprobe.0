Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 506C9219ED
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753927794; cv=none; b=WeSKES/3Hy1OkrfGYm4dwKWlz35XPWgjer1NREWe296U4OvqcbIYyQU+YYc/KvFevvzwcZRaZFSqA76Qg2/MmRJ3n9U+uoSV6IthcN+EI8d9A6nqMvcOwACoL528G92UHV5sUkWI1VeFgSb1IYu7mWGbsOKPHQLZeSDw7afYvz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753927794; c=relaxed/simple;
	bh=/Y2LE9A4W0sJfY1BFYy352jF9ig9jN25o6a0RTAdGG0=;
	h=To:Subject:From:Message-Id:Date; b=sPvLqSj4SAj18inah3//2UBHajcO4/NOOYh3CQiT9byxbCYWpvond38vGArc+DK0rYk/YSWQzdgXLiuFw7InGollZIFNwC/bALiYjTM8H0CJUpcj8KLrSkYsHB9ZAm44+97VBPZrhK0g2diOY30OV81Oy2p4tzyFqsv9rrMAVx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lno53NPq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lno53NPq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0424C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753927793;
	bh=/Y2LE9A4W0sJfY1BFYy352jF9ig9jN25o6a0RTAdGG0=;
	h=To:Subject:From:Date:From;
	b=Lno53NPqQ9dMZbJAXiKMHEY6yZlxaCFSJeV0G8DwN3RlR8zyz9+tls8/idr/3P6/C
	 rVKQZ5Z2+1JDJVQXS4OwaFfpZn+ys4NWiO+s6kkZMqAEP3KeDRGz41fNq283PFs1Fx
	 jX5dS0nJYcVGrRbLghuqHY9H/GjE+e9RWtNIaAiH9ipfcYC3OvPAMcA40vHa/dwl2g
	 QRY5Hmt6dyA+2EhwYCODgTdhP2b/OmKJ9xnCtnQJFzjhsWuKuJjIxFuZiD7v7FMP9C
	 R0xwchj1U8x9zstvysai4oL8C4JxPEZi3biOXbl+C3ontjDT/R/arBG2LpGPq/Vzvx
	 msqtI3LI7LTag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E584C87FC9
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175392779357.26507.3511494420822812106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a00c7a4dcf0a19ca81561aa3d6d4ca804478d7deb040d6c676684db9eb072be6
Date: Thu, 31 Jul 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753927793
