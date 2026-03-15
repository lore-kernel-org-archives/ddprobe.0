Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 104D740DFAF
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 06:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773555894; cv=none; b=s6X5b7GGdsuJcSZqir+ip/vEujov3iDhUrIiWJiwZw9G+YlLId5bvnAe0DINW7zl3IhGipv3sDefPNUvRXhAgHm4vD7IHNgP9gJQXMrPTA5+3FTfbl+gakq+OZgwr07nm9QqfXBizu2Z5sGnhlXZvfFsZ8ByMIovZi4aEhGBr5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773555894; c=relaxed/simple;
	bh=pGP+7pK19hLC0r7lc8AvSOMmwQXK/XHZQwmbF9yWric=;
	h=To:Subject:From:Message-Id:Date; b=Huo8cwDcITsfhE7xzrmgky81pgsfEvEyfei+1+h4ybeXDX6oeyDNAEZWU1GzYCKxks9G286ip0QQywmNk/SA23CL6VgVcnXSPI7MKl0bh2x7F/kQglEQ5vewaWR7ZmaxCg/yWm+iBBuz+3bg0F19QvFz11XSzJEMDn976yQZxLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KAg4xUpe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KAg4xUpe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DACC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 06:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773555893;
	bh=pGP+7pK19hLC0r7lc8AvSOMmwQXK/XHZQwmbF9yWric=;
	h=To:Subject:From:Date:From;
	b=KAg4xUpeFHyRANE90Yt7Z2Sneb8FHgjF3qsUhnnH4XQIE2zIcrk0h1kw9HIfd9FNT
	 rOCsR9XVFWW/8BDSKwu+PgySHjpp8S+c+LrnAb4fBbiuHz9Tckz3BWs64nT+Sabq7p
	 YKQaQgCnJuOv+Sl+ntQm35SMMHjYgeY00+n8xR8xhhe+Mr1CV5dpyCELpP1TH4NR/I
	 ziE+B1yd/AULZHeN765qoWfwBJh1K/6Qka30m/uZomERNgvNWZCs/VOovVNi97jtRW
	 8YaMdt//8n0C1lnh4/XiT6N9l3UusEd0dZi+Zgs14igMcqaKpOeuN3b48T8ZfCOsBD
	 Uqpil2HqRRfAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929BED58B08
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 06:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177355589357.18605.8206853552435040532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0c840d2056f2190ea5ab5e3a090d93aba4e1d11b0f2328d5fba1e2b4e3c6b32
Date: Sun, 15 Mar 2026 06:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773555893
