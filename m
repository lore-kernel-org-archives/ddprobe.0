Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C199374D1
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725000354; cv=none; b=K8p54EqOxdKYybvRk1QjxkcSQYvcxAkxsXoAietgp3mxLeWsXb24QZpNUz3kB2O1T/pIND0f5dw1zH8w7ILkC6ZDcOV/4KeJ2FzkUzvzvQ/BeqQk1I3vRpgAwD+gQg5cSYtzpCdceazFo7ZEfa/Oj8AXZVUIpXdNgF1kbAKS1Go=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725000354; c=relaxed/simple;
	bh=VilG15OORNOZgZYaHqkZ1EzXnovQWTG5Zfb7XvHrjv0=;
	h=To:Subject:From:Message-Id:Date; b=oCv8U1Q0wmIwe0noxaYN5/udubSGzj42xuTNTxA76sPJ1zSlvgpO77svZxbXCVBIU64dZJLpmAgI4XmGj/RpM13xuimnCSrm6ux4srk0UvvcpRYGZSaRtibDIAH6EteIAjYVlrHv+OHRfXK4hfwl8pa5SMbFxzJZxnTuLVzuOtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OIO8Dux7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OIO8Dux7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2EC9C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725000353;
	bh=VilG15OORNOZgZYaHqkZ1EzXnovQWTG5Zfb7XvHrjv0=;
	h=To:Subject:From:Date:From;
	b=OIO8Dux7gbn46+wpOuUQXFj4KvQGUPw7oVV+LdxEIg3QTBOM1YojlzRuhmk83krto
	 dKYiY14neTN5uwnTSRPskcPw6/UY7eyZ0HRv1MZh+Z0qj/qEx7EDM4pgZmqT/h/ffn
	 MIRzIhl1Kop5ZjCpZC0lLT7Ty1YKkT7LkNEVuods1t7MAPYsly/08bEdEN3KUGd+OR
	 f/CKJWudfkZYfYgjx/fOhO1ultpK4RowboxfRCnzS7ZcHHPs1pDIRUFs8zWPirsFmr
	 /IrhY6lsyAIVymudW9BLypd0G8DoFronCRO9mv6aQKdjXxzH1HeteBOsbdPbVSy0dB
	 vp8C3LU2NyA9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CCBDCA0EE1
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172500035362.17584.2316805029849388308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f4e345e42f8dff4acf978a548416ce64da195ce8740d7b541aeda5c59a42c83
Date: Fri, 30 Aug 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725000353
