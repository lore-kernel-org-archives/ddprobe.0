Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08522276045
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757915394; cv=none; b=OomEq6lAZNPsBPPFLQsZ0npzRZ3GHz0/pnsPdUrnwtYK4MNR5axcl9Q8BfvTWkiouDml1SN7b0Y3BSfpTWUstLw+SgQ5BVgDtfCEY6qdOO4XxpSdv49M+clykyNIkOqU9Wu9zJy9z5jwfPiFnxDbH55bMCPmOENm5tmS5S4ft7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757915394; c=relaxed/simple;
	bh=UVMoDOsEhj3NuOmu0B3U+1Tj36dUz6X/pgM7XubIUig=;
	h=To:Subject:From:Message-Id:Date; b=NjC12pulsGqrSWI44ofRmHO5AFfxHLg1i4wfYZXvPTnmrfi2r0wPuQOXWWUjaKDL/yyG1k9+W8XD8r/DOybbqMiKXxDwfZ7Tz2pzpA4rU6ziV2wIi5wwg5DIVnwxsUP45smjLxF3jwe735zBiQuCaaCVJEnJkMgSuuk307IFXZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U1aVBlt5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U1aVBlt5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CAE1C4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757915393;
	bh=UVMoDOsEhj3NuOmu0B3U+1Tj36dUz6X/pgM7XubIUig=;
	h=To:Subject:From:Date:From;
	b=U1aVBlt5JQHtzZkqSwKqWQhBbLnrT2C/iAPIH0uvq5on3BfFCFDiTl8s5U+lgmO2F
	 1ShgQDvqgutAgfOGid8lTsQ54tERY7dpe6CJUzaPzpVI4WQSAGNWAnGPGeG7l4zAzz
	 aHc86hGvig7AJr+SMLh6A5NJgJGvgFNSv4cSCXEcZBtK31II7wfbI8zYnR5dNOSUW3
	 bTDb6bQiZOk2LEfgCTrRuceT7B4DgWdzMv1JXskLiFUtxaD8p8JyFIy+KWm3Hs5Pk3
	 GiEepInEpYDwtPU25srLSkMWUUZ6e4DR0JSo0dHALsPUwp0Yvf0cuM6Fd69iCIIDd5
	 t/hv1SoRLPr/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDB8CA101F
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175791539357.14290.2161424525818528338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6127d20592c20f6bd8245ca863a4aed5493fbf6b4dd25c68da04ea855827b080
Date: Mon, 15 Sep 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757915393
