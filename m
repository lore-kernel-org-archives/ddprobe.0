Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 536CD288A5
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743925194; cv=none; b=MBNZ7P8R6/pxz1PgYLvMOunFttE32f4LBcy6l2dZBWWsgFrP14ueZAmbmndThd9QPDYjwv/Pp23dRir1sF5XnLwMsN3JPAvLqectbCLK4LqYJjRT27+ljafNORen0/4mq7bZOaOWN8mpr5vO4lofke6as9LdIbpsfp/NOtJAxb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743925194; c=relaxed/simple;
	bh=TciJDTy2vrNVg71CWx7IGLpHovjyE429s9fSQIRnuHo=;
	h=To:Subject:From:Message-Id:Date; b=Gg2Wkhj05f3wTc1NJ9EkjERAaIQOtlULwGCWv8gC7MGB+m7CUb9evyVqPEtbSwqh0qh/5pgUvQOJj9D+xxqJS+ky+Q26ll/flU0kJaNZqcI5hsndpKhuPBvfd497dhlaBFyceRG+to71oCirGh61hbgiSpwyoLF1LkNB5S5kw6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hC/H6Bhl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hC/H6Bhl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B079AC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743925193;
	bh=TciJDTy2vrNVg71CWx7IGLpHovjyE429s9fSQIRnuHo=;
	h=To:Subject:From:Date:From;
	b=hC/H6BhlvciLm81JFt5uJ+CpY9lyp687eYzCgfINHyp52nQXWGNfBX4guxB8g0r8f
	 e5rhLAE4YiVuYCMk/kKIqOtQvE5HeSl+byk4LOz/gx1mZbJRZVzr1ICHudVuvz+RFB
	 jGgfQWfIZpGhOwM0r+ReZFQRjFzw/7lQB3dx4p7rGmumGrS1IHjPPLOMZVoXMG2V4O
	 JCsT6/HSxpw0frdn7EGYH4AjIdqhl9FYEueIKVHqC80LXK9DgN8hX5KmAOnkAXoaph
	 SJrE4tpBEncvKH2ZAa9whJFv6fRtPhXSqwwIM8PNZukio5DFs5zOrMSutJFhjXtMYn
	 k4Lv0snEBcN6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DE2AC3600C
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174392519360.498.10003383517224601951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08128cb1d9b768723bc694dc53013718087597b8ca41a125c3fbbacaee35b3ad
Date: Sun, 06 Apr 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743925193
