Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 136632641CC
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752655195; cv=none; b=XxgHmw/mS8zp4j0TvsgTDgrPb45VtCM5cPkP8IVxFa4EtLVJBCWvUTe1EosQ1Gs0HRonnr1x2POaDCDWzvChU+IOTkekcfyvCaz3JVl2uzXVobRoOOkBXAjtOE2HYP0KrAOWHA0xvsmJOqGzRUJlBU2YAv0FBONdBPokmY9O4BY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752655195; c=relaxed/simple;
	bh=iptFwCtO7Qw8tiPKEiCHb7eHvoLvc/KXrDoNSGdFW64=;
	h=To:Subject:From:Message-Id:Date; b=C2UILI/9uGBHdrQzG4aH2DvwYt078UQ7243Z9vbNJ6edRlcLWgXpV8oaShCbAT3A2x8f8GjJJj5sRn7VD+wSXpiSQFKR3VxJqap8ly+mT7S8XcEVc0yWRg77EFWlkACvLwbl6O/wsSa0yvRIhVozqzWexNnqF7ZlfNLeQL52q60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vOrdc078; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vOrdc078"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C740C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752655193;
	bh=iptFwCtO7Qw8tiPKEiCHb7eHvoLvc/KXrDoNSGdFW64=;
	h=To:Subject:From:Date:From;
	b=vOrdc078rwiiAksznYQpInB0KeB8aSmZ/20vgg2RK8naDRiMU2IeI9EA+yR1IT/hc
	 /pKltt7vH00U3GNOdMzIxZwGaQanc9TCcpNEO3aUOwDVLae54+l7Ig0pUZAsoiqssr
	 wxoLcTSo2Mt6WuGaoM0/7l1dd93ieuhuoZ5U/qCFTS7SdEz8W5OQK36OQY9Y81z1+L
	 sLv02H0oYfjfCEMUU37a5xxxXkAlkj6YTbEWosnNOe4tQYA9Pkj2hM3SDjzo6b1IjA
	 oh3EJg02thG8y7/5xzKkFej25tQ8T6NPOKVpNRgswBLEULD9Hwwee6CO7zvnZ0Vf3J
	 LeyepdOzbnwRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB58C83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175265519358.28079.17320887170461981591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 449d9701bad4aff243c2851a98e6ce23f7f7c58c7b1c15302f05ce1b899a56e4
Date: Wed, 16 Jul 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752655193
