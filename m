Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2991D3603D2
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 05:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775106934; cv=none; b=I4Wl9eheLvZlV4axVZM/d/MMLywbLU8kJ7cfsTyeHnUT4EbhTp6hpCJWpP+CyQIMR2D/QFkjzBoL2URXugDVexLVjqW2RCoidNuz7HbFLQjmct5wyZ6MJ885PmoKGjRQkcYqEJ6OqYZBEAEUUX9+iSVDgLhFtNRymgsnguwEwXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775106934; c=relaxed/simple;
	bh=uji91+ZvY/tPzqqY2jFjCuE6vBktq7MpMiFs1nSkBwc=;
	h=To:Subject:From:Message-Id:Date; b=C4ki6zO8fqqzJzUfjJJvvIDfvpz/xZ78DebLQOVWOIVr7UMit/oSG57Bl4Dc5t9Pc2wJIoI40PNeO3JUTEll93U426MEH3gyesPb29ij1rM+GBDq99v+LiQhmBNwnF+SdhwCtPz0f0gT53CwW8BR6i/WIRD8gmoyG5Ap4TpdBBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DLJeFd+I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DLJeFd+I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B828BC19423
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 05:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775106933;
	bh=uji91+ZvY/tPzqqY2jFjCuE6vBktq7MpMiFs1nSkBwc=;
	h=To:Subject:From:Date:From;
	b=DLJeFd+IspuuBsYvd1I5zqo++Wnmh4zfVO9RpfooYn1JV5HbygW+DU7uOKZd6b2Ze
	 y7PO4DNzQgxA3mFchx3TV4g2MI8hPCk0PonabN6JApi3FIDA3x/TqB9/iw/uZpDw3a
	 wNn+JUXCAiu7y3a4ZyNDaNCt2WSDWSgL6ck1kjS9w3uFxNTZS0/w31SjA9hrIlC1tX
	 K0I8RniTSP1cXwvBw2PZ+P5U2uMI6O9Pl5yKKLyAzvDUJocygw+bRQ/g8ny5xYfTkR
	 S4L2L44dyQYb/CbJaCg9rKtiH1UyiHzONocKKvy6g6XB9LlhT1xPw3HLttKlUCJdeX
	 2z71TG/qlw0Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA556CC6B01
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 05:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177510693368.30779.17225083650454299936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f832b8ae941c888241f96856ec425c7a7d7741093c76f0c5390a91f3b148b74f
Date: Thu, 02 Apr 2026 05:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775106933
