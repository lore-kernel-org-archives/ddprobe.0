Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D19B2D0C9B
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759994994; cv=none; b=Mq3+gdb7m0TpOHCJzWa9qHXzeDy1sV3ys7HNn1PSwFNsIyJTxRnALo0PSBILuBGAE0gxMZlGxqPmknkzAiExAH4xlQLClRblxQ0dR68r4VfIFxpkQw/ZEYZ+lyR5+hTKbODLyWafMb1M2MUgcSidTaDNxxVroqD2v9Qk0bnoVgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759994994; c=relaxed/simple;
	bh=+/kJZCEtIDhmoRCaRObS1JzUIfMow3MqG8XgQJrD0Uw=;
	h=To:Subject:From:Message-Id:Date; b=d6BhEZwx83MrohuDiPrfcXBqI+atMdcxFQpuJHngsadKh8SsdVVrFg4vw+wI07IEopFXFRysKkQ0OjnMc23GpyRNNFezVtiEDBdPeNB0azzk5tRe0uB7vH2oMA1uGnUXuBx+XB+fZ33Q81Zj0DgQnWn+vvrPQkgZoOZWW82BsEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E/UelvdL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E/UelvdL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72A2C113D0
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759994993;
	bh=+/kJZCEtIDhmoRCaRObS1JzUIfMow3MqG8XgQJrD0Uw=;
	h=To:Subject:From:Date:From;
	b=E/UelvdL/ZE+5qSKvor/Stj9z6rHcQzOZofMfg93JQDKzmhj1GdN2zkQMZEjmtK5Y
	 CLzWVaqFBcoKiZAArmjYDVHQJmYw5fNPPryeNr4vKE8oz/Er1CowBZmSVPsDjt/qIC
	 w9Ve+O4L7c5iS+hLO869w2FafvzunvUDqlqCf71xBIWreEeomYqE9hEevCFobuzrIj
	 Q8K1qh8fvXZk16NqzuxYHRZZ14xaOOUrnrud5fe5p7cXZhg0MSsC2/JpY14Hjge8oR
	 gntJHx2WTQTj53HCJbz43hG+T4YoxPqcTn/sqOmEntBRR84zI28M8CUYmtEAlJ6tso
	 H4S+nVQLNAdAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9264FCCD183
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175999499359.28726.3693851506469024200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa7cb7e362db36f2e88f29792a33f4b9df09fb74581f6991078d8ec4437988a0
Date: Thu, 09 Oct 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759994993
