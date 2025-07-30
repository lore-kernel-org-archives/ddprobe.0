Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CBD2AE74
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753848594; cv=none; b=RcnOElEAslPUpalEyeXC9ocezP/zEWt5vArl+bpQHG7w/9fkJnR6YKHJ4lyL2VFolucsChouT7d61ncv1iqy1rg71LBYXAIiIkj66BXruZ62+meo1i2oV6EGDGMlGrMcV9LRRqpEf2a8NKvRrv7QEhMP+l9kIR+7teg1yfIXfec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753848594; c=relaxed/simple;
	bh=K9XaVTorMNf8dnbiHJ/gl95+6vGx4F+KIcUjEcce28Y=;
	h=To:Subject:From:Message-Id:Date; b=MMKjranyckq8XlAdMnDkRXMzngji17bNrjdkYeLruMViHWcpSNnw9BUkG/6omq9nTIft0RfbBeQCj5ScbZhZoPnFy3lwH7rfm+Jan07t0OP7mEkiGhy+nlZsPWXhLsjmK5DNAyCJySz1p2aMcTVjvBfOGR1wd5IRBI2foES82nM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JCJSTOPw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JCJSTOPw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A992CC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753848593;
	bh=K9XaVTorMNf8dnbiHJ/gl95+6vGx4F+KIcUjEcce28Y=;
	h=To:Subject:From:Date:From;
	b=JCJSTOPw+jL+LLohgmgYw0iD4kUI5D2ymgBmFyQHodK2Rn2XyuHxBVreECd/+Lj5q
	 58yLVfR+Sp5i+5T8FEQKD8+Ikp2/pn9Etxe4jlRvFRbY5YvXClfKy6uuCr8goweVtt
	 /J5VvgC+lrVjRUdNXbRni3VTUiF64CuIc1n9FgFngEnh0BzTIRpTD3+MTywfJH0RVs
	 7aOUqAoTDQdDsvdrmJVsWbIKO+bzEUfrGKD5TzZa9J0ZH0TqnaQNqDWWU6Gizd7zMx
	 n3On2LdFZtV+ut06EIaL4duezfNOnQhyMuFwey5m96drMQnI+7aTxyXC6UFULJDBoI
	 AY3MPjztiEOcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94817C87FC9
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175384859357.8567.8134567776479643271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06a7ebc9099a822193aa51de13e3993c95ce811a01585ab3f139fd3ba5c1b6d1
Date: Wed, 30 Jul 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753848593
