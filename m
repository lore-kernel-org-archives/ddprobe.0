Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E518472
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 02:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779675154; cv=none; b=n83f3HgvoXlr4OQUwm4loZMTEvNtihGB9I3pUi76IbFYm0mjXsC42uZmiHIYi5ovAcroDBMOr6b/zbUvg+1WbWwr2PY3ukQSkZ8NqTFPfyiE1LcbI3QtFmVLDT5utLOAOD7pK3eHZ5JxJHMkfhhVvZyufyr7d+ET/Y1d60tTW7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779675154; c=relaxed/simple;
	bh=RrfWhhg3IxncMeuvAY83SPVa5vdWaKi0mpTXzWXSy14=;
	h=To:Subject:From:Message-Id:Date; b=FjGNth9Oxem5thqXatADo8BNQJwRB380CGMLxWhHuzBbRAZ6Kz/GbRbwdw7nIgYZSGJb/yM9h7TjSzYVXJAtcE6jeEy2zT6yeCzwQ+xGUgkCGdE0Xs22HT4MuCAG3MMFzOGC1XcaHfkb+aKpWUzdGVZaIzPX9nLLQLvHA7eCAr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X5hcNS+m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X5hcNS+m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD950C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 02:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779675153;
	bh=RrfWhhg3IxncMeuvAY83SPVa5vdWaKi0mpTXzWXSy14=;
	h=To:Subject:From:Date:From;
	b=X5hcNS+mxQbO3lrPE0jqt93x2SUcrvHa+RfGvhwaUww6LNQVmhZKjy73x7sXPHVWj
	 HK/I3z1jC1F5qvBe6DquLWt8NV8ZM6hIib1/UoMhJJg7Q6M2tpB/jq1RVW5rXWJq12
	 FKLgosoNvdT2YFCR5klPbPg5dDpCSPxbxr4eICXtSeWMo1QvLTiVAywNbmnu2adM/b
	 935qCqN3Z7tfgLViiOk1ehlPrg8KWM/6WW5z9qbYNjTlbsAV983KWXIXnJNPFl2zdo
	 BpQ3ZqZmo3VEp74sP/Z/1aAn1QYOfnRTPaSHDVp62jGZYmpSJv2hux/xnTD9mBwCJV
	 feJ1x4frB75iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B068CCD5BAB
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 02:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177967515369.9039.10035682803746362862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ebb5908edd0fbe1b7c1454560c35dac3f243b584a2adf55d23c924394484d92
Date: Mon, 25 May 2026 02:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779675153
