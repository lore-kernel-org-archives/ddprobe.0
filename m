Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF2D21CA03
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 16:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765731174; cv=none; b=fyK3Y83QDH0tZ1oVDF2gPvgCFuSZE9O88p9wS7Mb2biJCPjiq7S9HCPCB4jAi4dDiAvErgT1S87zfaRfCuEmxFW7EDC5Wtr8k+HYLBpI8zLiCRbG3PA+PhpxQrgm80wQKhwynVNbWk1ttwhb3pdGDI4xe/eJWrcYZnzvz9aLwt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765731174; c=relaxed/simple;
	bh=XxepnkNBzvOKoHzFsc3zWmQ0PSp2cdMbkCE1dyO7DUs=;
	h=To:Subject:From:Message-Id:Date; b=suH4gvw0Y+YHo3JMdvSlFQ5g2YJecYkKdE0DJWpICrhyDRuV5kPTyHJaN33PtxvJfI1ezBla7UBaageMOkpNKWb0hNVvOX/OJn3T/wcwFwXuoBKmQss3oa8c6Ytwc+KOoqAY4zd8uAXe2uikX9NQM6+lfOdwBiipLwD+Q6DdQAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gd6hQ3hi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gd6hQ3hi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA417C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 16:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765731173;
	bh=XxepnkNBzvOKoHzFsc3zWmQ0PSp2cdMbkCE1dyO7DUs=;
	h=To:Subject:From:Date:From;
	b=Gd6hQ3hiQfz0wzoi2gqFeWFD+bzdW95oIA1G9MfjYaTcue8vo7TLtzxnllyoNTme7
	 pAhSyPk4UdTEDIdr3/PLNalw7WmGQ7xQNH3ezHNxEYavWBpSWqxe5MYmSNRDcAP2dj
	 8hRUAXi9QcIPCds6ljPVTaoMKaUfSf99QywhFkDqAJTp7FgZIpzUv6w+wbygPByFo4
	 rk7b6gdZxINT91QhvWUUuwcj40gF9ujcTjeeuSRsTEGIB+6pq9jAdTPAIZqExpLN7L
	 /099sTkNKUx9r0W68IcII/5F02L7BVlPaB5QQsCFqiH+lJDgdUxp+sGjAyUMzXHsFv
	 OajjZ/z3jGXRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972DAD59D99
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 16:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176573117358.6716.16220658147435483885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f16b2a1b6eee33123313d3eb88f3684aef713e9618680b3e3629dc2271e2af14
Date: Sun, 14 Dec 2025 16:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765731173
