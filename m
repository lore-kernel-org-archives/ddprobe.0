Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398F02DC762
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 20:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776283654; cv=none; b=ape5+uatlbdahpqNbROHlTdYtin/r6cqZwn/GLS9my9UV2xmFWcjQdXkVgyOcMije0MbQs4erSBfNGENeLMwxxKdHFD0UEPSt8ZPqM6h8FMh2M994s9gyUKucqIRMGd3l4+zbmkc1/a3bFhBQfpxRFf3nnTUBHLg17D+Q0936ks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776283654; c=relaxed/simple;
	bh=ulMyW1Da7wlYLhmGDbQN5z4pmfx6KXMNRIXNVipZmgE=;
	h=To:Subject:From:Message-Id:Date; b=pILCdXahkjoPI0Hj58bO3hK2JVJaRKd8zIPsg4Qqm289cDBjKm0CtlFKBy+iFJXKkJ9uGjyjyDOPGRnqx10pqUQNTgzHQJpfr9CqENJsDsIteQKnPOFXvqJSrN/HFpdKC7gghailgqgUsCehWveyxqpzajeTQ3Ya4209tiExznA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RqcxAPlF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RqcxAPlF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB5BFC19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 20:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776283653;
	bh=ulMyW1Da7wlYLhmGDbQN5z4pmfx6KXMNRIXNVipZmgE=;
	h=To:Subject:From:Date:From;
	b=RqcxAPlFOOtYMy7hSiL2101M5w1WO/3+SocOJ/ey5LN+ZqpqcjYBhO8bWQ+1cw6kk
	 SCZlgHnyhrj42d15g/dxpwPb/R9Zn1y8XqjlnvUAhOZ77M1xLf0a8Dq3IpmaomPP8g
	 JH1Y+YZD6Lkq2tuKgnxx3HeOFaoYTzE9mPaKrw9aAvX8zyK1+HtIvaXNXY6KNxWUs4
	 oA3/UzWvYh81JbyRKbDBwz8ixXu0mFa/zgxBSR5KVoCLLr1em2JRkutKzQm8s6EZvm
	 in9OFW8MaMYxW0X4CglI7uFNgDzONyjrfPcp24J8CqOrRmN9o53+Tc6LpeGFo6TJ78
	 gl6adIvOHYP0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D74F428C9
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 20:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177628365368.15365.17937037722070772387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36cfe3830c417e280f539d55e3473555a8e40ce83b8bb3271306be5695103145
Date: Wed, 15 Apr 2026 20:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776283653
