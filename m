Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20D411A3A80
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760451594; cv=none; b=nld0YiMLFwWdCeVqlHhwgmIvZ6MAUtDi2k9Cxb8D101vn/WH2VOMJHtJDwbjOeGkAp2sVnn9/PZ5ZDWh3wkverZC0Zzs+roqr2nkQSoAHxCTQ0GAMg6clQHB0kS+yW61JCrPfCVlTdcTDVTJlmyhIPBPxWEX98QUdPIpuy4CxQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760451594; c=relaxed/simple;
	bh=sOO6X7oZwERbFEqCeVUNdfVSwbeVyeyJSBDz8CD0CJA=;
	h=To:Subject:From:Message-Id:Date; b=cBTLW7l4pfae9cXEv6trkX4SyX8idttusEQoLsaBfudxs5GYrXiZfz2m82jrT8Byyd/N76BDillNicEp54aW6M04kB66yI6mSDxnveXbH3T3oojzwwBGv7honKaHW4jaDdpi0ybbUoSky2l6ThQqUp0RZoZccGfwPYNlfTX+FWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ehp3xDVP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ehp3xDVP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E6BC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760451593;
	bh=sOO6X7oZwERbFEqCeVUNdfVSwbeVyeyJSBDz8CD0CJA=;
	h=To:Subject:From:Date:From;
	b=ehp3xDVPaZE+RomF6gDApXjtT+IhSsQ8idge0MwA8G7j0sBrQqJf+2ck5uVIWdi5r
	 wJWJ8fu9dXG/7ac/tILNLGdk0wIYgXHuj1zf8VsmJ3/ct9c40Dhsv/d1WxB5GFepKe
	 NYMymIirAI1xO0+BeE/Rh7AXDvcR29TqDH5oAtUN0Zvq+Ce6kdSB80bgzyRIOyaabk
	 smZiUpFFrHMfe3EtcE3gwLOp8AqtI89WyAZJ+GXCNm0LIXllbeDFl+HfwkvzPfKwh3
	 23MpjB1LS9MfU3GDYjTZfGKYrfOOnAYLRNM679FtTSjk9mPQJNHnhKTx/0Y14StQ/1
	 VBYX9Hq6PQ+8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902F0CCD192
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176045159358.10306.2304499954669216998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4914f1a4867d3d966bcc2768521139b071343a6d0030e066b2ef5fa25caeec39
Date: Tue, 14 Oct 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760451593
