Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3181A7FD
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754612994; cv=none; b=n888CI5OmYQqZMtDxU61J+LIuu7V/UQUaO4fl+iBtPAF3bxMx4W6k4Mhfd2RtsEF8bjXw3mXMB4Uaj4R7BqNsFefhUg9VbOwP+Ig7i4MrdvsTgRwOX4MFM63rVNBL1Wm7zQLLT6fpM+h4lwz2Qh3IpX1iREDmSOAwys7BGydbHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754612994; c=relaxed/simple;
	bh=ktGFicn4Nwt+ihcbBKAYFJ/xcC+3C2DZ9bSCv4XYjSc=;
	h=To:Subject:From:Message-Id:Date; b=TtZp//8pOdKETV6/xuELQWtMCLffwLhXPF7GGPQnLIeMoLuXqpxnq4uzVKiqjWkmG5eLUGZ8pVUHvSRQFw9cY2jMs8D4U7bdcCwDG8wbb87tMneL2dIAe1gkMgSe1gO19xx6iSH+coY0Smx6yUTubFQSplzc2gRxH60LgsI199I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RaD3qHvT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RaD3qHvT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22FBC4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754612993;
	bh=ktGFicn4Nwt+ihcbBKAYFJ/xcC+3C2DZ9bSCv4XYjSc=;
	h=To:Subject:From:Date:From;
	b=RaD3qHvTv8yvIFHj6FERleGv/9oMkoj3MTBJ552MHGSmnV2hh+WdFAQnI2eI00E4f
	 yqa/lOxZsZt4LtMH3iYURYMtOgqqIkCN5bPKkRtJ46X3rmnR6y1PxkaZGb3aAuJW12
	 txqob+/m0yEerKn92jEJWHWnjA8g8k9rzFBXhcZ1xpNcZHnnw3xjUZrIl8WpzT3bhT
	 OdqzxIGprSBv+y2TPdQCv+Dd7Q+cYr/mr0LsVNX8snu7Gk7/XIZS+kinTyB4AYjLhZ
	 eHCj1BXwjN6dBOOVlbKvry0QBvdmErpufG2Wiu3oxUjwlhRh5P/Ccr/J61cKxce2tA
	 JXtIZxyhlVArw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933D6C87FCF
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175461299358.11660.6887163731755715953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb7fcf643cd16b283edf6a187e1a0a9f647818623241f313845f5f4f156fe6d1
Date: Fri, 08 Aug 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754612993
