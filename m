Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51302482EB
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737878754; cv=none; b=emIW+fmA2+SEm1d/BjurrRIpPypBOXE0QZIfmQGE4eefqfhupkMQezx9zrUsYmRuBp8jOORlAzK5xDNZZQ6GOZXjE9P6Pfpd5Sn8eGT8Y3odQJJnRF9+NrZgEnMVpiNhXujoYcNuUjkfJfyfXmDW/pm0zt9uFe48rvrm31Zgy4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737878754; c=relaxed/simple;
	bh=03UFR7AsEjLtEogswushK/IPBnMz5CjVxlPbbMFu66A=;
	h=To:Subject:From:Message-Id:Date; b=pY/G58aHa4wDv82G8e1iHeZBP/MeNHX4inwmeTMMnobLh/WKyQSwXgYra9VQhU0/0cZeNcW9GgHaaS26hjMj7qIQ/uV/txlVPLEyI3AG1sJOz1vO14UA9jAYbBFdr00RDBCgVUqsIYAEeben9upyJRfeNL004/EVRBMvDFKWTxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YHb8qNAc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YHb8qNAc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F2DC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737878753;
	bh=03UFR7AsEjLtEogswushK/IPBnMz5CjVxlPbbMFu66A=;
	h=To:Subject:From:Date:From;
	b=YHb8qNAc+/ZIfuK28CYRUAhrSmlmkUYn5fF14AcKEQ0Rd8b55jModYMCB+HdWVCfW
	 8NrSfQmHCgYxQdyVOYjGJ7bVbZp+uW7jXuiQPPiceZuNixtT+E0ttGtbqHIs/lgnTq
	 qbVJmq3eKK6Fr6vhCvcoSL9F9jUAU1JxXWN+Qnsa6nAlL2dP68cn7qmaWv0KoD62pm
	 f+iywXrrx7fp7LIQsVGYNLCBYuS0jcaFBvPv2xxXlrbxKKDqpaCz8BH9AAPsJMhpju
	 yyszpbAr9FrPOO1OTrthxJFMqITr5OVmz/bFEO++nz8ofRQ0/S2HMkDsOxqyIBDe4r
	 tyCLY9G63Tj0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902E5C02181
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173787875358.1854.7946533081515692545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 464fd7c59cc1d6e67777472c4c203e251d5d44194ec44acc881702db1448970a
Date: Sun, 26 Jan 2025 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737878753
