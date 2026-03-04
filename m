Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09FCA3033C0
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 10:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772621094; cv=none; b=XBJbdomR5pPdpqDWNzHaLDLT7bC4lQU31Txjb5Upoppc6vNv1+p1jk8nD1PZr7vBFqwHV8gF4GQnZ8e51qxtODGKQqfdK9A3Q3POt9xcY/ZviE3olKW6Df+LVq1sdF5J955haJdzVS6hnWuppZozBOOHk9F6bV9M12qDxfIzYpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772621094; c=relaxed/simple;
	bh=RX9sOJOnL6By474wGr8Wh2AguAHakTF4XiElM7xr7v4=;
	h=To:Subject:From:Message-Id:Date; b=hVpl0Y8YL76/zyNrSQ/G9jEL3PrKP/+3FDy+hyk13ykgZnwFedi64O9dJQWH8iWR1SRAAmV/8lNa5tCHZ3vMNviyfXSdxKahm7Nu88gN1lmstJweqHKabGRL0N92im4VUUyjpYyuIIy8SjCb3CpLzEcUF/YPoqXyk9YF8IunXAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jR45F8ke; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jR45F8ke"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC8EAC19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 10:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772621093;
	bh=RX9sOJOnL6By474wGr8Wh2AguAHakTF4XiElM7xr7v4=;
	h=To:Subject:From:Date:From;
	b=jR45F8ke3CwNyYjvUzXcdbtx1aPFiNKYm8s6tzBrNe+q6o2fmbNub7VOACbl9Sh9r
	 GxzUKyFFIZwEkTdgfEPDE94CpSjvf/YQ/qmAwgsMlEmru++aYM8hEuuJT5OAQo33d1
	 24UTSLhEGhuk4uEVx22XNEZfsyJpAdJQfHTyRJt/RgUSQltyB1bQ5qxD8+9MVcWY8g
	 I4DMVTxDUkz460/4bDvL81GmyVh2+SSrgrs13oNHM/YvtID1y9OEXGx8zi98tUyaaF
	 oEfqg5qCViINCVhqW6d0SpF374D8TXcx/xoDRhHCxoOXPuZNYM3FKKn9uNzi/FCwNn
	 FcUiU+gU2jiwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93689EB7ECA
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 10:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177262109359.9390.16935696775046483421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6963f67ec649266c6464c07f43de8134f71984446b9eb2c3a34f9b6fd90271c7
Date: Wed, 04 Mar 2026 10:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772621093
