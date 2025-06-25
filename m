Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C76E1EB3E
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750816194; cv=none; b=COaIouVan0+dQ5+uZZH9cqk6WuB83SckBA6LbPVF66oKx+r5bi47acWOzMOtCyWYf4EdcZUApVuxk768IcOrwWKDxeJFmFNzwa5yS28V0Jatv0WxUMQfCI6vRrufLkJ2aoOWlF28DudmBZHZKFWx+TFsLNQX1fJ7ZRHHg/Drvj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750816194; c=relaxed/simple;
	bh=prjyqD+zDu+CNGJbBZ6a/yrhTW8WknXN+qXBpM5GwEA=;
	h=To:Subject:From:Message-Id:Date; b=YWSr43Qaxq9WYsaG3msnlFAoVjITc2qNDHImzC2rZeTo9TLIf620jKNBZdm15E30SuHby0M3p07LJZBEHKJ7LhzcKXtWmWbZvdPvvd7c4wjwG4g0v5rP0L+IGsXTXmc4gH7cGx1PrC+V0tUZOF1/K0cFpd6sph8IJRJisxLKvNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UpReQLAh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UpReQLAh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D156C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750816193;
	bh=prjyqD+zDu+CNGJbBZ6a/yrhTW8WknXN+qXBpM5GwEA=;
	h=To:Subject:From:Date:From;
	b=UpReQLAhx68EFhIgeGfO30QmBCCw0UM1S0lyi90xBMsPyFWvS7lGp4VXEOW/WFEeZ
	 tlwInmZ3WwG7bz2n4flm/+zlv2AqxW+FO/5TwCqJc2euXr06ZEtmdPYlTeTJY1hDb3
	 ZRC6R3jJOz39jau5b66sO2UB0NrSR4G0QaiZ9rmbQsKmBKqyKBqa+TSsmF1GWxJKs2
	 m+QDTi7tEVWjVeu00drmU4YSC73MGPAajf+Kr45RZfjF+6hwVcNil/pioHFvYH4TY1
	 QXdm9VzN/kwqBLwbn7kRMg9sc8sZnVd4Wsib2SAx/zMevB/+FnLw4T6yfN5F0i0E49
	 tiBP3bt9vdECw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E390C77B7F
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175081619357.3972.12451642630242224028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87be1216abc8333b67159c5f8bff57fe4447f72bf0a50bb7cb006ac9c0426208
Date: Wed, 25 Jun 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750816193
