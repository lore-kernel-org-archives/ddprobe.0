Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22DCF1A275
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 10:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775991454; cv=none; b=fx4xh5DIRH+RvGzsz8FDOBhL9hYVWCaDqwlGWdAPv6FrHzrnZxDVIRJt7yQXediS7QhEFAPMUuvfOpatTX9va94EAwaKOukYRbMl3LqOT/2codVwg4UXxUysl6LJo23mQ4ju4jNSMM4/Z5LW7QkNbjHax49NgpSSICms+48M0FU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775991454; c=relaxed/simple;
	bh=jT0YSEPpKWZSWC8boKDmfsCr/Y8iwl1R622I/e/4YVg=;
	h=To:Subject:From:Message-Id:Date; b=Qxa9Lzfb1ooV3qT3UmK26OXGOuCABR7Ibb4cRii0uxtPdtvmOsbFbGibqbyf5RhmVTDRkRyYA9K3J94vhUFmmga2BuC2e7tdAYgkG8+tMLRFyFPRKUmiry8qa18Yaas4glYpTVu08Q+dc+u3qvLThOGe74ZZTogqA3yzJWAj7WI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a4WL9HKE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a4WL9HKE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1508C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 10:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775991453;
	bh=jT0YSEPpKWZSWC8boKDmfsCr/Y8iwl1R622I/e/4YVg=;
	h=To:Subject:From:Date:From;
	b=a4WL9HKE09eNphdabtkFO5z7XL+f6ADfquV4w8Yn623w1MS47GwM73gOXfLuGE1Nq
	 L6HZaBCmLZ792/J+Fm+GZtUzpjaplOuuxWmqj2TqUviY4LWDosaJR4A8WAmLo0LKvw
	 ssHF+GjQQqBRLZLWG5xXRf/rtz5DYfIPZyQS/J3pJIlBEwFQP0Jl2eJ9dzaEmI5x0G
	 YxXBPb0s5uCr9uLaZ3j9ViTpwJv63Ot3Q5lk/+ahsI2O4VqQAOpgZG0LS3PTvNx/co
	 H7AIeX6Hj/PPUR42i7i9ooK+ah4trMEfPE9xQvAi5tDnFEX+9uyydeN8ZfXHCatAlF
	 egWeFXUnBZ2+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF467F45A18
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 10:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177599145368.12227.1316950223527783830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e10cca2d76b75b889753184e880e2135ee82966ff44af260e4971d2fa2907874
Date: Sun, 12 Apr 2026 10:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775991453
