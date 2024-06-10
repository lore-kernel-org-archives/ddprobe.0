Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 544311852
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 00:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717980443; cv=none; b=Yenl3OHmLYtkQCyU7feQfz8/A83oajN4L7iak2HXpKnYFlH23atzPIeE4B2kD3EEQF8r5te11UzqLLThNa4eM2f78ZOoJ6xbDyO0BVhPsbTTsBi2Abi4vG/Km65Tl/XLVM4wOQ/dRYjIWkuQJzVVJYnhDSc2ZnZOKwgIT3ZYkZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717980443; c=relaxed/simple;
	bh=b+yxTvWvjQcVIPUz4eawAI92xfp7AQ0wRqi6yysf/+c=;
	h=To:Subject:From:Message-Id:Date; b=kOUKmvParBY5d1Jri6hwM96cxcX1B+rIHYQ4kIBoSqaOo1re8B0GBS1LfmEcLTl2t9ppwboPhRkZ9LYOt/fwmeh/0iec2BI2+qHJIwZjHSt05jAe8zzUAmktlO3EmN7IEaEASKjrFQd+FBCt8b6d457afxhNeR3XX3TTGN/XHu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZdosAg1S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZdosAg1S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA39EC2BD10
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 00:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717980442;
	bh=b+yxTvWvjQcVIPUz4eawAI92xfp7AQ0wRqi6yysf/+c=;
	h=To:Subject:From:Date:From;
	b=ZdosAg1SeV9KiNBczDRlRWcAdJR1xIhvcL3plhbnED9VQmUoZCU8mSCulks0TgIyt
	 Z51EDp8lSaVvH8uoR0/ZR77jHYoJiTN2ZaGlqAUK6m+5DpeDhj7JY38445RPh7HOGO
	 v4ZsUUXHfEsss66BbIlIxd3jUTkkWD8x5IEMU1zLYm0MwccsnPuaYB3ShBaku8k+Ks
	 fGKnUJez7LsQg5iZqVO4bZ55ceSolP3pDgE9Vc5uHRwmdWJFRrjAIK3dKoFhRa4muH
	 PfUFgXZ1y2RT9OP3jSgVtLYxwS3UimwGwc5Sb4tkuQKBCTo02xG4T6NI674Y2fn4G8
	 p+IauLqmpPvBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4CCAC27C53
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 00:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171798044276.12483.12892601713523977738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d52003ab9b3e1dd888e531b5d8c2d20519fef243991246fcf63e745b7f17e0f
Date: Mon, 10 Jun 2024 00:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717980442
