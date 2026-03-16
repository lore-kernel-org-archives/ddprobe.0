Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FBE832E12E
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 08:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773651294; cv=none; b=oWvVbjAXOCNl7vNnxxxKVo6HU2NqZlqa8pi6tGCFcm0TU1u7ObLLoD5u5o+Sr0gyxLJEvMbCWc3KYmst65HEzrI8vSUx3+nGK8L+7FXIAeY8AniL40vddVYch1LHfbmzNLChW1JFclvto7Z8tm7oXuBVv3NMNURnR3/f0pGWQ8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773651294; c=relaxed/simple;
	bh=QusWQcdtR8pAPUC5OOEPOQ/6wPlkyf9OeTrkICKsQCw=;
	h=To:Subject:From:Message-Id:Date; b=L5c47OEEUwxmkWXv13/1SK6h7hFTyF1r6xnOm6H7P8mKrE4C8deYHEHgfpYu9llipvBT8EPAf26wvUhhfogUnFkUXHmMWDfGql15UgcjhfvrUfNkq9JkzvTXqmeHzKvJDde6OgpditmPY8zRRmpO1f1d2lOle/cHQULg1jBlxl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cifhsp0Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cifhsp0Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B08A5C19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 08:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773651293;
	bh=QusWQcdtR8pAPUC5OOEPOQ/6wPlkyf9OeTrkICKsQCw=;
	h=To:Subject:From:Date:From;
	b=cifhsp0QFCse/jaJ0XEOs3u/LFQCyHoX6ST6ri6uFL6DdxNVJa51QHfASY5887eVi
	 k8KcrD1GKNwqb3wpRoE2oorBimno4mXt9ITKSPjcDfEwpxjSSTKWjHPHhGaG9s6y5s
	 bmwpZNlbGnzilXAjqQArjlVjEpDVnAziSnFv+m/COrvTlwra3nH27B66lxdXJz4Wne
	 VOZVlhQfQ4aQALuh9S7AFyV4HYZyYsJQF1u6EAt1TeKRLjgbjBjL5T9OgXDIFTHPBY
	 tJckJMB7i5ATrIJuJuTkLCSBoFHMfFvgjspRLKOAjmRIOLJzt/uI/f0X/LtqqdqZBb
	 OvKlWNA5vht9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C283F013DC
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 08:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177365129363.16385.5304018123041126759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f6164d5fa012e42d2552b0499898bd2d4836a4dddf5bf409450c73d2a6f0134
Date: Mon, 16 Mar 2026 08:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773651293
