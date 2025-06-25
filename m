Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216D03074AD
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750884594; cv=none; b=iQmALjrDsIvsT9XoiBNWbvxKfnG1VZ5caaJzkeC1ESov4Jnbgf62iUYnLraxOoKreh3fflc3uuN0nD4DZ0b/Kszx1KffBo5L9aLUK/Z0piFRhjBkDB22KfNZdMsnRrYUZH+BRyQBUoeclLZZKKxLht8XjdokZOsSgdsOjL2gBrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750884594; c=relaxed/simple;
	bh=G/aAWt7EqKUTTVtxnQAV3OU26TD3l4FRaoHjLUhcI9k=;
	h=To:Subject:From:Message-Id:Date; b=UHdbJUTFnv6thg3nUqZaZ0fd8NkWzBB6SJVXqVJnecJ35J4JClxUTP7H+i/PbMaCnYSrhY8hkRE3uKXRr2a2GV21cl4mrOqvUCCPXgLD+jKcJPDI2cQHlGNOPtPYyTIGvF+/tC5RR6A8fYUGkv8Bml4CNIJqGoRzgoo7p8x1Usk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nKOH+bxJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nKOH+bxJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45B6C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750884593;
	bh=G/aAWt7EqKUTTVtxnQAV3OU26TD3l4FRaoHjLUhcI9k=;
	h=To:Subject:From:Date:From;
	b=nKOH+bxJnOpb8DWLk60903qj6lY2wxXMe7PykS0okaGmH2lt45Nhbw0qIGRt4g7ku
	 vrGFVsO4N4273D/SHKjPPB34DpCYYcfXdUBBfQyKBXXlq6b5KkENOBwP5aJcbkpQyR
	 kUDNkIiEoPZZaKtOVPD51o8lLi7gT8dy0Mn2bzr7BxuN+FR4dBL/f24iHNQgXZV6Ok
	 gbd5euelppDvfnusWj2AlJNEHZWxYc6kAFDS8jOPHYP/pDa9JPmZBL8fGG+6NWg7f8
	 DAKw/vIXBu2Nd3I7rkcS3VRo6va7sxjpgNVNiDTqhFefxo50hfnBBEx1txRiT9wGmY
	 PqEuPo6b4/5rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F145C7EE2A
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175088459357.12111.5658174454095991884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16ad8a40514cefd6d1d004de7db75e2de2ac18f171fae1ec14054468389e0d7d
Date: Wed, 25 Jun 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750884593
