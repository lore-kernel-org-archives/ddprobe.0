Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D541367
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 03:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767668634; cv=none; b=IhFywy1k87jTw3hCE7SJk2gmIUblPyI4jGNTsmW1AqIoKOv16FhjqgYKzeHcERX4YAK00nyl6MxxGLN7ba/TIfS4hRJkTHenFmXwI1ZR/xru3q5UGInEgzz+yxZMNX1Nk5ssF0BfIxMm9ycRYDOoV8E7NsUNevLlz7xFlb2SSys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767668634; c=relaxed/simple;
	bh=W428oT/FkuYP92Z1Mj88+Nb90w9+0bMo0nMtVOToX1c=;
	h=To:Subject:From:Message-Id:Date; b=oHnN7h0PX4/ByD6uopFjczRR6tnxWRTw9I/9GzvhpXsqKSlUMChgY+TgLvVFFgBF0a01LqKjf9wsAY4dJETmtkkgDWiQph30hnBrKnOt5msHtiVYS279ihZK96GgO5czkkgdtcQ7OelLKUfU3hYdjuFVd2ikWLQ/N8gz+59A7bo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nLXroV2a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nLXroV2a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B60E3C116D0
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 03:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767668633;
	bh=W428oT/FkuYP92Z1Mj88+Nb90w9+0bMo0nMtVOToX1c=;
	h=To:Subject:From:Date:From;
	b=nLXroV2aDN8TlWfYa3j0HPfkUajT53EsEGUn/QAxFnl10YC2/gFpSeAgjWgN8L9Zp
	 XqIEl1Au+6I4V+ZdYEwQsg9bWsU83qNV6MO4/icGxnN9trmB/rM5vdJ8qgVADFvMT1
	 7611k3qsiIahBlGl7hnEfodvm62wpnB1tzGrL8R/pljHKFbJkasaUeatpC+JFk+ymD
	 jvkhY0l1O4qp3rXmcRY2mwtJ3zSif8mlsLaEKlQaKQi80bILkMU7M5nVwiTCUaOCo+
	 5s0PM1TC7h29VlXRCo7yweASIMm8e2CL4lYWEIG8RnzV9j1KELidtTWhse5hYy2y/M
	 0WRRC03k2tYNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A066ECD0432
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 03:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176766863364.9307.13032306565765281980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ca53f448320cb6872450d2f01f2c72613a4463cbd15cb13190bc16002678b82
Date: Tue, 06 Jan 2026 03:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767668633
