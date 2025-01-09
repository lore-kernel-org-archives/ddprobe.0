Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E0912F2D
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736401554; cv=none; b=bzjZT+mQQET5MMlvF8uX534+NVvzBow/J1xg+z5umOqi7/kaUzYsLRU+/vIQfTGgvGdg1qgRNxjgKPkNX9pPjBLkMMJhu2H91YJOXJEi5WV/gRqokT3EzTg+Fqfwt785iieh/JK3G4SYYv0useIxxHgnUH9htSRu7GF7wpLtf0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736401554; c=relaxed/simple;
	bh=GmvgQ6D0W5Bh6WA9R3/KeH925caguOwWYJpt93gke5M=;
	h=To:Subject:From:Message-Id:Date; b=u0Gn3o+WyapqPin7Cg+uotsGKiq0WE7c/5pl8tEA2iQnYFkrsRK2ZZMsh9hDORnIm3waiA+ar89feILzlcenmRSBBg3++Wdv2BJtN5SkY7vn3igrhwdOuCUfeaGiR8cAFlH+tUpk6fBWdbOLvwO0YSCOgKSUyoFJg0HrUIsdbeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dR43pICk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dR43pICk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B1AC4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736401553;
	bh=GmvgQ6D0W5Bh6WA9R3/KeH925caguOwWYJpt93gke5M=;
	h=To:Subject:From:Date:From;
	b=dR43pICkaqz7TLNLhs2gdJ7+Jmbn9UjJ1NM3zA7j88NG0SdoujLgTutfshsb7h1GL
	 vWrNeh0BKvHG4EhCPIt4qWOjJSA4X7cUUxDb+QjfszNzVl+Eu5YG1PpcFnwDrkEPHs
	 p3Q07d1TeftZZUf0UcxKlTI5pF4EawgCc8BFCCzF6XYbA/GX4lzd8xIN8loRgQjJsp
	 JQ+eIK9QQckxrPHXHrn+ATGKHzRi82Gb2+ZtUqGKBoFUjsmzq7xxLe83caaR3ZrZRX
	 VcoHZ0Nu70auUG4LbdRg8ZWHhRF3OIiWnXZxuysOUKjqc2B6hvhUVm/9pGCQ5lVlgE
	 qEhsz6qAoOZ3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99508E77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173640155359.12014.1432780902324794428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 130ad35778f2904f14c6e05cd49533e67ba2d23a9d9d667432d08afbe4f0e048
Date: Thu, 09 Jan 2025 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736401553
