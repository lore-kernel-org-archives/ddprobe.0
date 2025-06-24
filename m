Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BBE32C3278
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750784394; cv=none; b=h2mjGPGn+8FCg+ykG3M4nfTHCVpk+ks0NQRZqL6N/nd/BGqXvB/8movPd5JYJ8YunsmgxyjeBnmU0WOw4p83l9B/tJSO65qYoe/pv/G3LxBqTq1ymJshcJqsB90+2Mxr1RWYmzkIe9bgZu4pKzjci6WcwB2DjSPcVp08hPJfwhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750784394; c=relaxed/simple;
	bh=1q/ymSfVQWin8TG51QqGc6ggs/Y6DVkSwrtYrJt2Xzo=;
	h=To:Subject:From:Message-Id:Date; b=rfZQCJcIHv+7WWcZO/DVY22BlrwPSHxgJPqPT/wH0uV27eoCGmGS9Gs8bVzTHtnwyCRaY+FenXz3jXeX1h0lihx0Ut7HYRSnN0EnjiDOqADBB1QAb0MhZ2s4yoaa2JFkNqD7EKHtJ15lepeUhh4z6i+8sgyBCT2mlXsdwe+ziHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F3g3ePVY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F3g3ePVY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A3EC4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750784393;
	bh=1q/ymSfVQWin8TG51QqGc6ggs/Y6DVkSwrtYrJt2Xzo=;
	h=To:Subject:From:Date:From;
	b=F3g3ePVY82K2Ovr5BYjG2gr9+WqryNUCW7unexaDrTo3tioz+0OCX0bud6smexFxD
	 PTkFQo/46bgvk3tvHS2fmksJeXqBx/Z2fb+2r3CE8s91D3iCH49na9qSU6GP371Teq
	 IzhLMjsvMSiQ14oGe1fhEIr2BJILm7RrqKfwHXPnk73jfhQQbG/cHh1QW37J27vaOM
	 c1eQOyxr04leSyo7C3Z5nzezzD7BpAqaEypTete5QtXpFQ5CVIyfQmzwhJHQrx7qnm
	 R1s2UgZSCYP1v83U5oduHUuuDuFB+EzZMFB9i69DesEzIjc+kyo8imR4Q+rk/2O/6T
	 GefEELOWEpcMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBA2C77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175078439357.26529.8886506872594946655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e93421de47bf0aa6106bb4b6177d533d7af66520dcc9b6dca4c29253913d4c2d
Date: Tue, 24 Jun 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750784393
