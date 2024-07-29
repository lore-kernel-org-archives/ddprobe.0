Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2431420D0
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722258354; cv=none; b=QA73bulm9GHXJQIrvA6udJ3HfR4EfikNg4ga0duUe1zZdzv0NOZ3+e84j4OU29Da4GgNDM6I8jnk9iMm+bqcBoXbv5vBD5bnHZNr2E+YLyJ7Cybf6aeu1s4h6R7UmPW44ZlWyd9+/AbBbztYdxpNRTRaPLeFQ8rY+tVieoNFHNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722258354; c=relaxed/simple;
	bh=RKiTTkPu7S3J2FBRXB3zwIWf4AejJUfwNFLlc12Pbfg=;
	h=To:Subject:From:Message-Id:Date; b=f0RDdvkxUJVNiRHwrUDZTW5pI7B74Q/5WXxrO6dtGBJC4BsYpJQe6xX/FT5FjuaJRND4EkgWizwDzL7VgevnxcJ/knA6zUBmvXNoZatwvnzoF3lChBKpe5QcvlyQkW03zUm5ByCiTPGo9Lz77XbwI9VwQCWU1ud9P3gO82Uno68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bSdeVNdV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bSdeVNdV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0976C4AF09
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722258353;
	bh=RKiTTkPu7S3J2FBRXB3zwIWf4AejJUfwNFLlc12Pbfg=;
	h=To:Subject:From:Date:From;
	b=bSdeVNdV38uWQXfCoFdWtJ/sC8W4IFWm3wWo9F+t0zypA2CadkQNHhsIS90flSMiM
	 NI2GfNXVGCJfyQivA9m6Ywpx2udDUwv78DhHjJc99uOoY9GfKMVMxrqDdXNG60yLWH
	 ZZkds6AEgyF0GZ00OT4nZoJjaj1AMdzPrrRJO6xwyPimnS7X2hY7olpZwlwSd09KI8
	 a5FY518FTlG0fcFNMhna29xd3TiAY+lPQDyhi+4R92FYNMHADRmzf9AKVs12i3p22j
	 iC4nODwSFDbTGJICsKM0Y8TU0b2r2R6T9kjbAr6FoQyKt8xEaPCtrRg/MP6EeJ3f00
	 uc2yAJ3xiM50A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91590C3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172225835358.25612.14889906377263503698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b1516a75e3a96b96529965a92a1a05db8f54806dcc3e0eea1343d5224e8c8f0
Date: Mon, 29 Jul 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722258353
