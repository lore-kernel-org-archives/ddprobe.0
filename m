Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E3045674E
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 12:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706013497; cv=none; b=HplJfYpPijYZg8iVZiYQQk/JQw4ufcPrd6Wsu8gEo7THVB2ooTxkxPV45mVUhKmtE5z6A/yZsiMhYWIQLFARoC6VkjNNf2jBSGIwDzfbjHij2zoUdy5ckvD/DipJw4fx2uCPAo9DefgGEYw7zpK5f8FcbBuZg0GI8aiNoAgOVew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706013497; c=relaxed/simple;
	bh=prFm62tvc7znMBC1RS9DH16MPrJWyLJtgcVjONGpQ6c=;
	h=To:Subject:From:Message-Id:Date; b=j0b3/hmXAXHAZBamh6LzuGR0BqapzlpWQ01aB6WCSfNQFZQ+r/dwINtsK6LKXh6oqS7YFPYjFEiup9PQtuNY5a3EbUF0ASkU5O9ky5y0vbBc+8JwI+chbMM87g8m/TtNctjvusjohbxIPUnAFs2XoZytOAx9tLbT0SNoYVkFts0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GAEvUQmk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GAEvUQmk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 782EDC433C7
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 12:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706013496;
	bh=prFm62tvc7znMBC1RS9DH16MPrJWyLJtgcVjONGpQ6c=;
	h=To:Subject:From:Date:From;
	b=GAEvUQmk5tTmzl0o1VGWJ3dp0dVo+XVXRybftMkMPhKFsr7Ghczv+6VhElBlsKLC+
	 XOrseGaEcnIr0Q3Deg7KUZ8/Frwj9DUFentgrIm58rSN/32MdHDMRsXj6ek4tyXyfW
	 SPQlgazD2xAwMnK/hIpisqCf2VycQ5bAb6UaH+caJy3/47w7FDApwdAvw5Wd5Hd4gb
	 uV6WrY8/xAHv4DDiXksNTdFpGlR/DeBA9ZbicYF0HLoMadCxm/uiSBDJcXHV0uYmhf
	 2R0bd+viWuaF28b1o5l0HjdORdqkIkhMYrFA1bnmZBcCPNS5MOGi566XsT6spcPteK
	 K1nttDWiRBZrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D6DBC47DDB
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 12:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170601349637.5506.16709152641479595149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa8123a81ee029b2244a0c54464ea7105b84087a6cfeb61e623915f890c9491d
Date: Tue, 23 Jan 2024 12:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706013496
