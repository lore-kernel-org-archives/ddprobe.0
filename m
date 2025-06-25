Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D791F1909
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750849194; cv=none; b=Zdo0BSQ4Uep1IIKhSv5RKHU5hk8/fbXeIgxCPatSUXR6AIjMyFYgfODEMOcnadL7cp+bjmZKTDZhd5R4cULeKNdg1psOSSGEeL8ayZduf108E84k8gVB5eI8JkwLcy9co78oYEV9RXaeyEJi1VkYCaHf1efpjFwdLxtVl+4Q6FU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750849194; c=relaxed/simple;
	bh=TWA9kPzVzFAXAaP1WWIbzNNokO+xG2Q6eBlet00nLaY=;
	h=To:Subject:From:Message-Id:Date; b=Wt4A8XV351KqkvC7Ma7nN3pJl+2sTkb6jw8wiMQRAyhRUJdbLSsC0R5dUkNiT405xk/bseL+iabBlbEoqQBQ1X2o79+ZG1kFbY27+gHvsfGAT94bYAcwWHo6HdG0bgwarUdPKOfvbLwHGXPQyNPlotWVGcI2+pf0HK0gblvYBgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YnVZIl7C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YnVZIl7C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BD12C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750849193;
	bh=TWA9kPzVzFAXAaP1WWIbzNNokO+xG2Q6eBlet00nLaY=;
	h=To:Subject:From:Date:From;
	b=YnVZIl7Cym/gPUTI9S1bVJEAPRgPP5Y39a6dtn6Rb65dovnC1S7l+vAIrM5uo+lN0
	 T2NHF/IUDB+fCdQiMH/yJbPjY5B33fH6GIET+GANZErw5TUW48Sfn4h3DWJQRqxYfR
	 gBCoMbKoro4/Bu7aOLVCAGU3IrxbGbZfsD009A6vcGqXCGqaiKzusYsW7xhig42K4q
	 NWfUlpNCNypL5ao3T0sPIHojhvhytTUVIloVRJcGiPdRHin6KaD5G+bKf9a+FJU6Rh
	 F/+fX/EhcuUZJhVb+qjGsbjy2TLoChY2efJd6f9QgA62QaSh4umKCygdDyCINoQFCT
	 84OJkRvbh/r3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECD5C7EE30
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175084919357.20405.1426038140597312802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fe27b85de39beb5c9831340122f68f37f06b35824e06bc2bcbda94110e6ba66
Date: Wed, 25 Jun 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750849193
