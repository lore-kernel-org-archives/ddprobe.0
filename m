Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BFD925E44D
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751893794; cv=none; b=RQjtMD7y4CttiyDNot/ghBlAdMPzPD8C2Effa+suRVfwqwDyN4IIqJujD5E3NO1JN4UWIwjtRi2nhAbYHIF/nU3xKaP6rAYLp1+hZKjTG/8w082/TNB6h1Iefc8MnpSVLcW8LAuxb4aPPAnAe0g/dFZ5LH10drlFmueS/J2oUWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751893794; c=relaxed/simple;
	bh=4wui+4guj+t0ZESsvwzdJeqLbbNKT92nKRnSDyjGpdc=;
	h=To:Subject:From:Message-Id:Date; b=jAY5cKo/jXPblcIuI+szTKxxIRa4zZiXi217ViPaxBsvljGpF1/Y2tbShYzWyka9PXU5YNyPOeXn57v1IdqTIKmNrj9XE21LE2oDEOaHXcER+snm/X/eOKjT+b4t1WC7T4tHbkl9GdVfeC/ObkSeP5tP1gDnFy6t36F+QgNRooU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YL1oM/Ci; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YL1oM/Ci"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A0EC4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751893793;
	bh=4wui+4guj+t0ZESsvwzdJeqLbbNKT92nKRnSDyjGpdc=;
	h=To:Subject:From:Date:From;
	b=YL1oM/CiQUattbgejbx8eNZFauYCNgQcX7Itp9kla33rkPJkdlHNeQL+Jbwk+D12+
	 QkZEx8Qv5S3y1YZ1mItJMuwq9iUtZr158/Thx2NaiCIqd4S3L/C+ywlSdvvuY1SzIE
	 rO09ATQ2fo9c4PUKXsb8kjkm7dLTC1raeFLE3a4jz1Pv6Tyd9GpdhqKiSKpTtVEWCV
	 QlkWBSaNuJwno0SQvY7z2cPdMY5KslJu2vLISg1g0Wtc3UChpJuQf9vfhihnChQ1fS
	 SO78BerISBvdTaYfuf7b/ZIP55wct7FnN+tZxx+R6O1ae4ubEXKjwqxQFOfwXF1+9C
	 k7oma7vFnR/DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA4AC8303C
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175189379357.23268.14739981473571757439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e19cd2739548edf5a88561741da7105a7326aa93c749047eb38c71930cd530aa
Date: Mon, 07 Jul 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751893793
