Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40CC0296BCF
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 19:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783540114; cv=none; b=GWtsw6XQpf6wk+DtSDtfH/ss2YA56Y8OwXBS10XEvM1IouFg9Zvrh/8iK7NxjUmSuF84lm1o8jaozE2CPYHprpJRRzuh8S21X1NRlp6zMvDOteZwqXx5x8ND7H/ljm1aE9mG2YVmjuGL8W9KYknHTXsxBdZzyeSbK++xDLCMs0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783540114; c=relaxed/simple;
	bh=vZ0iX4MoEa9G/7F74W/NQhve7UWsk8i7DAh5VoBMkCQ=;
	h=To:Subject:From:Message-Id:Date; b=liFWQcld+UgeKzg9xq/63MZlz2rudi2Le8m609HA0AdNs+1PTE3bNvAJ6tT4MrxAXRSk4vl6mfPDgyagOdS4qPpRjLWE0kv8UB4kDH1v65Yk+prKaqGZGoA82pnflfKE8IU5eA3DwQm79M4h8EzX1R8WKaJxRx/ANLoOLTSR+vc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fzGUeYiV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fzGUeYiV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFEECC2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 19:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783540113;
	bh=vZ0iX4MoEa9G/7F74W/NQhve7UWsk8i7DAh5VoBMkCQ=;
	h=To:Subject:From:Date:From;
	b=fzGUeYiVdk+Dz4ktYbEjBf0pLb3ouaEz9cw+4KpzQjhlHatmwdyo+C0TUP4Xb/Ykt
	 LeP9EytGkAMMHyxLEz/nWMFIJSoM4AmAooEHfHh3j+xDnr+YWqReqd9czwki4yapyA
	 zx2/waQyx17eHTgJDZETzz1fxjwtpW+Zcq70/IRRHTNnTXZOAgvmsFlMT4pk+2tgvS
	 l4K2Zj9mqua5GIEGNmJE3yeM8LxA1HuyNOu06b9YfInrkxNsXiuvHjffKQtXvQV6aM
	 lqXSmRfeLGftx7tSClNzhZA00PeQdK1JLnkHBlEvIU3+tOA/uQxxU5hftZUNdDqqKi
	 aw9g45umlnQmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD20AC43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 19:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178354011368.32293.4099097899320814321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c401e3a3360a61a8db34eea4283c7d029ec200df778b5b6f8921ef2930ca30c2
Date: Wed, 08 Jul 2026 19:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783540113
