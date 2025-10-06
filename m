Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268A56FBF
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759732794; cv=none; b=UAsEDZBLGCmRaZV4DHwrQoisvSme24sX3Im4ycZ7Poxkb5sPygJhiOU9Si7cXnu6PsgEiE4vmJ5exLiNwqoufWlrCeOwMKa9oD1avRfIKEH4F1S5sVasukzjaT6X3koAVK6sxPz5Jmg6gWNpl5t/hcPyy9iUGuzVBziIsIeIwco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759732794; c=relaxed/simple;
	bh=5dbo051zr+3ghs1C2syRGwL4V19xkzNFerKJh+Ns1kA=;
	h=To:Subject:From:Message-Id:Date; b=pgAlM7py+Dq7jLXthFCXpICJfv+IH+G5gXgzZmUzBG3FWlghQC/0DpkuhDO+LY2l5ibUbM8ppCkQi+AKdym8loPnvoqUvDYo3fvBB5e4sHaEiy9Cf26I8DHH5LwrXdT/YGdnlUcxOy7M99RuJOtJMLJC21yLJuCHOr8ZpgSbUaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GufS2tnW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GufS2tnW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3893C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759732793;
	bh=5dbo051zr+3ghs1C2syRGwL4V19xkzNFerKJh+Ns1kA=;
	h=To:Subject:From:Date:From;
	b=GufS2tnWF1iMw6G4W22Q2+LVkz1huFmUUYpCPxqbOFC6TEB50K06bZjai/okD7eSm
	 SmG7KV+Od0qoHB+EpNVAsM0G9dhJ+1ieGPeK9+8sOCkDUQX3UvJD/BNXt296oyQQDI
	 nzapqBrEuOozlOWWuANpEVBgrUPWuQIEZfJ7Pe838GntxnC9TZTKwGHAsqDtaMFTIY
	 ryYEQXmc2wI2sLFLUgK/J6u94f7x6Zc6toQkNXquNAGN1m5UpAE47dabEg4kGQ2xut
	 c/hZYUbBqvdtVOFKl5z+hDWhPT5QMOGJxpYFzGdGOS18YRl1C7Idm+ce49+EYHHqbF
	 2FwsrsRAJhPPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D5BCCA471
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175973279357.25885.291886172473566691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 157e34d38f97f932218790170f4c230e6ae79b6ee01b99561417d1246d3dec9f
Date: Mon, 06 Oct 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759732793
