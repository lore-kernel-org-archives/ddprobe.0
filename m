Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11D1228B7EA
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753274994; cv=none; b=fBsZYaqsMBo0jApylXbm3H1jRHqIkQLijR6oStIDaZlymn7m6466rT2kw3gD5co9F9bTgZR77UE3v7ZY1h46D7KqwWTpif3jWZ3MMfUGSNdPuoaYFT4bNFitZheswaXOxYxT1u1ugW0JR584nLgaSe5M1onQHMF/Ktw+w+mJxPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753274994; c=relaxed/simple;
	bh=28g1vID9d2ERIJ2CSnhOLBUoyiYN2vZ/TqNgm4a6mjM=;
	h=To:Subject:From:Message-Id:Date; b=ObqUUpVLdJYaYQ5qP1IXk2KB/PNDx1fGnMyvJr01fcNvH3ib4hu5vcy0Ta6DT3pitkhokxAA6vgUnKnAN1iOMAe3Fh3fmlBbydRH19XQEKrhDvE10L2qF8kQyXXlI14VvNb3iZ2tIaMRIhBFBSFdmTV03F0xiLWKq40pdZpZLz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FE91PXvO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FE91PXvO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00BBC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753274993;
	bh=28g1vID9d2ERIJ2CSnhOLBUoyiYN2vZ/TqNgm4a6mjM=;
	h=To:Subject:From:Date:From;
	b=FE91PXvOZddHFSxxm80ct7DDS8AEDmLMlpEAtmlGDfTXszlqnZnjP8rQeYubTkJDP
	 OGBcrdZf7ykrTho+DWWhPYn5m5JVhKcAgMk52I5a76C2ygvPKj9llOTP9OTEmytvVb
	 vxsX0zzLn508DRrvfTfdY6kkG5tMlm4NQP2nctXBtQcJCbr9UJYK/YePM7sWn0hcdH
	 rIhQdywOSUtfIBhGjMCvb2npsalauxVyhGKX9bAn6OpbxQbwiOw0qhy4KUqNHNKSAb
	 U1uzlVg4b9/cPGIAJL52BrnN2vu1wd77JbcJZTgs3BW/rAR3ruHwlgUKomQzZ24ps2
	 7aR4vHbV0tcUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE03C83F1A
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175327499357.17123.12469198825032305269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 444b81944adf393668e7d29a71c2481bf9b8aac5529deb258cb466104b3e840a
Date: Wed, 23 Jul 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753274993
