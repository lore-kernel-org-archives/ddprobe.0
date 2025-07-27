Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3327D1FC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753608594; cv=none; b=Hl8Y3Ergg/D77fdIZX5nUlcdSmYzzkKAg2w8RTXALUO6o8VPInbUubnrapg2JQygM91S2C0DRm1DSABlaCrMcZvBY5xpQ8ZEUf2GdydLWU/hHslE+WHMGyMptenduZujH6RH8FWJJzBoXLN9MLfgs7/vN241xXNk3jL75H2Xg4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753608594; c=relaxed/simple;
	bh=mir8gdIGejZyj3dHBKCbKcpXEc62GMvrGqPs+m8n55A=;
	h=To:Subject:From:Message-Id:Date; b=XKyOtTkszmVPXSElzCyvv/0o7L+X0pQpcoi40aOof6B8cs8srahojkwKnezRnWqcabxG0uAoKBvLrjiRTF65SdWOCtsCSg9hZqCuerlfc3Xqi2PFCuFDLXJRlOae/p8FigzPcWrTZrszCL31il9ngXbvok2Geh3kMMgV8gPmIrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ro/3LrR7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ro/3LrR7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75AFC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753608593;
	bh=mir8gdIGejZyj3dHBKCbKcpXEc62GMvrGqPs+m8n55A=;
	h=To:Subject:From:Date:From;
	b=ro/3LrR7sIIhCefsQhh+Z6el/nnqA75Pw++qdtL5xwy0GLijyHg/Zsb2SDnBbmdpf
	 aSjtglz4FqnvlaN1yhB+JVjUklPvBCy5QIcN5tT5EmuYaE6XWHa/8Qi7j9cLf2amcU
	 1rNNMVXt8t3hgbjSBQ9VebcjWXOs7wPjshbqZyo82XPuVdSVI72FXSIOuE6/PqiWt6
	 pCALIyHFmXuHsVTJ3vFLVtOK5XFyzCJUGnTiTCve/9zwbI7fFjGuHzhHMC6Z8yyvHk
	 uqZdR43tHvo/YoB93pHNK1NuckXnH+1m00WAhZbvPY3aayk7J9/9aBVRrNWcC//5Uv
	 eZWyJ32N5dHSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BEAC87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175360859358.1066.2496715110430279702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93c13795184efc64a40ca297b84a8336301dc44c047b6ecde0fc995ca2e72a2e
Date: Sun, 27 Jul 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753608593
