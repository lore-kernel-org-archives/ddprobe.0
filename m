Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51DA915A8
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 20:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733084755; cv=none; b=qAAxt7sAqP9SRM3pRMrhXs9DfiFoVIYGcyQashMGsisd8LVCqXMdn0IP/0CpAVoikUMSGEkbUA2ZHDDX6B6/ErfjEPep+BguYcGT4r0Zt5uQlMcl1eLfy3NxrtjIejz7ooG3aHxQNvK6m0i6chEztT1C329LW9ylYAMcU+OATrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733084755; c=relaxed/simple;
	bh=TQ88WgHWO9bIeb8pDo1kajdgui7kiDMpAdMkD9RKspc=;
	h=To:Subject:From:Message-Id:Date; b=u2L+m0ASXE+aT5/XWpFNzDWmCSJ7htq9j7X0QhPbIBjrVjj8Bo9XXoDOQQ31zDMvceQCYcyQjyYpAVlCjZOEzP1NgQLf35EuDMoTpsJ3CJG3R+sAgZ8U+uwyJ7BAICpatY4K70bzI21MWbLOuO5ljwXcD/l8ct/Lf4r+d8EH25M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jrVA5720; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jrVA5720"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5E9AC4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733084754;
	bh=TQ88WgHWO9bIeb8pDo1kajdgui7kiDMpAdMkD9RKspc=;
	h=To:Subject:From:Date:From;
	b=jrVA5720paXyDE9tq7Cz/HE8GO3NqNpv4nJ5Q55/6suAd5DWHtKn/4GRVcGnlu463
	 ROvwD2AcWmWx6CQkBPRW//a+8DKRUqU9+QYQ/pm5f/uQskflZ4wThgVZi78/5VY6kM
	 wtffrVYs3WLJKO2TWfDlr0bJaut03d5si3YV1gi50MWQMk1fzlZqXly/CMYOwUn8gS
	 AUu8D77D+QOZa/eOJEv7wXi5A/xMGeay2pVXwUbM8M4pS1xUJNc0UggpJju+qe9Gll
	 IwgXCR43DiTZHUKNK1OExRTBOtkLfX2dw8wGQDgm4cifCEDNeHq3BGwB3bes2Fefsb
	 JqkcIsSNj5GVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972B1D4978C
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173308475359.16862.16880385937524784654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a9ed1c6eb645acbbf70be70af8889aa005a3ff75bc3405260107d9f4bb782d6
Date: Sun, 01 Dec 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733084753
