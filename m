Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73DBAD51C
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 09:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719136343; cv=none; b=MaqKI5I8tjvzlxzbW4gw6vYKJY7dDiIRZedVJmxL6toJgLjlEEFuLCOzx0uUJb32Kir/F7498W4Ub+nBHc1t6oUZ6tXQK1mA272A6a5PM3tTtEQHNUl+bkV17ZH92g0MfL4xXRlinw4vkT09jDk9tHPsV/rEtqkVzeI6IySk5Tc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719136343; c=relaxed/simple;
	bh=I6d8/0E6B0bkONDS917sKX6iyxPlLe7SKL6YO5budNQ=;
	h=To:Subject:From:Message-Id:Date; b=FYYXwpjPiyJZoiuQNSgW2BvzrQpAmUvHrnrr9O2DAypABSHGq5jTEXWft13EvdCLAXTc087o6urF8C3EF0R0xBhtLsKpiG/gexA72jqwDC1fG0CunZJAK55kW5fJjNPu39pQp68XzdoWuPaJON7/Q7mMOPBWbsuktIELgAOEsOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y0I/Ezv5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y0I/Ezv5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA5A4C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 09:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719136343;
	bh=I6d8/0E6B0bkONDS917sKX6iyxPlLe7SKL6YO5budNQ=;
	h=To:Subject:From:Date:From;
	b=Y0I/Ezv5Rio9S86DNTCHHY47csMBm9TtPNQGau4tTBH5i/kyYKhJj4N7nDIZKYrMO
	 jw2SBqeFtOlYiLIE+kpYi8rvdY0cVLr/n7w26Vn+6Bmg4VCJrOKoisn8wtKarIy4Wb
	 +7ZCqFE2MvR6G+UI7PDPE7O2IQvXXQElx8/g5o/K6vc4B177f+A4w2x40FLMFcJJV/
	 mHJIPiXfaEQ1P/Vq5WV2VxOI1bEptNdkkZ6Z2w0zJ3edCqqbt1IkQn4KwO3Z9iW5pu
	 9XNqpYLFANleWhcwB5hmw6YAoAAtXE3ucZouVBpH3qfCEO2e5t/Zby91/dMxXmmfSl
	 toO6Da6hzpYhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D70F0C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 09:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171913634284.27552.8205163238261931477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1d2ddc50772f1256cccb7af2d50580dbc9d51b0da65c7ed0010ef0ce0ce4bf1
Date: Sun, 23 Jun 2024 09:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719136342
