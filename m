Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 029D3255F3F
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 21:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764798774; cv=none; b=RfUSUYRmmt9pBJuilpEe1Z4DISXvykXOgA64E/O5d23JOUmlzNmeWPomxRK0rxt4w9kaQrPftpc54rjfnwDwZF16mBvXqg9RdaMwjpsvagaRgCSFCB/SnJSuyS0eGq2W43XzcqaoWbL60z9b+ZVlXC+fqIrGsvgKDi7q2lyUYh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764798774; c=relaxed/simple;
	bh=o4FMlQKRS7twxWrSEoJKzzoN7/O5CeEV57Bs6KxRdL0=;
	h=To:Subject:From:Message-Id:Date; b=ohCEmKt3dDSbFe2PEAzKfz+l3rpy6pTuLZbdT194t+rlI/RMiF1LfO0l0SPjmqyssq/ZYQzNVufKF8PXApruIeHMZ5sKiYnP9ytaPRTQfHl0R9fjzTLI5B00KOn2p4Nph/kAEBss55aV5+GAZ39rOCQRKYvTnq/ouolptqK0bjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uww40xG3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uww40xG3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6411C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 21:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764798773;
	bh=o4FMlQKRS7twxWrSEoJKzzoN7/O5CeEV57Bs6KxRdL0=;
	h=To:Subject:From:Date:From;
	b=Uww40xG3eEZvcN50osT0yRTPTEWFZEaD1P2ZLrizIiIPj836nziYOyqxBy+tIhPLo
	 O2pvQqDSIt0qGgrQjjDm81KW/ggxQ6AGj6uCCiHIEJwMm9+vhVDmL0lFLkLviH94Rj
	 AMyWNjc1yX17v4N3GSvdT4GpHrCAhNAI7gehJiUabHglI1prnmAxHbhKVIcvYmpCFB
	 tefNiuSxgQQLzMvweGRb64sCnemGHK+0VRePx3faJ16MP+rSvKqY6h1W3VXhpvNfrb
	 uWxAHOO8ytbeNF6IxEN7nVSWSVHlDHnwe4qDqW9Aly7YXEFVs2eRQNEehjjbdLFGz8
	 ENiZ3sUHld6JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96868D1BDE7
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 21:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176479877358.854.10678499588887355502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd3ae200fb12ec638f22a4ed02139b0ff94b12cf8b6d80274bd0bed251191ee7
Date: Wed, 03 Dec 2025 21:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764798773
