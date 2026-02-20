Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 112DA1EEA54
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 03:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771556694; cv=none; b=KiCOOGMniL1kStmGVLQEKKVZm6QHPGKDTKP71gXVillIvgeVrmTCuuLzw7FsPSW801Ttmus6dwh+mrdau2EdIjBUr5xdL2CsIFIl3tfsYpMjQPa8diPEmWrG61HSpiVMCXibTZETC5noElpAUaEzwmkVz1Q1ZgOpsvIzNq2jkU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771556694; c=relaxed/simple;
	bh=5XHJwxs9/1IhUH5gxD3xcJpEmfjqNdOEmc58Xx0sdyI=;
	h=To:Subject:From:Message-Id:Date; b=rOIQ/2GtLAqfMvZdHtW1iP5hONhttfNnrwc9iwEfQO3iTuILOFBr73aESiioVcqUA8J7reGwW5h7oAeu0BKCddOAsexfsWjcLlMtdUJXhS8yzVbGVJFvF8o5vZKmvnEGhPEQDElXHgR4oSui6NN8mXfAf/GNssxiiFZkKSY288I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o8nAeLBo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o8nAeLBo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54E2C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 03:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771556693;
	bh=5XHJwxs9/1IhUH5gxD3xcJpEmfjqNdOEmc58Xx0sdyI=;
	h=To:Subject:From:Date:From;
	b=o8nAeLBo+U/VWFqt/19QNMMZFS8hRLY+DpDWMbMSEzakg4tDiOHjY9NLgV01JB9LQ
	 HkUXXyviYb/0vs2a4UZfVW/Ny7BfOpRJuE5czl1TXYkW8uAg7fSsKvMAYuostFWdDB
	 vwvkIOM/Kucw7ScXm/Bfc0A9pcMC14MX1ylC6qDoVEP+ImDFUEXNov24TWIluTTUVx
	 F67TKSLBSoraXoyZKOuokySmDFipNeFW251yi8QA4A3pZTmDQIPxlLYKvNPfaHa6ub
	 fNOtTpVfhDaPxNLUYTv0r3rNYLNXlwbPJaVJPGL1T5bu/yq8pR4q6d+s9G8Uyjkse+
	 SLlFAiRSuXplg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9335AC531F8
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 03:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177155669359.29640.4916596418654488601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57c53e971051573f242f7f276ee3c2e65e52663e9cce04024fa9ac1a39e87710
Date: Fri, 20 Feb 2026 03:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771556693
