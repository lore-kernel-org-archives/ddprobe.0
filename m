Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CAA59463
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 17:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777742254; cv=none; b=Iv+iXa0aDW5+K5VfnhQbxbvDpK0hjyF/G8mlAjR/ndrWzfQhuc/B4eM7+EhvtantcLeOWR6Qf3hQsvUam9oyaLhcSRiq4Obtyr7eKLqWEZ5h9R3iRCrp0OX5JQ+RIyhIE/gzFf1WJ+8fNbB3Kw+zSL1Jeo1ugKXEUm/xisLHKH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777742254; c=relaxed/simple;
	bh=tJK9Sj+Q4m0N8WvThzoVOFKec3QBgqMq3bvbQ8zbfdw=;
	h=To:Subject:From:Message-Id:Date; b=aK0aQX8PUsqMRO8Kn/1wT6lE6GLrId0jWiHlUkuQIfrYtj3mpUcisWrhGVCNtexAMmOylAp+8zTEfiAaIxBjMoNplqEzBio6VRcQHZZeMfxcGoU0zOJnRjcbcqlOMtSugw+hMCnLDW9Dx7zjgt7W/QmKJQNY3FWxFhkyztJAgLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d6tone42; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d6tone42"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C17E3C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 17:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777742253;
	bh=tJK9Sj+Q4m0N8WvThzoVOFKec3QBgqMq3bvbQ8zbfdw=;
	h=To:Subject:From:Date:From;
	b=d6tone42UTkxy8UarZxkgD5rnDfD5KcSO9ibhxXtjuO+S3ttEEQxydEv9YgB+gMQv
	 OdaMBzclGnX27kWV3AywiJwnaxDHD0/tnVOUMc+ki/oEPZAsuYZyeGur28JQVOOgWq
	 w+WQ/CP9oIN1rlZaBlQNGsFIlRcM1e+BqOUm03FOSb2Tp0PfKmp/MdF0A5ULaneVpm
	 uv2G9CXMTh7gaF31gAx7JFmRZ+IV9sG5iqIE1o2JFEvdmtPxIXy///xcC2PPIZHor9
	 +Vksmty6aG9zQDQvo0sx/MQ4+1CliiV26npE90DJxiuio0+nXEVhXb+9YsCVOkfh4s
	 ckhs64ebP5t5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFAA9CD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 17:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177774225368.18078.12486084738218431428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fce33b2fe85202e795319c4989b3c60356027845e5efa9728db2d70d07f8d85
Date: Sat, 02 May 2026 17:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777742253
