Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C1AD42049
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 10:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766314434; cv=none; b=s71derb/gauq7d3vMc7YUpROkVVcFcA4FhNvHN/EzH7AW9D4sYG093Vb3IeMsjERqzvUT+kiOvivFNwzxnyTKDySImk1S4KqeEGYoCCAUPXI/BlNLZOdxHlrjA1iRRkv28sSaPKBs1xpviBtUckkfqwxxrZ4PN0DSwF+R9Tnnr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766314434; c=relaxed/simple;
	bh=tZWwatsyoPdnu0X8jWoLwca0XAJ1887YSHzujI/Fdo4=;
	h=To:Subject:From:Message-Id:Date; b=P8HZg+iWsa/FH7R+SidvICIoj0ZG911Jb3HpeUtiFNbIe3VH7MPNBQCV1L8eg5wVs+XzLFuva7JrfERI3JgQXx2e/EvR81tUIB73URy31FYs/CJuUZJMbhLRgZ+Uq9naQijQR7srpzjYNTPJGEn+nEkD+K3WpZv9CQIc/bmUVzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UdfQbz8A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UdfQbz8A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6699C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766314433;
	bh=tZWwatsyoPdnu0X8jWoLwca0XAJ1887YSHzujI/Fdo4=;
	h=To:Subject:From:Date:From;
	b=UdfQbz8A88Qi5TiiEZSIJJyfvpUk3Osf1M8H69C6HIBLbKNSd5hAuIR8y6SZkxCSu
	 V/6y3y2ViOzd31/48ebUpUTgM/lgwHOFM/EY+tVvIF7BuI/LhacMhyijlPx6G2dyBG
	 fRKVhzUp5iRJZsDtNpiayTl9VRawgpyUA/nhuvDgae/iDEL6RjVZ/sE1P5sYl1PKin
	 Das/CG9qP9LnBEMTYqgHqQhiFnq1547gnQKgg3PDRl2uOKrnHEF9yIDqGiHzJiG6Pf
	 Q746Eqss5peG+B1IO+qNYH9HBLPBHz47yHF5WEZBz+85mRkxHjK+dErXlGG3TBSmVy
	 Hq0G2Vk85MvQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950F2E66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 10:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176631443357.5186.13231158742532364679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2a58596be77c984ac13e86bb6c333f5f638e94fdfea1e5d60b35ec1cb4e4d56
Date: Sun, 21 Dec 2025 10:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766314433
