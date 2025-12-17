Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 437A1296BBF
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 22:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766010834; cv=none; b=q2x2dns4DEFPoPi/hvDe9fCyPrCfmvkij1nl3gzBEY+jS/C4rmcN7F+zE/ROBT2BNyqSYK9JAe3PDduwGlr7W+zlfE2Czu0hiLQJvKq2eSgXYWJMgD6I6kBuMedKKbe0+cTtocCbbFMD1DX1b/oFp96sIcnkKsAg8gDS2rocpIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766010834; c=relaxed/simple;
	bh=JAq32X731+9XJxY5dFtj1OtwUWE9oay6fbrIiq7yCdg=;
	h=To:Subject:From:Message-Id:Date; b=YUD/7zmlmax8tVBhOaTq9el253MrsQULt2XGKtycGdrr6QBe4eUd1YEEKIXcujzF3+TDIkVWmSud7noGgHkpp01fYP5hjxzJH0XfZ8Pf4ZS8agPSH3RzXkybbLlpptQuoN4aIb5t7iW2idlZEyCETADcfdmty1y6QjN16Qt1NoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oJrN0AWZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oJrN0AWZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4710C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 22:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766010833;
	bh=JAq32X731+9XJxY5dFtj1OtwUWE9oay6fbrIiq7yCdg=;
	h=To:Subject:From:Date:From;
	b=oJrN0AWZ+hkNs5VQKKMCHSAM/kEdKyJOvmC0WbSd4nb3v4GlSIkNjDUWSD2ky0PT0
	 C/bUndWA2mgYFbconLQTzOVCrb/9XpC2VhL6TBOts8IRiKDIdWbTLeZ0uQ5RvJZPsb
	 HqfbN3PIVTPJdxdOF+bN3mHajcuoB8DnXnIK64FHoDhCLudCCswcDgw6J1Z9cUlYhu
	 L9lNwDf6UjnIYCGdJWHBRtLxCUP+1zSp/MTJL6cDHyNun3s71jIz5P4UFjHXskYgyf
	 PROeVkr73nW7hOkUs+dMlXouyN1hMKCyF1LtrI6g36fZuExYeJnsovmC7b4Uzn6ABP
	 eYtJyI0SGCjog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9155FD68BC2
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 22:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176601083358.24574.2339988015306724072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe9effe4b4fe931810b3f5e57ef0aff5ae0b90f85a9c619eee187100fada735d
Date: Wed, 17 Dec 2025 22:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766010833
