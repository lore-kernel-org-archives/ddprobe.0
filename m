Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F69F2BDC01
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762514994; cv=none; b=YQZkzCYq7l/1WK06m5t5Q/RSxdIEzzOFKatt159Xkos/EDgAfEWZtDCNRJoa/SchVw723DsKAs0isdfouM/81V6UIUxSIKmx9r1+gQx1H4SAWfb6zjgxEconvQUHi7K8LXOucqmekf6Lr6ut7GHNYWJ3Ny+5mXzlCy5a8HHCkyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762514994; c=relaxed/simple;
	bh=8jXhc1zgVsYmefHkURmwU6RGS1XIBvF2l0IdAqAevVQ=;
	h=To:Subject:From:Message-Id:Date; b=ax4b/98QZi4/A4x4UFWy2DkptuhmL652+Q7IdxwNyh3ax3r3Rudvjg7TUMouVVOsv5MHV9J2HKT22gawt8rBlcyCyKuvzEL2JjeExqjbQ+q26bL3DDERfJJF2+CSR5yLD8ldIuFvWU2lfmXShyJb4QMhGE932qAXGy4gnwAwXTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QTkOhRF8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QTkOhRF8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DDAC116B1
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762514993;
	bh=8jXhc1zgVsYmefHkURmwU6RGS1XIBvF2l0IdAqAevVQ=;
	h=To:Subject:From:Date:From;
	b=QTkOhRF8fWE5gQo/M9moi1qswpbHAJajVSlk9BkQtE7ZAPDsxUfYtUnGX/u7RXxys
	 6Q1GOi+iYBejSw4QBgLJuB8oBq3NohzVZk9+vISwLu1L9tTlm0ysU7HsZoFme2DVF8
	 +BZtlVZyDp6Gep4WQej9U1jggAwkSkgr55H70l0DEVvVS5Kcu4fonTONT3nsdP5Pi+
	 381xYuX79J2SnBJXqcx+2cois/61b6WSDcdtJxZxXiPxmk2vgNMVmMbWaU181r0MmA
	 w9WtS4Bm4znIvhPsiWm2VsCE0adPyjxPTaHH7ya2e7HKT36Qq1+dLBFGxCvb5ZNXjV
	 hn0UWQw94mOfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E65CCF9F8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176251499358.5438.14859280529081570596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd0f66d690ee4284d36e01dab5a464c5ee2a6d052c18b8ad864051c8cedd7a34
Date: Fri, 07 Nov 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762514993
