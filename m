Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AC7144330D
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 22:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784672314; cv=none; b=qRbq9GAxdg2LpXlAUPAMiPGhEUpDIecFuYhh3OdTRKfpnkjNMPvopSNRSAYWA0VFyYNxaKz3V3/gFZ5hRXSCjWXX26c97l1bBFnOza5Tv1/YPD5ez4qdFvQKUxyZvwKrtbd9RevbQclxPPzODRdy29FL+7czfi5bMs8BTL171fE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784672314; c=relaxed/simple;
	bh=n7Mx+IZoYrTqOFn8sIFPYFexyAx2gX18WbODXvRuyQ8=;
	h=To:Subject:From:Message-Id:Date; b=N8txfGbtLYNsY+aR2YCnR5VYIMk5YJxrPlhn+Uy32hD2vg2unghUWpmnPI6pmCIZaYGBZeds5AgfFOnLMqK8eHAv/0GmRvr6nCqO2qEBk+ROYLNPpFqPYbQSribIU3OBvQclO/OlbvxbQVXSsDMHjRZMfV8jlpebKDt93BOf5uQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jCS1keqZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jCS1keqZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E40A8C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 22:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784672313;
	bh=n7Mx+IZoYrTqOFn8sIFPYFexyAx2gX18WbODXvRuyQ8=;
	h=To:Subject:From:Date:From;
	b=jCS1keqZ0l/LN5WNRI2Gp4dvtPwf8vLzMZpjia2D2Jr5S6CWSV23/TNN5ubXULUr4
	 MIWqZE/aQmxwLTePYCHUrY2ScsSiutPr9f6f/aEUc9Ybaxao/ufO+1irsKEICmDXJN
	 7r27qtJbv0+ELnXhAMZAvcgK1ZwD3Aqj6BFd1FW/XeoYmmijP03IlJb+D3IRJtGPVS
	 qOZgKoPDZSutxmyMkT7dJvBW3HdoPOZP+ytaV2rlXHCx2dVTRlmCIukRYCcXbM+sm1
	 paW/ZOJEIIT5FbFrtyrWCL/1gE1LYXsL4A6vU6PsbJmRAEH6vC+nm8kyhkWwzXT1f7
	 R9l6OP2DBpEMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD04AC4452D
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 22:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178467231372.11613.16174847952935409569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b141f1d4ac70924f677e4765ac8ac5e49539f410193072a21f848b3093332c81
Date: Tue, 21 Jul 2026 22:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784672313
