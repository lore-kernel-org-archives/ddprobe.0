Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 109752C15BE
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 06:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774246494; cv=none; b=TwDryMtulIQ5j5ySGPjee2aGy/QA7iIEnz+ayUqXy4vPtN3dQbFkaXanHWIxMniV+otTXbl3pYHsKw0f9IJ+F7TPfa4EYOeWgZAmq7GPfOjq5fM4YuRXlmy4aaXcUsXIEAXdSLZMSvx7oIbyYkbXcQ7FhbUIV8XV8ATpY2bfbcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774246494; c=relaxed/simple;
	bh=Lq6Z33KaBTBsvDqsCd58G9Mxi3D2x/duQi9lEA4T9Sk=;
	h=To:Subject:From:Message-Id:Date; b=UiHha/5eQQw9daHl5EZhnpCrLwjKPVlSkoLjI6T0EdrIwbPrCY4jmlVBnad+fPwDzZwpLb+MhxweyjJlerjLHIByjqI0oaHVcv9l1w9leW+QvrTXdOhALmOHh0ska8tmMGNcZBZCx8ZEGo0LQulgmt8yfdCvHxbVUX6B72Jhz8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OPx82cdB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OPx82cdB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9CCCC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 06:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774246493;
	bh=Lq6Z33KaBTBsvDqsCd58G9Mxi3D2x/duQi9lEA4T9Sk=;
	h=To:Subject:From:Date:From;
	b=OPx82cdBggLZGNEte6nZIrgyX1P72Ap89RNwlxvvN+rH1NoZSALYpth7H9IrXLFwm
	 y9JZKcfu7maqXmhtojS18llqZf1ToVhxmH0Un8smu+KWZCHBxvrw4z4NSmBRs5gahQ
	 jPAzwLs1RZR81We7GkdhrIG7zrDeXvPLWqopSTbOlqfQ20tSwUFsT0GKEFGkrk1Cjs
	 0IZsfJrhRIkivSQ/Yjh1ffMO4vXaqxaM9EtEoS4oaLlydJma8FmC7Ak+pmblsWb4o6
	 9VeOwBpJwBfQLGF8QmSYT2317mRMkWC3BLX79WirlKydiZXdjXZZI4iAkF+Tjz5Dcd
	 6BAex7t3dkgrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B7FD58CDD
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 06:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177424649358.32116.16001498773310421072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8769f2a8bffc08e9bf2a3dbedea1c0160fb27037fc8d42f0518d995d7663544
Date: Mon, 23 Mar 2026 06:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774246493
