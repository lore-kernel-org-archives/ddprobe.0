Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263ED14F9E9
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732363554; cv=none; b=OQh6Jnj8gca7GZ9Gdu+fJs5KT8on+ICgKBk/JpZFC8ZC4iSvyVIcZ2U7DHnFFhX6ts7b5GIOxDe+10ha1O4BEidovw/YvU9zPVe/iokkjQ5ot2xI4FT93CdNLdQnTMi3NdhadcauDLVESrr/At/4IO9eFldyfmnwzrzFYnhLKXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732363554; c=relaxed/simple;
	bh=GFikkT9bT4+f5LVgTXiVSH2clZgKlk9Mda0bEG6eV64=;
	h=To:Subject:From:Message-Id:Date; b=fIiL0pY6rx3Qn+q6pztvJ1AUyD+VkkVtXOLcf3YutmrI+gprKmaYfH7jYoHheHlRCu+4wmv6yZL2yTEVB+ujBcDFZ2a88I3etxglE49hEgc/0w3ozq6ST+XCGtP9IU1YMfermDyGE95k1NfQpCH1F+63pBQ8N6FN/hINZnKQc/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SWUbbexl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SWUbbexl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B36E9C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732363553;
	bh=GFikkT9bT4+f5LVgTXiVSH2clZgKlk9Mda0bEG6eV64=;
	h=To:Subject:From:Date:From;
	b=SWUbbexlp/VpVJodrO1YhO1YVymHj3Y+NW0OaViEo9t/ig97L6cUfZRrsDa9gP+k3
	 tALZv/qDdP7dz5IShgaFkPnIxgCwvf6p3DXCSbMmy39xiDwQbc0WIo4poeFUuLtwXR
	 fiIsBrMRIAJCBG9Y75Anr5nz8BBdWUqHm8FE24Z9awQqWW+fz/V8yaDwmE2Y63gl1H
	 1jgAygZAb38+x2twZEsCr5f14jCG3DvWjHB54P6nz0WyCtZIuk+z8W2ZnaD6WNNsEv
	 6WP3bAbmkWefE7kWCKGkVp//bTWqH1HtvMuFL6wI4ppEFxBNudnDzy7wDCFd3aK1mJ
	 mlz8rLUCC4hgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1333E6ADF7
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173236355362.5082.3731109989964837850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b3aee2db48aab268693739b791ee108fcc33f52231fdface2c6e70d960accd3
Date: Sat, 23 Nov 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732363553
