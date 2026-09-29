Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 492BF3E6DD5
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790700634; cv=none; b=ZtUXyWhfuExqciUChrCivG9SHxITZGR3N9VfFSLUyjsvKzX9vOMk5zai22WME95ro3kaYsY9Jx3aMrEPk8u85voVQeHbGgYlCcZ+7RQnPB1w6Fy4MZFDyoI3pD3QYA7Vj3xBJoNik99WjeSXcrSECDqsFEp1d0IANnuZZ4qN2oQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790700634; c=relaxed/simple;
	bh=VzAX5bOOl3eawktst4MDyxQiRIV5v1wRWjMhCqETyRQ=;
	h=To:Subject:From:Message-Id:Date; b=fypqd59cUWULSelsUOsVD7l62ZxkMQ3OfdzE3IcOe2uHnqy65sbXRAM1y8ov6yeG9Xz9k9LlJM0WeoGYYOO2ZpCVOHcwFjGw+SYZ9q0YN5f+syz9twLDdBeF4zm1pkYPpFiAk6T/pPSsADLo4TlkjWMGJCq+A6Kz7GY1t2AE48k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I1puGJVU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I1puGJVU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCBBCC4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790700633;
	bh=VzAX5bOOl3eawktst4MDyxQiRIV5v1wRWjMhCqETyRQ=;
	h=To:Subject:From:Date:From;
	b=I1puGJVUK+Ug0irNNAIws8qkxy8UYnCzSUh0NUid0rXsHNwLmh/Bx5pD5eKGy+otN
	 aztNH+V5U/rEBrcgxxdTi1JHDEyNmZ1E5ZiyGwwoo4uizi1QUUhrkt3L383wzEoTfQ
	 aFdbYRjuLO/8mlq6EThY5pd1+O8uo9DRGeM9KgtuT4wqL+vqVamuFBBPMZsAgrk/sT
	 r2V28pvEkSLxnXENfis3DpPCzEkdbKD6StSMnBEm2w5DetQv2ZBqxhni6IPdStoLwy
	 9co1IP/d6fa1uUkO/g8zVGy2lTju1uzD/KqVzmB58Qz7+TXI+KZa0QwA0J3KPcFXLE
	 5cifdtekaZIHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F57CA5FA7
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179070063368.19189.4798049906354355861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc5ea0b3073c2799308df65984a86ec1c0b103665f19ad6e8365e11904f9e6e7
Date: Tue, 29 Sep 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790700633
