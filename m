Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BFC8215161
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789084234; cv=none; b=l2q5WF6FEE/2OhwKSqGRcD9QRMq4HFnd1Y3Yje3lfkPUG+TeY/SLXBiZ/HdzH+8zUML8TmE+IRvUFu9Axt7K+R6dkDnpMdKctmrRP+uTn/vWlwqvMCs8HLPew3eGcrAkFffOCDoiAezXJA3KafPmVYbGtbUIVUK4ltJiyzWsjTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789084234; c=relaxed/simple;
	bh=h/18uzPCarOix09FVtjj+kdnoTjS+3Pxs7hC9xbHmi0=;
	h=To:Subject:From:Message-Id:Date; b=TQSD8cPohj8sN3U6koL0afTQ27b3BDjR242gy+gx8zrywaUiioT1+JyGgrID3zyA8oWvB8q28FMtIMKqNl7N59x/ADUJOzYjZrjz2rPq6gDKbUz6xvxRFn6S+C8w1RsHfN9TFAxdn01nu1FeDj1CPWt5Ni37bGtCHYvy9P7ZPfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dWtxKrT2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dWtxKrT2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6BDFC2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789084233;
	bh=h/18uzPCarOix09FVtjj+kdnoTjS+3Pxs7hC9xbHmi0=;
	h=To:Subject:From:Date:From;
	b=dWtxKrT2aq5nN36E6wliEz8oYXsTsKSywVmdzDVm9/6N1KjsPeQwtUW+fKZhH27nc
	 TVCvr03iN8k9ip49tzejzhgtIayNjP8utp1hOW2t/AHrTJhywne5eWK1XhiJY+odrO
	 jPnp48nJ9kkboIiye84rOhJC4dVRcLKn4EZ+/5jF4RUJ9sd7zZvifA/yPB4UjrF2aL
	 nsCC1HWzcSkVakFHGIrGI2bfXMHwp8QECUZrsdZmuJsOLSzkEAJKB0xAnuNbQXKMmF
	 E+uzYFa5d0iDiTsp+RJ4HiXnE8zhrnoVFIboQIKhA71gNdnkjF8QRqllYQhoFXKdMO
	 uFCeNBAG8fgdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1B49C88E41
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178908423371.29055.7504236434416178766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f5e4f593fdd13d7e8c407649d97cf908581ff27896d72b572241ddd50cb534c
Date: Thu, 10 Sep 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789084233
