Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B21E30499B
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757008794; cv=none; b=Br+5KjB9wt7tZCbHK1eCXro1w9f11lVV26pLTGmTSrr/AzsGDr6CRa2TT6HBTezrLVi0Wy9gJZrVj6Zi17jQPn+rTs8b9yVOvl05w5yPMhCA8t82Nnoi03tDM/nynk9pQ0TAPNwWmrkjJnJ0yqKVHefbDX5NiXn0fRDKis8SN38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757008794; c=relaxed/simple;
	bh=dxjFLIM72KzfmwabNCqaDjqxeB+F2rSf0LC1iHVcm9s=;
	h=To:Subject:From:Message-Id:Date; b=q8tdgBXrvrgemTjmmY8K9GNLITFe6MMzWyY0wmmO8n7sA2ZJEMvDH3TK/Pxr67Z7q1tXNAQIMYJXr3fAbEaqvnhEjh95tzbu0PTrMyJ20ll2x3ITIEUO9YzhL0+7SRqcT7ZsAC0TaugKK0mZygQaNvbgzXycBZZESBkiDyzvGlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s6lnMk94; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s6lnMk94"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A6AC4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757008793;
	bh=dxjFLIM72KzfmwabNCqaDjqxeB+F2rSf0LC1iHVcm9s=;
	h=To:Subject:From:Date:From;
	b=s6lnMk94YdVZCiINN4Cmm1L3qcYQQ5wo2ULl1QPSAI6z/a3pR2jz3i6G8JMD/A/CB
	 62LW/YLcNmGebaR4cmm493P1iQ8sx7fu9b8GhhuZoFPQggQQLjmt9tZVdSZn0tyLRj
	 ZTvQSrlDh21bgqLAPey/0M3x20J0OgVS17Ps6lwJk2QY2oEC/8X+4jy/FDS0DX49M4
	 ToFO0ctM3oLLntKTDlo3Hrvm1gcUGcl+JoZU6dXQZrN5v7yaFSLuGNadWRwCC4fZTk
	 J2EPettOBr6WbiK1+kHitWjlnLjG58Vz2Pv44jH+LDQI60/BQrJLW063qdGvzl7JOY
	 rQKUzMSngbclA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94992CA1013
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175700879357.31390.17735634885198705532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39886401a51f942987d57827cc052d5f3c7a15643965e21d6f3e7775ac9ee605
Date: Thu, 04 Sep 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757008793
