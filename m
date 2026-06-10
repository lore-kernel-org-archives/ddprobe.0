Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EEA73290C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 14:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781100934; cv=none; b=Y2x5BP/NwiXBtFRdz8JYELXxAvWHpC4aqLctarRxYPu5PnyCDoGIeaCABdMOIaoqpOg/u6I3Oy2pf06zkTaR0y9Y8fvEr7Rs102/U4GDDktVwhOfCZBUvmQ6/vMMzdUm91hiQltanhCcg4xqz5l8UX1rXIx7ptmiAdYBLwsswBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781100934; c=relaxed/simple;
	bh=vvqRc5hbYMt2E8qSgnirmH2Q23Wkoi97liDP1i3MBfU=;
	h=To:Subject:From:Message-Id:Date; b=lXhRbmgax3O+cDW40u7PmDtuDGzHOKXwOwHu7KWlo6Ff5J6TGrbTs3lx228kDympKk+UaRt0sRJ7vIRdLkLRwnCzIU7ToRvFl+YgmJ63xcNnBMAsLvWxdWP8Q7BVZQ8XLo5fPt7GBQ/DX4k7AfRcxubieGUvieBkj+RFKMDkJ3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A7tJ2bty; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A7tJ2bty"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED4CFC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 14:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781100934;
	bh=vvqRc5hbYMt2E8qSgnirmH2Q23Wkoi97liDP1i3MBfU=;
	h=To:Subject:From:Date:From;
	b=A7tJ2bty//oszib5Zu0IFQk9uuGNKHrHf5Epoakf7jxNAudL+AXFQUtwtsGgbqWcq
	 FmT21daDZbq4a9lzINijx4LrmxRadVaV6kzkrrbVwXEZVvjakK2OBlCcphzsAquyqa
	 LxWNPBt8Wh5OZHMdNkEZScN65FNXbdLAK3NtME47Gm3VxsNY/jH+dO3KOpzpATGCiF
	 U7z18b8YPF5SQ1AwQUwU2hnCJSt/Oi68+Op6XMJlCLvkgwc/V/EPtSM0NHB6mtBaZn
	 IdaGdppPWSUx01MeWXLK9+grLGYkTVMGMfxFrWAjF2SLmA71GMVIGFlq2/Q9rK7Woa
	 DkOL0qRMuYXkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDED7CD8CB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 14:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178110093376.8789.8643023267502823670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3da484199fb20f827b80f6d0001d8640ff7c103ea94068e94729d7238177285
Date: Wed, 10 Jun 2026 14:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781100933
