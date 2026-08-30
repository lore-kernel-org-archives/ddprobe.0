Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46BD5282F34
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788115834; cv=none; b=EP3kCvuqp3EDD7B2Bxk9JvTMeiqUa6gw6p3YJspgvYyAFbLU3/HnuxdcyqGNTRagYR+uParzsDwnfRe5/j2RbGsViGRzqhDFdqe2hga2pA0RC4XSvM9M8oaUtlpaRH0tINhNn3z1UhJMQj4K/0nYfg/yGc2LgZgpI1Lyu0Csg5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788115834; c=relaxed/simple;
	bh=xvqBJnijFKnYSTTCerwYcnPgHqCBPg+7Yl2V4UeyGtc=;
	h=To:Subject:From:Message-Id:Date; b=AOQ0/5oiOLPJC92ujeNf2zM4GRScxOryECS1Wvvgp+BMbE2WJ4z603rkVZR2F5zkcPJcG5IU1Mrm9mYCs6xOcLtkYm6JaJD+H+C49SdQ8YdBwv/CYUS3kxkWwaj6NS/xQo5jJ4DhnmShs/zPnbSoXz4MEYIF4RHhM0bLp5VX0Bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VPkHiG5U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VPkHiG5U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF8A5C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788115833;
	bh=xvqBJnijFKnYSTTCerwYcnPgHqCBPg+7Yl2V4UeyGtc=;
	h=To:Subject:From:Date:From;
	b=VPkHiG5UnX7tfOQ23j9JEc220rtPQ/eMK7HGDsjCg4JV1mFZ9ekncnF4Ye/Kxx/zT
	 q+6UXyzSRflnuwolWwBXSc0oc59syU76ZT2lZLJeaVvWs+Ft/wjWIFta5FUYsQC/X4
	 7zUU1sormkgQPtwP4hxgrHCttOR1M1znerIT1s2kzSnR9/DFqUBoIfeX1X8EsvCtR2
	 0cITU6fqpGmrA/UCC23ym+0im3MraBej8FZK+C9OfUtIY+uhv21K6Co0davmFYWlw4
	 G1ZIgFwobNxWFWtTqJ1k1NzO1RabnL/Bn76HdYCOD1J5JHvMRGKfGQra1CQDDTYieh
	 qgTJxQOdKnQkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E50C61DB9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178811583368.27613.15200678715473942050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afc48075587954b5fdc92ae56d1148e26cc73b3d9ab0106a26c5bc4498d6f4aa
Date: Sun, 30 Aug 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788115833
