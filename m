Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD31451009
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 02:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708395496; cv=none; b=d3iJMFhN+L7iD/Le9rnrttk/GBn2YAiWPsQrLFlE39+AJhlH+Wd3wnLcB545qjt16ep4Y1/8JI/jNDNCdYmhy4bMmNCMjOVe+wFy5/J3N1FgEKwyKTPe/qxKqN7TwcaBoOOZT/s3g4eFTz5lLMaUJxMeKY+y60G7AQ4rfxynkaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708395496; c=relaxed/simple;
	bh=CwOYpGP/WCZ32RjP+4W1sqhQ/heXRjrPDAyev78NoTs=;
	h=To:Subject:From:Message-Id:Date; b=RrNY7aFg7BFRGKb+/cP3kOg/R46EQjKlE6YYRzru8cH1EneM1p3N5GSlQJG4yfmI6WHQJ31Vyp7mnp3hJC0O3DhO3ESHQ3si72onFj5cQUIjFByCTAlS7cVCSZBfbontWMkkOHCUsW08+SmiD5HgFtL2LDLNTsUy6JY48K372h0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lqgoqpig; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lqgoqpig"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8081EC433F1
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 02:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708395496;
	bh=CwOYpGP/WCZ32RjP+4W1sqhQ/heXRjrPDAyev78NoTs=;
	h=To:Subject:From:Date:From;
	b=lqgoqpigY3yjN9ofAuxfK3wNNX+ciVbzAclg2nke0iTzfMsARNwoWsM9UK+nBwWNz
	 qdlCNBYwdEY9gp+BxN3c5GCRkL93l4ku2UQzqnvznEqH+u2OVuRE51Hp3vBAN/BbjC
	 eoPut0KUUMeHqhQzbTlMCjtt5iSwGAThHQIY6OJ8EVTSFU74pYRFvxGuYNlANXDSd/
	 NZ71OH1OGA25wCs14Z5bKdj5cJHgcp/atvf3ee1jCjWAZ1x9987NhUJXDHuvPs2qp4
	 BGlPrZqrEyy34YPkxUGa/3N+n2c3aOaudFYpcoSnupfRdsaLT99PU2HIPyu+ZtmRtQ
	 PJWbJAKV6+HRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DC63C48BF8
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 02:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170839549637.21545.8084859260334293023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 687644e7ca42c70a8000635f7de5039d3fe42b6614d4d636a49145cb9233e333
Date: Tue, 20 Feb 2024 02:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708395496
