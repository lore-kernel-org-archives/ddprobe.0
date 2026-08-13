Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E71D3859D7
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786594834; cv=none; b=LkjZncSbSx8ibtrfifIC5hNVuTae7y8BfJMDMNvfjYIBG1/XXxnTXws4gRq7OjoQpMkOPmOkQOcG0NOvxRQJ0BuArHOQenChWsiqeZ4+ZAhXjZ016XlpgNxjwU/tyykG4Ad5rcji5BEDtG9V7l/T5mmNB7nl/0ipt87XSssd4ZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786594834; c=relaxed/simple;
	bh=vNG1zSgDk4xHe7abYbcffWlEE8KkQGWSGSRL6MTCH3s=;
	h=To:Subject:From:Message-Id:Date; b=H+M6Tr9vkGkwZIOmL8dgZ0p/iqlJozf3dX48fbLovQPmg7l/BzSsPRMMlnfg4JzjhfLp4Si7yyJSU+jzAo5mweX+dn0KFPFkfh5/xRmES5cJMTORUkB97T5ylMSnGCKIY+IOYEjhzSnEZT8LP+FJ9zrEFgsTPELBHV8+ap5725s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qHjU/jCf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qHjU/jCf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5563C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786594833;
	bh=vNG1zSgDk4xHe7abYbcffWlEE8KkQGWSGSRL6MTCH3s=;
	h=To:Subject:From:Date:From;
	b=qHjU/jCfK7rmJ0wpPdRqW0/6DL58xz17DoQw+/9bECWq+ZtTkobOkLS5VHcpKZaRn
	 gtG9F2bP7xjlX5dVrmoZ3txtBRSPe+ByDwYO1RPqwvBG4u8u7ujbOLprbs9dE0+wiz
	 eEzLPgaFLkSTu+s29+EROVHeiSzhYIx4Kf6PFrxOAN29kSVT/iWgK6baawgeC0TD7B
	 3WzyhaF8mkJaGymq6J5ZcEkWY1oGF7xigt5cyZ5kjlAFqkQX0pERMN1vgHuORUvBlp
	 oCJ6IlQrI9fYf1IgcP8fJT8b74LYsH0S7j1QWi4m328+xryAwwY8C812PDkUVA2D0Y
	 us5mo4MH5rLnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B42AAC5AC67
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178659483369.29077.15582966963224899953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4f5a43ecac972f7994a17a485f912ae948b09699c627d7b3b29e3575e05beb8
Date: Thu, 13 Aug 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786594833
