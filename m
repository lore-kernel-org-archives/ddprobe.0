Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA2E2F32
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748107194; cv=none; b=N2XNGS6Gxf5vPVlgwWolgfImR1aJ11sbqcFYXi4Za7QkhRaOfqAMEsOPPy9vj4dSlFsj+QLFcEzZxUc0tg8NGD/2y8PIbap5h99YT44tW53mDVJCF4kXLH/VNXybcyCSAWDOkuFeg3O69y5GqZFtE70MoBIsIok+CAE8QD297Tc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748107194; c=relaxed/simple;
	bh=ekh9+QvKbzERGoEMC34frIIEgp8bLG72DZdaU6Cpd+c=;
	h=To:Subject:From:Message-Id:Date; b=DUO9Y5n6w80siqDhPN9bvFSEN5P5sE8zZEiPdUF9sxBmtc9oKi6WUA3IIyLulAMzjeTngiW1Ag+b9arQJMYQh5pbQaBpZadDpgYNIuyQECAUZ9kAkraqMCKTVQwsYWx1JNBR6tQEj/cYCpeGQJCyqFs+/HlGaKZ/WVkOfbSnbP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qOeE/k8p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qOeE/k8p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D51C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748107193;
	bh=ekh9+QvKbzERGoEMC34frIIEgp8bLG72DZdaU6Cpd+c=;
	h=To:Subject:From:Date:From;
	b=qOeE/k8pNvcXBIEn9ohTxldjV3+4IA+3OT01Rn5BtuhEJONtoUctnWFfPjNxQv+Fv
	 ZWknRJeolr1L+FlyDm/51MOPf+A5DbwlGXGinY+LuNaDod6Ac4uPgR5dAQ4T3InX9Q
	 0basNcX2kUCiN9I5Cxtf3HIKC4IKk4/oS1GsXSGnlDWesyAsgjtc7+5tvefzlY9cnB
	 /AwCG2KSKbQeUk1PIk2tkem9O9BJF/m1wkq1Iy4/a+ounAi36zybhizIC9XRmarInY
	 zYXXoRZimHUT3l4EtwRF4evcSXtIbZkUGY2hotMhylKZBM3/grPv8AA7XDOK4KaTN5
	 0Iryplm82sSGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E7CC54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174810719357.17129.16365869602716827113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db85634339c9fabb2f28fdf800a3e1a458eb85ae13625bba923b3944b762abd2
Date: Sat, 24 May 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748107193
