Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68D063E5A2E
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 15:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780413274; cv=none; b=rJpu0qU3aFYJChTZCfHjqm1eqgDxxO94bTJtwixnLWdEdOOqqPvWaeTMjeeAboFJsGbMpeJnGQykogRNTTiis8UgGNx7Ko3Qu5HToeiQPhfeE+EPwBmx2qyFoFD9hU4JlbEsBi4cDzDMTj662F6D6bORYDMgfvHNpK4hTgcBznY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780413274; c=relaxed/simple;
	bh=LfGsl+NcvYzVBm+egFDA7CdNVAfoXQEAYp2GexNBTb4=;
	h=To:Subject:From:Message-Id:Date; b=K9q4mfsofCQOQRVYXwfyA6WMvmlYfMvYmf3Oasjcd2lkQaPoi4zvbW9cyD/gmEuQThtyVC+o9e5Yg7JkPDNke+R3Oy8i/NynUOjR89GsYb6LD4hCoWIXIuJnkoBkNdegsCOVM8vJ4iDXCeSGBlaxccse4rFlBYcaoPcnF0V8Xc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JI5AqwBW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JI5AqwBW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E69FEC2BCC4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 15:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780413273;
	bh=LfGsl+NcvYzVBm+egFDA7CdNVAfoXQEAYp2GexNBTb4=;
	h=To:Subject:From:Date:From;
	b=JI5AqwBW+4/M/0jWTspSCJBOwVWxc49lLr08c1PPifmjUE6DCGRKEZgpypIXH2/Ha
	 DnDzu2YyxLxbJ4VFeB5KHd9XFayB4MImtlewT/d+a2h3Dkrsjwedm3aNqaFvGOD9b7
	 lMDAI4/G7HRoLMybQ25qPTtg79aquNTl3Xyjhhn60nxWmLWspEz6u9t8eez/XRLTmp
	 x/kKbaqF34x5aArsF4Q2sWBMlS3XYzq5rfpkb4+ZOJu61cZ+OTVliDWRkozQ7IPvd7
	 BJRmAJ6N9IBFBc/856D1fC3YN8LrZaO0equz5DLfYwQ8nRxDuCOCur3aeV6PzK7yM7
	 v320d6JmFSeug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB48DCD6E60
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 15:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178041327375.30862.10423023094501244336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3563e0204e6d865923bf74812dd93da79c67b0fc01ede9569bcd3baf4a51e18e
Date: Tue, 02 Jun 2026 15:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780413273
