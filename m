Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 573F914884F
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724997954; cv=none; b=urdx0QdCpcGFqIIW8NoXIE8V2vMXF/RMLBH8LHaXnQP0N+VtVpQeRxSLMgCRW6qlZzkuo76op2laCTLG86DkJdHvVvnZ8IqiXEQpHP+h2+T7YhAUZ7I/SezEhGEiCLkSnTjnq1sYoSV1KyNVgDfNo+0imQj2YV/60HZHC+37Hqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724997954; c=relaxed/simple;
	bh=fAHJIRGonyaiQpwyAgCev1QynQbDTtQy8ZllmqHWucg=;
	h=To:Subject:From:Message-Id:Date; b=odwDljl97LSHB/AYmHa0EcLtukX24YuKCvqFDi1RGfqG1pTj/Lg2ByRdLrk8cxPABkF8wws2hlKZdm/bVYJbF2G3hwKSj0cf88IwgIfr7iY7puaQhX9fmL1L+2UUs7FlMj9b5HiMd4hcgXw170YKPC5N1zOcFCx7iKKM/0HbRc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sETkN/J0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sETkN/J0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C52EBC4CEC5
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724997953;
	bh=fAHJIRGonyaiQpwyAgCev1QynQbDTtQy8ZllmqHWucg=;
	h=To:Subject:From:Date:From;
	b=sETkN/J0+DxSoTS8WF8foTJoeuUM9iHDxrYaLwk/LUpLQk74ZbOKOYK4qZxzWNSfZ
	 HJLHXHXnzDxjoA9yKm9nUg6ynS+NpElZDjqjeOOLDdnzOZVT2ktsqUi6AMYCwRRKpr
	 +6p5WelpGzgijJxLBQaBxZILjWp+yvo9nGndUd1LZyZdstYTPl+AGX3fiu+sfd2m4/
	 ynP7uJXxGkX7j/3cSGcsexzVz9A8RSdpkmK4Oh+Il85zCZkIrXhyo3HsKk86NnIvZH
	 DXW2PIBitQVu2+joPbzib7ZD59UKokwE8oDudQzyTE+DGseUhyhG3Pfmtii4aWzZYf
	 E2dnH6xVgVoFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA58ECA0EE0
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172499795368.7035.17374161426948144565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79e806e1577e48220f1dcd71311849c5a31040514e4e5ac98f37d7c1263f3a90
Date: Fri, 30 Aug 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724997953
