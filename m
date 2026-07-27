Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C8D525B0BE
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785177034; cv=none; b=gxmHs9MZFcIVoiYSFtmcumbY0ae+r1n88BuovgcNXraG2BewitGqMYD7ZwDheeB3Z9YutfnOCtkGAsxpMzHlGv/n+wXgyaI1xNRLlM5tL1DqKKglw68UHxag62pfOiAaHZaDJJrLsF8sL42Wtful7fXNUD+gVuWWXzQnzPLqEIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785177034; c=relaxed/simple;
	bh=t5dg2gOMO9ZcLjtYi1y7pvVfl3uWnyHPsuwGp0bPsKQ=;
	h=To:Subject:From:Message-Id:Date; b=nc+Na26RBArVf+OV9QlhgDuJT3WdFFlPycwtoa/XC+StaGUmokq3Cj0gQm+LE3a/DMtGPBpzJuBpfMzABooz3+ju2+HZTMxOqeMSQUB1QJMndCykLLYn+Gl/JuiIONtiNAUlks23w+LVfBw2OBo4bIrE8ZQMo8r0McG3AIULBJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CBU3znbp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CBU3znbp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD804C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785177033;
	bh=t5dg2gOMO9ZcLjtYi1y7pvVfl3uWnyHPsuwGp0bPsKQ=;
	h=To:Subject:From:Date:From;
	b=CBU3znbpf4fQOJRvnRMGOVMX/yIwAXbgLi9lINxVldnOXm1+aZW07z6v4eBhGScgN
	 7jERgWJmMWhNYq0N0Y5q+sBLmwxIi07BIjg7wnSBNYCfg+7mAnrPFBQwINwVtEkA3o
	 oJwBurgHnQAaRrfs34DM5HaWkYfK1tBanJG++lG+e3Rs7cZghYsMVc+7bM2T2y1YOZ
	 tAW0NIhnSNAX28lfr8lk2YPXAC9z9oOXY4whxv08/UBUFxE3qIuBPpEN8/AR5w03Kn
	 1X3xZMQ+xKhtjNeKCCTI1dDWGtwiuf0bAq6SYXiw2zQCz+kFt/iuIP+u4eoy8ALpNc
	 zR46F4yQHLchg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7DDC531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178517703369.14728.6345715423460811772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11e9d1b535b2fc5eed54c79f85ecea2842d81c84a603e54bacfb0467315eb113
Date: Mon, 27 Jul 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785177033
