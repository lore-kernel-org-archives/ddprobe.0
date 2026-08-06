Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4010A494802
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786045234; cv=none; b=EETOHy9GFqr9XK58R1fxEe6SI8LNYYED2Ld/o2mHJ9swjK+6KDTY5iqjxveS756Eblodm9juuDRWAv+/A5Mzzn7n3y91n8efTor8GDOAGAtq89eMNq6GIKqQO+e9w9E7WvB/Rnx7kSPS1M+cJIfjFAEWcovJLnMMRsrXeSQa+1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786045234; c=relaxed/simple;
	bh=Q2G1SboLJCe0pUk4mn8kc6YaHbQSNmW+vbXM1wXBr2A=;
	h=To:Subject:From:Message-Id:Date; b=Q+jYxC2Vs6AWSEM2tnlVk36O0l39uUNpbgBF8gg1NqErxfWALvfWx2Z5D78IkUUWNjuStBbO5ga6W/MTHkUbOJ2vyTD0ysUB1e1d4tZk9pqmfgX20kBoOtkHwiIv9apwIhj1BGAlHb0nGmHVO/GyjaoD/h9abNk5Z+KMNlnAg5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MSwjzDfq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MSwjzDfq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D583EC2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786045233;
	bh=Q2G1SboLJCe0pUk4mn8kc6YaHbQSNmW+vbXM1wXBr2A=;
	h=To:Subject:From:Date:From;
	b=MSwjzDfqjMAhcrI4zn12ComHV1zCt6lRqc1L4lgjbY4kgmHtPKztY6jHBIkAkIoMD
	 PyYGOlX+bb05kCj11CRI5vHAnitwS1fMtnhryNEA3HMlZ0LxC0cjNl8fpKmsly289W
	 pvNZRId1PYG+iB1id/MfDZ7gDIlfC5xaHXgohIXiaRFAAlyD7VtRHmgnD1aHF+4AAB
	 ZxOF8GlgZogHkKBn1IHVgDnzsgEiIfe1J+c07lv//5iKe6vmhTRxgGQLLBxx15ZRex
	 oCrYp4I1xlDyHIaXtr+fccThZN5EILXGDE3CXZeVFrLrvoyiuTmy/u6DtRgBWwVO82
	 IwRj8rKvsilvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7A4C5AC67
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178604523370.32268.5093873816063708698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a109d179a4fa5e23e9cfff9a2af748c15bdfba3401680bdde2840935f5f4ed5
Date: Thu, 06 Aug 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786045233
