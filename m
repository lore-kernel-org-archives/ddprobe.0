Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB842D1F4E
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 22:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769380434; cv=none; b=b/VbG+z878EhzP24+UWrpFvJ46ZB/0GS+N+K64y9W7FNleDpygaYVvK+rZBXs98fm0mtEa5eYiqr+M6gdTotLcYyJYZzfPnnZgcexCfttOkYuyETcHUEAM/jCJsO3ZyGOSZPvyTpKwV0rkDxAGg172aK4RzSbn3eN67Mnq3Xr2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769380434; c=relaxed/simple;
	bh=oUlECRXw0cph+7c8rASY0Mv3zgB58nXeI48nrc2eExc=;
	h=To:Subject:From:Message-Id:Date; b=H4W4/JDxXE5foI3Mo51mJYGxAYpeWfLBmuvQUPCOXxqsxpA1zjW5JnMQK6zvdvcfTL3UNY9Jsr7g31bQlGG3HZaeNyMI2ejGVMx3U/h4eqAGH7Bcv2a/4qXU9efMEuj/lPnsHjQKB8kJNJ9B8B8eolzPt27Q9j98WQnBRjOSAvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IzY78FGr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IzY78FGr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EB4C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 22:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769380433;
	bh=oUlECRXw0cph+7c8rASY0Mv3zgB58nXeI48nrc2eExc=;
	h=To:Subject:From:Date:From;
	b=IzY78FGrSPaxMBReYT/h8k5oz/akfw9wZU0TYNM/fDYuVXdOAm450VcvrDM2MuUnT
	 TAxt+OWjOTD0jAuspF6dJa4vqpn0zDsqwbTMBQm5acc/eVlgk4W5dyBAccQE1sykdq
	 Joxa5nJmZT+JCTr6qdDypQHliVX6C5JEhCSLq/1p2iL61nTBtljfMyu7Jy4me9pTKQ
	 S5Pc4rW+MlELj/snXK2f4RM2VH0uNklrvvu/ZmNTKnSN5gJKrQ7GCNdsXa+GwAaBhp
	 nJxVSmqlFpgfbHBLm1RGfn46Sq7muvjlL3xuSvjJINskz7/IGmT0njVqmN1e++dgJr
	 vV1QjzppRZkKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9268CD7237C
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 22:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176938043357.11568.4950839091295624779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a246175881518d1f5c65bf73bf41cc54302730774a91743cac867d784a357549
Date: Sun, 25 Jan 2026 22:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769380433
