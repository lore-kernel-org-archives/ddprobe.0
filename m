Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A88E1E1DE7
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761524394; cv=none; b=uMECzjIwlq6BYZLaSohR9DpaoK37i6mZpoi8Znad6UXSyP7ONLndXaxN4cH1D7I+owt7Sbb1PnssuzpNBbMeFvSsJfE3QT8Tf1+h0TRynXTST224IlDzVDG3myBGnyv8kGDnGRKvUIXFU2nacFo2ial2HnTvRxXxpmMqrG4adgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761524394; c=relaxed/simple;
	bh=64CtfTD/APc4dYTstbr3KO074VmjtDGKuui99pMKulk=;
	h=To:Subject:From:Message-Id:Date; b=BIFYpwPIDatp53gxMQloDYoVJ4z5v5LatIQUxyDz0Zqpfxa5vcpOc6sJrR4YMmHPr6X489ngSMQPaNsYZ+Y5iY/cIMWnR10lQCvp/5kdngL9hy3RzOa7x1GjY+v06/nalKrvK2FzRyH8f1Dn9IHWECc8WhvSO374EtwaHeoOLYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DpmN1ZUF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DpmN1ZUF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3645C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761524393;
	bh=64CtfTD/APc4dYTstbr3KO074VmjtDGKuui99pMKulk=;
	h=To:Subject:From:Date:From;
	b=DpmN1ZUFvUepgt/0WW45TMEZ2JNd3LQzLxlY9+kDxlzO0VRPHGXBIZ4a9oYy0w8Ef
	 DiMySBcHcoJ2AoYSnK/9mPB0YY/70nxu1PbUy3GId83goee8MGiapQU9/mfaEUBM6j
	 3K/rY0t8FeErI2jsV1txSJRkXfTXsByiuLXCSjwnCQdmZXjHCY6K3nlrpbAOk5Rm78
	 7HrlvkZFnL3onr9a+TECUZDPv6wduAQXvN7xnfYd+KGX1QvNszJ378BYmLgj6kTiWo
	 2xjgnq0/2KZUSFKOUVDAgJh6q+O5bYQRgr4+on/W8KZgVvbR7+nQb/djA9KNSDm3dY
	 RQEWGhSefg6cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F927CCF9E9
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176152439358.3148.1326386154651448912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05c7668c3c387a8dae71aa58c8c3286683df7c016934c33fcc2f5569da1738bd
Date: Mon, 27 Oct 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761524393
