Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD7C352007
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 14:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782655714; cv=none; b=dLhvGK/HqvX2xFRyyQjpDm37H+ePqWHIlceK56m0/edlRXUk8KL2NFc1dDvnimNJWaFmpOZqv8GsRLNG0ardB9TNTYq8fryXqIUlZNmranAIbxG87KQyWiaaw0cHPNQcSRFbFl2sHoFaHxftxoX5IngFYHOHIYQlFE/BgRZWg7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782655714; c=relaxed/simple;
	bh=8RSdD32e4Wt0HiYNTSqZl6cT6MF3UynHdl7pWIxCfTM=;
	h=To:Subject:From:Message-Id:Date; b=Bcx73fPIbi2X0WuvmIgLbvYndq8M7NFgm/a5F6XvAFPk1z4AJGyjYmRJFZ6ljVMfWUPMg2WaZbiKBHakFJmoonRIO0Ls3/0jkZ02db+Lh/TxeJxbuaZwkARYwpBf597S/gIGD2zEIOOStouUxmGSSD5n56t3r+iVvh4GPFMJC2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TkhPcC7e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TkhPcC7e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB54AC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 14:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782655713;
	bh=8RSdD32e4Wt0HiYNTSqZl6cT6MF3UynHdl7pWIxCfTM=;
	h=To:Subject:From:Date:From;
	b=TkhPcC7eZXj6ONwSX+hyrF+3dB0nNzLhk4h+1Ne6KvSDTEWF6f+mQLdPxPyWyiyAi
	 UWyzm5S+MjAk6Qfd13phRyZcQIwhiDZdnkEV5gQS23MOd6Guh1dj+N9HGHSW9ZSzVG
	 EC5fLy+WuiWQHPWvHarL8LMNV8rB9sVxczDVSPgsZkqarG/+cgQnyoBRiLOexLen6+
	 C0iOHCfgvFYAK+Twewa5IZ/YGa7lXRkkorrI6IuOgi9PAywDj2AiKG24OZ5dIm2x4D
	 zddXFpxqgpTwdd9VpjIbQZbdWqEamKOyIR1k4MyF/zqUfk0bLe1R3Q/5vEE2mzcMVy
	 /a0nSTfYkl9lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA73C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 14:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178265571370.27512.2476461652461826690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66f30179171f5824cbf24c3c87fabcfe8bdda16da52e6b69bde7b06fde159822
Date: Sun, 28 Jun 2026 14:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782655713
