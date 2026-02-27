Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09B23364930
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 11:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772190894; cv=none; b=PoYTQaNERqWqROhlbvtaXYn8aNvEDAUgwiWyxw513kzw+XE9A2PDBcQbtJTNHy4Ib3ytZ5dDU3/Dmkc9kxBMj/9LjziDm89VyDPrz9DLbpksmnQyKFDJ6AiDNpNS0UPNVHv6GxyZQexfLEV6Dt3AORSuUhCwaB61ixxD9d6rTuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772190894; c=relaxed/simple;
	bh=kzQwYZa3aYsCNVBQMupr7YHwYYuLhMPyg2cxPWofsoc=;
	h=To:Subject:From:Message-Id:Date; b=pEKMkLcRSkULxXIFA5s55SvTX7+q6q41Xq6rX4tpEs8yv16jPU2RvqxwtvbWuBNYziZRm7WO7kIP47ukr54CtDeOb1pPasP9xeaXSazhWqPA51szLx3ylXjLDnW/bzwOPDHivZH2zTHcUCgbzVEt8/3hYMfWUbts8QeEsd6tHqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eJ9C6sYz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eJ9C6sYz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2328C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 11:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772190893;
	bh=kzQwYZa3aYsCNVBQMupr7YHwYYuLhMPyg2cxPWofsoc=;
	h=To:Subject:From:Date:From;
	b=eJ9C6sYzdjcVe6VEJfFRzi4gOmWaWCp3VtzUxXIPk1lT1kkbgaQeaoDmaPf86cq1I
	 YZ1gTseyBDTrXRrhRSv4FIR0ryV+KrWsVO81TpxuJLWe2kfmlaMsYHLuP1vzmMdP9L
	 oODkWigYuFkxHAHfR5Vt0U2MQthLqsDPtXPdnwpgRVQ2iHQRX6yUghyuFBUuS0MvR6
	 qIpHe2Xsd9aM3Pn97zfwtj4Mvb8jLVTi5BjKQLXc07UNisn9pY4T7/iVNZ3bV5smq2
	 gXpQegn1xEmsEmNOcnjQ/Om+s8G43z7+hAinxIq3v+9WZqJQq0zZD8l5TmrOiYjucF
	 sc4/D00k4psSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B34FD7F95
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 11:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177219089358.568.17634954940171928676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67ea1d0a6e5b5044e2b32099d26d79d3b01b0c889c4763b37b91d1123d179560
Date: Fri, 27 Feb 2026 11:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772190893
