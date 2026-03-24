Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 173DD1A6813
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 01:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774314294; cv=none; b=rao3oBp1+BDcqLTVNayiQLO6CsMJ++kXcc8xb72G5Yu26GWhySYI0CKpuGIAm6wOWxsIjiQH1ZMg9rKBFnB+Y7cCR/7bh4QoR/LZ1ImZWQLi0yvEzBl8jVHUi5ou2FmyZxkadU596burUwL4w1xMeB3aUOP+E/V63YyhLzmr9Ps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774314294; c=relaxed/simple;
	bh=Etgz/NXcwLifFNm3JlFog6NztzFAEZjZHAnVfOHadwo=;
	h=To:Subject:From:Message-Id:Date; b=bWSN++IRWORZkvHdG85K6kc00kBY1Mdpr3TgAsXblC87bURQnygVLN7U+NoetGnaxYJEdFShr7EizHW2HkomsdlhVQSzUOR9FnLwzVFYyYw0BGawJAPaNH8n8LBZyCOg/Nlccs/LV91CY0GDwVJO/uwe2jg7RD1X+MmRGqiMC/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WFLxvrU1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WFLxvrU1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA079C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 01:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774314293;
	bh=Etgz/NXcwLifFNm3JlFog6NztzFAEZjZHAnVfOHadwo=;
	h=To:Subject:From:Date:From;
	b=WFLxvrU1fcF/6WySLIJlYm4regPKz5yGLZ53WxrVEVykaUwhlSVBKemwwDCgaQ5TZ
	 ghy/54eSR/IlJfv0mI283/CWxt1nh35x6lf9lcM9Olf2+SX+yCAyWJqDAbWR1y83Mk
	 21E7FJ8FY7d41UI9DIpMRAlJgBpD4q4xEHxnA37IaGryIR/d8qFcgPCb6skG5pUuJ/
	 Cg2JWIwUB1ZsapEkfscBgE8/Mk1vZeqJHeVF518M5xvhM60/wCVdSYk3RyRnS2srwx
	 gKU7/NZbXrcWUf6JXXwpL3Fw2XLsOlj02flOhn7EB/D9seskFl6OgrtD0stYNY6Ruj
	 4NverGsZ17XOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C51F532C3
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 01:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177431429358.5054.5625704662505097535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52b2c61eb2ec660f02408e679b96b1dba69ea733e7d77d0bcc6f144d94a3c24b
Date: Tue, 24 Mar 2026 01:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774314293
