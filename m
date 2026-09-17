Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B2E3BD65D
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789668634; cv=none; b=YzSiGqK9P/SJP2wN7aBNmk35a4UgXXQBYVBNZa6JjWXrFORBWNwl/+49NekE1ALUkIju8TiUDKeWODetgkPWfGKvI8T5W+Ppas08eqjkaueMfguPydyaISqzwIJ5SyqQsaRPiPBtGL0W2JPUAdP3l6ijtOGM6LDHeLG01HYuQlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789668634; c=relaxed/simple;
	bh=rodh14ChZJF5grUXWHKKAf/H0x2bomirJUAd2HcVX10=;
	h=To:Subject:From:Message-Id:Date; b=aOmLjz008t/WRhmoqQhadQ8EOwHiZLniYghASS5Ux6XOH+1N442i+VA593445J3D+VYlvYAuDxZBkwl8uHiMCSwBaHxSXwgRX7wprH0bg8UAJ5ZYUjXKRl5cWg4izt/QI2ECQCaPvY2kpVV8T/gxViEO00TczTqanVEtlYh7m1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sD6lzWVK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sD6lzWVK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F74C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789668633;
	bh=rodh14ChZJF5grUXWHKKAf/H0x2bomirJUAd2HcVX10=;
	h=To:Subject:From:Date:From;
	b=sD6lzWVKoD1a3mppKx4+KH3ukFmEM93db8Ab1O94KFxaKGD4uvV2qKkPFyG5RN067
	 Zm8yM++HfGUbsDgsTXMNsKD2tdT2AXLmI51MEboffnxkGyuEIdP4RIFyFJJonDv38s
	 TsWydeSxzBO07q/vYPfggPiBnSIYgql6c/VSz0+9cK0VoshjPFWMdggL+1fCRN45Qj
	 22TjDNgSTpKUL6A4Ldl2btZWMJl1v3OBtR2O86Fbzy3s13Yq6snMKu6MyibBZg4KMq
	 MZc6SflAGkQGCYqWIMVBQ09QeKL7f/1uqd3Yi2G0B+rgVp4UvyHjAOnmmXLHM1aZDD
	 cczUWKaUJbmdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD84C88E72
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178966863370.29663.11333516522653257131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f369a021ccfe6c68cb3b2e6afcd9b6a7410b65d607366548303c1ca75c07dd6
Date: Thu, 17 Sep 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789668633
