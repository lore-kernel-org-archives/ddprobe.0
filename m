Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 410CC25393A
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747055394; cv=none; b=KAuJpVVommdJM5U/Fmjg1xoMpPDgE38HqCbCBHUibji8OSKNADG8Op+IgAvX0Gz66R80uwx9vvW5OVsDfT2yOskpfchDoF2dlMxNfuRbY+eUTO8iVwiYuBCUDI20aZtSrsJDAIE0qHtK7WJQN0ywa/IE8ZsxMiXrBwfsgP0ckpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747055394; c=relaxed/simple;
	bh=hMVRvqdNRSDrFxqMvLWMgqoQ6tV43GmIhwEQgyoxnPA=;
	h=To:Subject:From:Message-Id:Date; b=YLjXzUuwF80J5fShTkXq/UX9qcMrrqFnsOjtpgN95IX8K+VzrGfKq+Shla8vNLAvyfkmtbGTDCoUoIjd2xidEqzQDSHn6Uf4rANp11erAdIPU4cGqy+jVwNaTPRjCFhsUneciylmQr9X1SfzDMshvxMZp/GOa8GwTdR4HwgClHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e4jEfSMY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e4jEfSMY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A175EC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747055393;
	bh=hMVRvqdNRSDrFxqMvLWMgqoQ6tV43GmIhwEQgyoxnPA=;
	h=To:Subject:From:Date:From;
	b=e4jEfSMY1ngNGUsNiQn2NWOVJX9iSQ7BFQgZLxezWHOUtAxPwmMxzM6l8SN1R0HrY
	 X/1paPXVdZ1cG12486BCexPulxjmjXJn82lB3QFrWdR+UEQqqyQckPBf077H2AsPoM
	 A8v6Ysm13ZxZn37tC2m9nc0UJSb7qQcJCWr8VRYJom0tHIzYPcy4VeAMUy/Q7TPmzy
	 LwuK5eTMkoY4dejIClupeIocXhS04VmQngub7WjteE1Xz/vk11WJrOSvT1LojJtg0L
	 rrcoIUVh0g0KMz0vNguUx7eWnkJdQ12L+zm3xHK3BSEe2TKyBEuE71PeYxIowT3YmR
	 5pWVaKvR88r0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF09C3ABCD
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174705539357.15180.8677254223294671546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31c7f8d8645f3393611a35d8a3de79324dcb6bbc3fb63523e5fd08570ecb9915
Date: Mon, 12 May 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747055393
