Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A72635C1B7
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785096034; cv=none; b=K3BJ8WGRYOrSx7jYpvUf6TGSAkoPUl5S8CgxZkMMPjX6H9nQsH021SQnr6VHfIrDc6CCUTFBkAK4JvL8X5BeGS5B4FYWgoZZdCMKpriQZBo6huYg6/YZmIyiNTIjA0IHjk2zuoB7yL3x+VUhTCt1SsEKKfgqzbW8S45s+qeXwW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785096034; c=relaxed/simple;
	bh=9IYyM4hnw/KQmYeNT5IvazeZY/94J/IFYDAIGgSbLjg=;
	h=To:Subject:From:Message-Id:Date; b=afuZkQ3QAzFUE9++39emsiaPuBwV8c5JAuK8btPcgN2XxwyUYTXtju7BFTgdxIqyfXlMtDsrmjCXFa7TEqG7gdDBZS5IE9iDg7mO9sTNymCkk1njebsLgIXLPK3XRnAM3ckA0IXadE6c+QSsVevkePBBw6G+SGA0CR+Po3edDsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Me41iMph; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Me41iMph"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2865C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785096033;
	bh=9IYyM4hnw/KQmYeNT5IvazeZY/94J/IFYDAIGgSbLjg=;
	h=To:Subject:From:Date:From;
	b=Me41iMphlXoRAwxo5N0ZnCYxD63kICCmI7dTJZmu+VHjYMvGocAEWok4vIDtcfXmx
	 SQnvi/er0sdYnO+c8L9B8SaIjGEA1yv2vt1F2gt94mkZ4aB6LVT1Hvqjv00m9Ixy2P
	 TZl0YlZK9O8majQ7nUjORI0iVaRL9VqLCuFeWlegtieSQ8mIJfRwmsM76ePcoiOeqB
	 Sxg2mR+2l29Ochx4+LTmz8UQwDy5THb2F79GRsrVhnr/RtaSG5KDtWVbZRf4bskelc
	 4sgDp9oNYDOkk8XUcjtk4a8HcgzO4TH6FUQtsrv9FO88aiFsJH5A7Er1nbVfOo20pf
	 EBfQNSVHtmDxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF24C531C9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178509603368.26483.14659641581784241048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5388c6d8ece913780796320622e730b734363d1f2f0152b9f0bde3a627fcf887
Date: Sun, 26 Jul 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785096033
