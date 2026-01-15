Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7CA13D891
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 01:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768442034; cv=none; b=SeiEzqjpIuhIJLTizHNDAzOh3h8vjMtPdY3pm1FN9z/Dg+Pdgn5SEfTHhA7QdrxZ5RtSc2CpYt/2n7i+OTKnxdAPo1klsg1LRIBWwl0Nbl9X3grd24thwfUAw5boXKb4/CQRTMIp9ED2wByURbzMyj7kBkjFZNYZv2GbqozBq+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768442034; c=relaxed/simple;
	bh=RcyCvtF8AcoC9KuMdmvq4kOGrCrCOs7xKf8duQ5xcSI=;
	h=To:Subject:From:Message-Id:Date; b=V8ZiG3tUWhCre//1QsWxeHsjVz0AGSz6M33IZu8EruPmz7xIZODhEksotzXOIfvSA7W+rdImEItRm07D0K/SZS/+7i7KVUvyZUDLWG/v+X/N4ESh0MqPzqZkG5mL7CgLsbImnlaZI0iNLCaPBXs3r4HUnMARwNIWSjuxPfKIRFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U0RhLAE9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U0RhLAE9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF6CC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 01:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768442033;
	bh=RcyCvtF8AcoC9KuMdmvq4kOGrCrCOs7xKf8duQ5xcSI=;
	h=To:Subject:From:Date:From;
	b=U0RhLAE94jc/EO4SAickCJ337R0TR2824MZV1w9rc4kiESe10hnGTuFhplq9RtTSQ
	 vXrd+zYqnC9m5FpfoGABVLvC6V/hCTLp2EzRyshM4FfRrwURbR9umikbGEpN15cKLN
	 jtD23yzJXNn01pRaHO6IQ9u9qvMmHI1da0qHPz5qaOBV7BbD8Kf9sggmM//9a/PkR8
	 X/djtEOBMXH4tYs574gQbTAzLhbptrvt9xl6wbj7t9vPr0TLRNZBz+fpHNAPTMymhH
	 kRCIBy6xIg8yjD+1knXRCppKq20CHYLgk78ankU7oitDxRICxrLmTsOTNXtjcYxmGy
	 sJ0Xq/JxUicFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBFAD3CC88
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 01:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176844203357.19677.18432548115018323774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3b2cc2c6c166b5f21268399ad6fc45b71127d6a9bbe47b26499df4d386dda38
Date: Thu, 15 Jan 2026 01:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768442033
