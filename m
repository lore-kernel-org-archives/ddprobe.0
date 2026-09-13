Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30FC99463
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789308034; cv=none; b=W12ZxOUOPVWIbX6rY2bo3vraGvrN/muvm4diYtZyuSs5C45bAPH/vLZhO5L+iYLUxRPLCLgyASKo7jvWzr4Y7MfsCplQ0Y+J4oLMvEXurcbjECzL3HXuexkScl921JTB1knMwCBMSuuCwO8VPlAEdh7s3TXoF1xwY33cWhHXb04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789308034; c=relaxed/simple;
	bh=axRULUwcSTAKjmNVJ+zlK8REvgqyT/u/45MOgLqJk+U=;
	h=To:Subject:From:Message-Id:Date; b=Z+jL3wf51kk9kg0uB7U/oVcggL4kjtAWKwZ+uhdTi1AQHEHFVCsEqXRs6C8HdjcQohKBgf7DqGlFp2U37htpSP2PgcFFb7qHOB+19X1kWMLzNFbyJWlVvuy5dFMcUS6Oj+0cyTYffFcw5rrbCYwrXC3hTJLr9Q/xR9RDdrT4no4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RqRALvWu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RqRALvWu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E91C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789308033;
	bh=axRULUwcSTAKjmNVJ+zlK8REvgqyT/u/45MOgLqJk+U=;
	h=To:Subject:From:Date:From;
	b=RqRALvWucBS0pozRzJBbf0YdYXOIXhgkgUWpK2cnlMbjp/b6B05X8YWeIp434cCmg
	 n9LjXnj66obXrBkbOmfvzGQhaDQsXHQPCojQaFkKpbNr46YIZHoDFlWFyV7p4V/jz/
	 xaUj8SZkPN3RJzochvIVFM8n4IMT55XaVAUJ2lokMzq87+zAixCpuW2jSzQWaiHN41
	 QrBSWJvQ7X7ARGZCWt/Kt7iuaeteUWQcwpoJ8buhgasMoGiqKXlTINQSvHn/b2AP1z
	 eO1hcNo0ug7heP3ShHGI5JhXtJGsvp/Sgy70aU5yy43VT4cIZULjy97WOQV3jMbvfR
	 gvvskSG651rLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF01DC88E66
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178930803368.15681.13201467570001972140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8e95304a9e3c3b5e7040840650f4088467448889c746ee2bcc990688a3b20b2
Date: Sun, 13 Sep 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789308033
