Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CECE221269
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755707394; cv=none; b=Eo3I26l7/tXWzIgPX56mc4CIy77f8qpp0bB1Iqs2FM3NC8yG0BQyjQ35CeVQkIXp9V1lr7jrNLZzXYX+j7P2Xi293IrZmnqhNCjnyx7qAbdulM3VyEi1SpnmuN66xFJVQVI8CanFhoOqR/vxEAM9OBu7aoFOyPbKPSLv33Aepl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755707394; c=relaxed/simple;
	bh=/PYQE3IzbvZKWUS8MiOnuEUQw3GxkoHF+ZhvaeQttCs=;
	h=To:Subject:From:Message-Id:Date; b=iz7W7lCp+heHRoCOTogorMgUAhuB+TRJPDbr4Hv+rjA4xGAaHY4PkuCP2csczn0DsDArPhqjmmnskx6EqOsm3vknC2Bq9CsV6k0S4uFiGzcJTRgKJXkgS4xrhZUApz6kS75A9rCy40BUfPbPC1BpK2/sd35L0HVU4f4IW0uGDik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gtvo/oSv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gtvo/oSv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2EA5C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755707393;
	bh=/PYQE3IzbvZKWUS8MiOnuEUQw3GxkoHF+ZhvaeQttCs=;
	h=To:Subject:From:Date:From;
	b=Gtvo/oSv1JHocrSg/IhaQIapBwDUl1nXwpcdXrVHAIpNlSwVYflnE0cl2PbEHKctH
	 yKoWTSAGWQ9UowfPNxhYZY5VCB2JlkPaPzNhNcMGQroR/jvQhUZ8cUH1gknF7PRoxe
	 8D6jSvHQgZ1crhd5DY8OG+ZS/448iWu6wP2m/rw/sxBjw0S1z+6hWwaDvtUGyi6R6K
	 S/MwKeId4nC511QkD9JdpPFgKZ3XAAJUvmd/Y7YyImTE/KAl5ZOasy3sQYkdPw7XU/
	 kq6pwCl680wYNxieDSCn+eqNdz/8Err17b0h1bTjDQ2qs2BMDlJhAU5QTTmYY0wphX
	 ClyFdtXdov0oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A31B2CA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175570739365.5003.1503807137988081889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccfa5dd373eb0819115df182d32bf6695c3cbd1ab35ef25014307a1a781e28da
Date: Wed, 20 Aug 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755707393
