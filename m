Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372B0FC19
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725869154; cv=none; b=saZ1m6+wCdv4tekc8StQ61HQudrxYtj6MHKGrhfdk72zGzh6TAsaDrf9eVBhW/1p7SphuruXiCdjZt8Bl6toI6XaEchoiwGaDk03i11N8RkEo7uVgLXPAcOmgMJcJUnBwVYxgrxjjPKSwyAAqTQF4jFteS0eM/SriAMPvBwjQlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725869154; c=relaxed/simple;
	bh=9ArxzK+YcZZjZMj3Cj/r/ZFi0vwY5bvVZBJeFzua+So=;
	h=To:Subject:From:Message-Id:Date; b=TfUHmhHOHLGK6C5VxOlWXFCv0CDeooqUKH/0Z/JpBbfBg61rEcT1/VPWSBOdau5C2v0s525QmKX5a41IvX5xJfQCcd2GrPNb9oIzOt/RTytw2mnPVMFw/+uAhOFTUFVKQgOjPJVl6SeGy433gfl6im30ovzd4FDt7utTRLlY+dM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cjYKir9Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cjYKir9Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A357EC4CEC5
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725869153;
	bh=9ArxzK+YcZZjZMj3Cj/r/ZFi0vwY5bvVZBJeFzua+So=;
	h=To:Subject:From:Date:From;
	b=cjYKir9YffdMCBNLk5xPgHh+xZaPfl0IhS2hMhK8y+rfDiJEbx1hVIZjjaArJjWe0
	 C67YjnasV4Y+uD3U4df6eKC/2gJvwOFvkqCEEfytSWnJB15dc2Ge/y9dJ7B6Q0rr82
	 Ir1M5oElUqDCfXslaRgcUcQkxR43GEF6slveCUE2e/qtpwToj22pw1ELH8EiJOI+3x
	 ubp1t/gRFrGBGkhVs4wVWrMPvwNRzj+zdYGJiywPfxWNFOTx7wpAE8Zz2dan3b84AB
	 xSBECEj/zfswR/JczWQ/56CphwaQKX4kAAYhUVAGWAp9PSIvCcukE7k+Ui0A1lvK2b
	 HS5xN+O2mC+7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90087CE7AB0
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172586915358.19977.6460480769262401078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5750cc39f5e1f7e840537d1e22bccfcff433058c270d5f17d45e40b6206842d0
Date: Mon, 09 Sep 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725869153
