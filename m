Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9A81DB124
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747827594; cv=none; b=iOFfZWEeVX9wac7YqoLggesNieemXET/RPajjQS0UmnK6N/1yEXjLQeJyyLUMsiH+ddtUM1I5nrjissyMcMGAI/fJceoYK6v1OHMhnCOQtV8IU9jnnUMXaQ1POIoSxd0IZ6iXy2HahcS/fShpoVHr4kZgsO95PA6oOskQ6NV/x8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747827594; c=relaxed/simple;
	bh=m71yZ/wfBstedWQcpyym1yyMtKGHUg2n3y/jA/DhSIQ=;
	h=To:Subject:From:Message-Id:Date; b=D+6drTd3AxRDdWTtrGarsJL7m78sFimA9AwesDZmGEYXxQD+QK0XN8FURljkdJ9Bz4URXcDcIrDQMY0dxNtQ0jr9ah1oAS4/IMX67FNc0wy3ospmrOU4nbHrZpEltOxXgxnaVgCLe0XXGrlIFsNyLnQZIvM+boeQ7xlSn2ybZUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VTAPFV+w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VTAPFV+w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A022FC4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747827593;
	bh=m71yZ/wfBstedWQcpyym1yyMtKGHUg2n3y/jA/DhSIQ=;
	h=To:Subject:From:Date:From;
	b=VTAPFV+w+KH2EtMafqeClk9cMUOQsBfIjXF2Pmmgso8HxOUcKIX4LuhnN/sc7tKnh
	 qupjpmXCydE/aaLq+CzBuiaq4DfJYCJvAGFXTmgeJh/n7hFiy7sgNANFuwPYoMi8cd
	 dVgN1CUYQ6sUQ+w98Db8oJtva2+MJyoPYGHGOLyPynvR8jodphhspCK5kKpgMRETrv
	 rNMlAO9Z0Q9/it8cW8NGMK4GnVatG3cIEmTEEIDYUVzULnTWio1LPjsIFBMGvwZYMX
	 7yUzJ8q3ndWdlD0FbdvFAMeYqzU+DzdHYu65HDS9Z9SiPo0zjd/lwmR7x0uxpyRmrY
	 APgszJW1nXrgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91651C54E65
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174782759357.8867.17124832431976637052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80908f069cce8c62a8bd0fdafa7ead12ca53da5518ceb979040c630bb5e59783
Date: Wed, 21 May 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747827593
