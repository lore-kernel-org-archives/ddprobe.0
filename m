Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33EF47E792
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 22:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766789034; cv=none; b=ML/qOIS5w+DcHZmd5Zb+FXKz9a9WMkWnkDiKo+JLUi2QAoxW2gYb86VvN7/QMdN01KT0gAvZURxhuF1xAiRftvAsRzgUs+4ubU4PSjWHsL4jjR5LCPn4ILo1c2ky+26ETycfT20qruQQI/HMUnjMidd9r8GWwlA2Lgwg/qs72xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766789034; c=relaxed/simple;
	bh=ghjOGKKx+vEYmT8t0qb9nyIvmMmiRulCo+YkZx6ALjk=;
	h=To:Subject:From:Message-Id:Date; b=St2e3mjDlZBEryw2/au7GMMYzQIn6/XNLmkhoOUVzOw5tjc+PCLQHN9dhDZWaAFaksW+iQ6YvdotQ1hCAScXiiD2bPbcGm6W8JqO4AQS5SuLMWbz8/ew9YILOY2fyZg6Tsvl08j8u1mNnSlA4cfRlFgnBe6pG9s7yssaTzZ95ko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iiNAMJqS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iiNAMJqS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA416C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 22:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766789033;
	bh=ghjOGKKx+vEYmT8t0qb9nyIvmMmiRulCo+YkZx6ALjk=;
	h=To:Subject:From:Date:From;
	b=iiNAMJqSCu/XL0YnPKzCPqJx/ovKULYmykQC7WOGXyfHE/e3CT4MIkr/H1ReEL0jY
	 MwDlsxVBZwopR8DkF+nmIbtkIAatPdowl32G8+xaRNPCl8EZlIka5ccv2rcEAHtp+L
	 gPP/JwHXXb3tBpxZIvvVS3GRYmasAwaDFK5wM2VDvUZJzz587npMN4Wd/j2jWrDC4S
	 LOGpinuI0SnrLbTgsTHNDjR3tZo+PD9AtBmkIWYAJZpoRxDlTyzGZWhOYUrRLwj6+N
	 QFHfeLWqdSG5JaqKhfX40sW/InvkefCTD/dCIdmJDyYKUq4Q/xr6hJesoDwTucvbGC
	 Ugmg5mQ3+4gzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980ABE8FDBE
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 22:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176678903358.12496.10344603892379480491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5faa31fa20036fd9dc39e7c072c1dfa07192d510c570a732ab68f6ed56c7d93
Date: Fri, 26 Dec 2025 22:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766789033
