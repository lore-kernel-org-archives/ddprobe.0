Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 196C48C07
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727154354; cv=none; b=ok7R1X5OWEeLO+YQwaFSSroV/6gjNWl6gxfuzTNrzpEbtyBubUc94zMcerKrws1FIFQziAZnPloi0/eU5FxTD7jxFabDK8wS06nawxd1Q1h1+JAgXwNqD2DcRfpeC18y4Ae11lF8GbO+D4I1OieYI5p2zKvvumtM5RTkSHc0Z3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727154354; c=relaxed/simple;
	bh=wtHPrv81u69jv0gNc0fkCPUckBUaNJ1OTU+5LFsVX/Q=;
	h=To:Subject:From:Message-Id:Date; b=cQvnx8M5/c8T2r4io2KtHvuGNZ9tTRw+pxp2o2qI2PG5BGcXtXvaXnLMElVpNqUwpTqZb1D5oQsOoGEIcPSD1jkjMYyPHjtDsqLYzuXxyecRijS5pcV+RmIvI5U+iFLhgiU7sAsZ9D/KJZ/QTaaDObHKnKVRUJBHSEmK7LZP1z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ALZDD8/L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ALZDD8/L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99B7C4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727154353;
	bh=wtHPrv81u69jv0gNc0fkCPUckBUaNJ1OTU+5LFsVX/Q=;
	h=To:Subject:From:Date:From;
	b=ALZDD8/LPUQ2PBEhJsowsr2wtYoZUz6Jn5OhEdaBGgujEjydR0bu+yVKxDj5LJR2b
	 1vGqYWN7FteJrdvOcQvEO+XRst7WqVIUGbXpLdbfWIEA/tByuA5LZgd9YldkaWwm7M
	 pNhM9D+rPrQQskaVsG/M02fF6H/t2qyjTe1s5KEDWoSSkKB3/aye5ZFzTvHRT+hryF
	 BKBIVVClsG83bqOP66nzEYb530x/pipwcJ9dHR5q9e88Vb6bvhcHNQAWaCqEInLMYj
	 TDtXyaausFe7INMY6sl0gKcf58CtX3KGb4Z4UxhO9PQ7YuTeT6Ag8KViqlOBcxnrPs
	 iRAKj4DjATnNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9407DCF9C72
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172715435359.13995.16528652170730737707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d82b1b883713065171957e72bb1aac61f248ffa40e6512be2f0ab1ffe09293d
Date: Tue, 24 Sep 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727154353
