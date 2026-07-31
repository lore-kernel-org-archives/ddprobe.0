Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E78F42A140
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 13:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785503434; cv=none; b=J2Hbr9K3SRbv7MI/wbB+X4BZiSCTfQJFcYsyOy4A8DLtjqbvVrtRx6qjRhbbkHIpyw7WncDw6h8Qo6Qy1ibdLQ77saCeiKuxiICVOcSoV/XuF+JZRuEsgovMIqO9Zo18tZLwBNKjL6Ui/1y1OntAureFrRwdDSCDeSM8dVUou4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785503434; c=relaxed/simple;
	bh=UYzNTImmjRY5EoCd9dSadKgPNF3buRQtNUsqoUWwsGI=;
	h=To:Subject:From:Message-Id:Date; b=JSKhyL7em5uW+z30R03l1n4blgsRGLUQW5rOao9cax77+sz6Cem6Q1b9L0kyoak7Pq+cCBY6t9Y7Ipt1P4ufjw2h7Lr+dSWBnALO5YRksTx7NacT0OqZ50TQmRLHsv8D8s5TBDt0rT8GqJt79YXKTdGeWhqevpxbPcs5ZuvT0PE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VRphfyb6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VRphfyb6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C50A5C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785503433;
	bh=UYzNTImmjRY5EoCd9dSadKgPNF3buRQtNUsqoUWwsGI=;
	h=To:Subject:From:Date:From;
	b=VRphfyb60PUZX6KIU0XERBIRAN/q9HRk9IyXERZP/z/Yhv2PFBRTUKPm7ErpVDPP5
	 1J6hy2h7XzKOwtZoTlJXsQLeWe7BPiLgmp8bMptLug6Riq2COHVw9QPO0XQNLKoH6z
	 EhnfopliHyCkLIos6q1SWAMeVNyT6sg9coDZnSbQhzl6h+G+Ca6afPH/K7WbS6qqIu
	 DNCvJ+xOMAgm10A30rsNTFMzChFekJzUmQzsU+uXoWkDmzq7S9pkvUQa7zPuk7R76I
	 mrsAkCN0cb/ZtxdtFrwTDrF5jIbJTdBLko44wMl7u5mRNizse4mTX987VkN2TI+FBg
	 PSoJQh0E9k2eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA09C54F54
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178550343368.10899.12998815262997610911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38384bf954307526524a48fc863e873d59ee7cf9f59b922fee868ed216c9ae28
Date: Fri, 31 Jul 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785503433
