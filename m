Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A06B23EA83
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785290434; cv=none; b=rYOj5EVVjLiE9PMub6i5YFnIdTNNUyghie4feqtb8pGg8TJVDYLr0o2pyBCDnDyeBgce5zOjWrodi2sETZPzWN2YU3rAUukhbNPQj12pmV9Xpulfu50d/fWywMORjHhQYhr+7qd1nxSWAJM7EdDNZiANG/pmIPsGStylX+d7ddo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785290434; c=relaxed/simple;
	bh=QrvlrZobGCXlVTN0yt6ip8Me556dzpE1Xl6Vb4irKB8=;
	h=To:Subject:From:Message-Id:Date; b=rftU2VjmIpLZniWeSuFdEccleKxT9TaHXiSvE7ykL8K5dao7c2AQ78p1dBO7Jo82fUuUQtynPM6uOx0UXRpBHyU5bJZmkd6/kJgkOmEe88ldsJcx6vG/YvtCqa8j5Cu7L9F3hX1ZTGY/vuvYVoRezWNQoy3WkL6lg82fvYZH9cA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rd/Piqcs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rd/Piqcs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3573C2BCC6
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785290433;
	bh=QrvlrZobGCXlVTN0yt6ip8Me556dzpE1Xl6Vb4irKB8=;
	h=To:Subject:From:Date:From;
	b=rd/PiqcsrkUbwYGy6xVLcR3BDoTJLVD+WopdeCfsyMjYNYVXcTAXJ/Y+eK6KeCmKT
	 KNX5wQSR132UJGAmEjwpqUfAzL5HUnuK39D6EwNUcW8838Oz5vqzCbGeGWHGlzyw2k
	 jdMpWKhNnUCN8p4B7vSZmwSQIYOqzy/k1Yb3SDcuSvLxt4+Csu6J88rCgVc7k5SHbT
	 URyjBonuZkFHSNJOVPXsvKSQbIrIKYagowMfF/at16n4tkQOdjHS5DDQrVLhrA+QbK
	 RxE9Ej0Jb9zSh8+IuBorPpRcXRaYdk3EZhH7a3D8OrxEv8hQtOw4yq4ntAsnlrlCrn
	 3lLYy53pWtsNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6BFC54F52
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178529043368.2763.11433795741608640452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 543ac455b1db994f4192e840aa82a607c3ab1abb383e9d4310e95bb97f99e092
Date: Wed, 29 Jul 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785290433
