Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C0E41607A4
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736441154; cv=none; b=ow3k2N1V/x5EdjawV8td/SEmdWY6MOzfFd1Y4w7DRqeTZoXw4JV90uSjqJxOrTXSFMTtNnrjnO+OcO8LbQ89+fIEKZnUVy65KtY9DyaFpm6VAHueCK3eBvlJerbNujnx44n0YaDJpFMk+P2IONSgmQxjKnf7ObnZ8MnYgxqKf6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736441154; c=relaxed/simple;
	bh=rx3XRZ+35kTNJeNdg0XCPMg2Tsrt5BECq6XBTX7pFmA=;
	h=To:Subject:From:Message-Id:Date; b=FFRjDuaV7QABBL5KY1RfN780l15EHPOEKtnJR7F+LF/k4YP9tZ7YsirUwIHqDyMRNjSG7jhvYp4XU+8+MDu8WWoeXwO4yQHNkCz+zxOzrHo1B4nahwZ7FFZr0mCOkAhJL1IoMJ/237O5KtKTAg1h7mFAW+y9QT4GcNg28ul4wUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oKmuqC16; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oKmuqC16"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A797AC4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736441153;
	bh=rx3XRZ+35kTNJeNdg0XCPMg2Tsrt5BECq6XBTX7pFmA=;
	h=To:Subject:From:Date:From;
	b=oKmuqC16D5yIE4q80BMOlh1BqgEOi+jyE7vnBewBt5p0X2ARbVqVhs67ObTClmynC
	 91daHlc6yaACEWiFSuyfFZtWP/Om1hTojeNenILlwrFfdrqWHSgm8mONQTdoPdZN6N
	 EiXyHM2i5Tm36TyECZXNee5uLCXypw6MZfFi/4dEI8JfwG9p/WtPn9LlRL5cLMH85s
	 n82FABHtREZsVRZ07Py/xFChVlAcu+Vd7U/Zj5eTEQ8BlJRI7ah3vC77C7q0+SJppd
	 PAAwaGvA7VVpp7vQU1RTIvS/5hHrsOKfZ19n2AAMiDSvyiDyJUJb6QFj1o+uAQ+rJW
	 cHxHxmfl/89oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974F7E77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173644115361.6078.16561453552265498462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6a14c70e47451b1e6080315b615602cb499f3a6f574747ba39a1cc692efd9b5
Date: Thu, 09 Jan 2025 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736441153
