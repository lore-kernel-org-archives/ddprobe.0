Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295AE2E717B
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 01:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775783254; cv=none; b=hwvRQhAQ8PwpiwdAjBEg+IyTQ1/T/Tp/oE+pRjiXHXrOioNcyn4teE+8T6BMRKIY+BLDGd5RuHPvSYrW7asARJDkq1UEhOaYrcgfwDUlaQTeu2Y69FrG13Ca+z/2xv/bOVvj++oGBWFoTFFw9QfaJIIbomL2V0BGffXGAEjIuYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775783254; c=relaxed/simple;
	bh=wCowXEzm9EvJHzj1gJLAMwNzDtTO2VNab+a5cK7NXyw=;
	h=To:Subject:From:Message-Id:Date; b=mtf154tfrCXL+VvNU6MjeXqLTPR/rGFnVzmZcMANydcDKZOcuGW+KVgt/jIegetuuwbO7fwRbR0fgK/1JY0FAJQC3si4z+qf5jfhk8sND8Ab2wdayF0xVngaWEoJ5MTdl8DOxaIuPNNDH2zACLrwimVnCq1rSs7F7IZU6HmSLxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ULZ8eKHB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ULZ8eKHB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC4C8C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 01:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775783253;
	bh=wCowXEzm9EvJHzj1gJLAMwNzDtTO2VNab+a5cK7NXyw=;
	h=To:Subject:From:Date:From;
	b=ULZ8eKHBNLO3l4MvB33MEOSHEyn/BHWhQ7IvYuUGpQtd5pi0yUg31w+OQRtXX84PJ
	 AzkY7DsmLPnSKKnrIgX0wnUP9eHdr9jiqdh0D0D2Erj+panDr8J30mqK2kkjatDsCC
	 zClU8qdZ688lI6UJYhVSbup3zezVskI5U4H6fzgF7UO5pKpbqMf6yXEGLJzXhb/8Uj
	 Tm2O0kQGQllz3IJld9JfrjSZxmPz7M12T0SuFAHq+Dyw3CeZink443gz0cq6uPiI3O
	 n7Kk1oMTPEQYFSrcny7Ot10H0EBX1Oa9Q0QlJIl4XeYpwu+bTPxBhdsey6NUdvy4VK
	 DC28ivwKSyhxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1E1F36B97
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 01:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177578325368.12306.1352577413070677218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35e59cd388064e6873dc3633a12f24689e9bf4ae110e0d4e6d1060dacbf468dd
Date: Fri, 10 Apr 2026 01:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775783253
