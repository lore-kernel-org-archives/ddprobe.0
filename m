Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE50C12CD88
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750528193; cv=none; b=akYeVnbIagcyDT8G7Np6mtz8v3wkUrFPN46dukxdWjk7JomrTfIZLj2J5RRWRFKXfYy8tCgQvvLgWkWcfwtlHYM6vvLbWWdIOooibguQYEfxoHt3Ca1ongHYQHGEKYIN0jFH4yCRDLzDY4SrMsc9djGcXPjge66n9F9Ppv19oiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750528193; c=relaxed/simple;
	bh=Xc1PgXHocDj/+fl5ATJR5xQ/pT8jK7wh8UXroMefX4Y=;
	h=To:Subject:From:Message-Id:Date; b=e0Vp45rb3jPmHHCxAM2/movlWCMtRaGAwH4Q+UivoBSxPDMHSWnIbXUCqqPGopaiYxs0+WRDobMhID3l3kgLXLeyXL4wCJxuWpZLxArwGHkksSTOnX+cEaDQDtZ6nao19ZUbuY0OfgI4uv42S2rwJVia0I9UORdvJFT/cdDf3nI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bjSv+lDc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bjSv+lDc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DA8C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750528193;
	bh=Xc1PgXHocDj/+fl5ATJR5xQ/pT8jK7wh8UXroMefX4Y=;
	h=To:Subject:From:Date:From;
	b=bjSv+lDcbbB8OC6SJJHQUYAV634moBVPr2TCxxvvI9hWT/i3iVLLMcZNIuY/hGlrk
	 fzGCmz0jFZnneivyP+Iea62+0SEw1l3rvTjz4j/e+pbm0lVp6ILfCNS1K7iwngY2ij
	 vOlcNp+La6kWuKvlct4g7/CDnX/E5eTyJwUq8kzi7PTHhbfa26QIBzOXKUmxjzuJmn
	 Z338zSmYq5uK+UrEjQpTkDAdEJCFhDKnKya4qajwhm9SD8vkYCJ96iVwFc65wKAG+j
	 DxhNVXnbCsIVA66ZZiu3bM8AGqffw1a4sfVvbGLV3Y2u69IMFEXFWFHvAFfZPEk9T/
	 j5LzDWIjOmiFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E19C71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175052819357.1796.16284359153935280994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 899916011b14267700b2741de24415a7f591ba7f3354289bc99115c5437b0bf5
Date: Sat, 21 Jun 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750528193
