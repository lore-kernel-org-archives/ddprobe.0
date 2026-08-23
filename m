Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36CA031618B
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787488834; cv=none; b=BpShd4FPgzhrkwShe4PB6tFpLS940sx8EyFzs6QOEE2rsGUN2VdeE5P9FjUDnAa9TSxSZUAX1b0xu8WMU1saxmJo6u39S1S9YzkaKpsLY8AySukpo394NBkStexZMDQ966hDwS0Ul9I3LZGWXt/7t3cvz1gpZgdXB9u9XtAel+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787488834; c=relaxed/simple;
	bh=5fzP/a4waqWpmbb2twNAYyQChri+sYDtiFhlU/DaVsM=;
	h=To:Subject:From:Message-Id:Date; b=UwtOh7Efiyq48ea8E4vjtpCchAihvaZ7YLMtSrhcT6sm9sVjDZHN1+TLVw9xaw72Yqeq2gAHYOIP87V6UWBcc/S4FWhP59JJ33SdMh+pJ6r/vFL6j0vbdh25GhJNRg3JN2OBOpDXRCIp46cZyPWkgNytYP+SWBOaL+iISh9Om5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FEgbB6Hw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FEgbB6Hw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBAA0C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787488833;
	bh=5fzP/a4waqWpmbb2twNAYyQChri+sYDtiFhlU/DaVsM=;
	h=To:Subject:From:Date:From;
	b=FEgbB6HwuDxCWux0O7GeFVHQLtCx2mMDKlmofF9mxn/spQl6TOh8C/AmTZcNVMoxU
	 yf3nf/H0brwRVatS74SN80RopNCf44IvNalBry8ePezxSEzus+u+jhwrHNasxPCIO4
	 cCWHfHmUyVMibe46VhwzkbnsycsACpP9QhoEV/Ib6MtdPoI4X7Vtkh+NLVGDW2/7AB
	 4kXoBPCx5yu2ZfYJi26v/hRwDsmQ0gDlBoSuZ/IzNYoyFNHdbGqeguSh4IqN4f/jYH
	 TCsc8QiSoGjITvgULywNR1tWq9t+RRcx2I77/+tjbBV09L3ZVpY0YLEK4njo4TZ5zt
	 iZoz4mz606Dmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A1BC5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178748883368.2311.17423645200148982724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3f5e379f654d3bc63bd7381316b00cad9dc6341e0215b0717056db8a248f422
Date: Sun, 23 Aug 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787488833
