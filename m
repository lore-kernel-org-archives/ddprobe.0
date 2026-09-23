Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 409F252122B
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790176234; cv=none; b=drK7Ktis7pvzhFnsaoXMIqHuUARTRmZIq7A122wgtNK4AOtrjMjO0gWALoYbFR38nXmnThrCNBi4iMS9WbSKth/opechLjfOg9COJ7EdcH3PChKPxV+gibwkRg195+foV1h2btVGC31XUzufY1GvXmsQ974GkdVrDw0X4WnC2zA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790176234; c=relaxed/simple;
	bh=FgznlhATTVs4rBEfWZHjCCW7uJ1evZcrIFpw8V9zBc4=;
	h=To:Subject:From:Message-Id:Date; b=H9xzrIuqSRBXMv1DjkpUtzwK/FXn6SkAHauRLgmxtYBg6ZtiJNOP3ic6DXiN9D4Pcms/8nzTM+mI/4iBm+VF/U2O71kUEYrxcDn72LGJwlG1ODQOhtzn3sCYqiuEyiBO4Q5ZrH32xxbb4aE4a+eqz1bizmi6CoV/Rf+OrjxbIiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ASgPGSSa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ASgPGSSa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED44C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790176233;
	bh=FgznlhATTVs4rBEfWZHjCCW7uJ1evZcrIFpw8V9zBc4=;
	h=To:Subject:From:Date:From;
	b=ASgPGSSaWX0+zEmVNYRahMgDTolf/6xFNNOdeUMl+TESPytBz8HxlS640cQNQS1WZ
	 qjMB2vqSM5PQRjH9S7EqedN+kBSsFMdDfzaztxsDU1p0deOSFkeXqlpoWCZRtsSgG/
	 2roHmX196EDU3bsntySmRB33oVT7hYrys5pNq45Ps1Gsw9KqxxU92ruIfJDzunw/Rn
	 YKzaj3/BxiHbHrR83H/ZhHEj78mSWXPXC3ScgTI8C3fd4OeqLEc/gl06uAfLBg+Wm+
	 WTP7EgQW10PGX6kJnzNc3JNTB0a+ukvrOTio0yr6sLRW4XpV3jNuRi8XOGZKTsI9sM
	 djg8YOsSql93A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA89C9830B
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179017623369.19329.5981143060269388790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5f5af7722026e8c642548e5f2a01369e2fa3ca78f76b1d96a253650a925f66d
Date: Wed, 23 Sep 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790176233
