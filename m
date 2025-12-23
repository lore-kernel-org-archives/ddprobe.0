Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17A331DA60D
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 06:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766471634; cv=none; b=s3R7lUilo1uv85LidRfZQiPo6SUM4q6wHFNVAC9EmwcsJdT2fFJ0mhBIZ516SL3w1fN+pMPxsiA1Bl0oGq/yvx4F9EZLZ3uhOOMm54W8MQLHZCdBYkyNdqtHitdI2Y+hE4H+L/ROwg/uMbCX+WO3sX1SA5SxOfceStZG7NyGQyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766471634; c=relaxed/simple;
	bh=ZAJbAqLI3UVolsuFyZv19o/Wy3UKDzZAedVunBFD0Wc=;
	h=To:Subject:From:Message-Id:Date; b=VYdqhug5guoRthF4cTWNAH70qCZbu6yiyn5xlznm95VB7TSxlPJfxaj/5u8MzKJoyybM1CKzzYQs62u7drT2m5S5apNZGyb9CmjKGXWY0aTd9+8Ji8leQGIylFkneG7/t3JhijNOoRVAj0QZSZWUbmbxrlN/qMnbhC9SK8L7kOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KwTaStm5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KwTaStm5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AA8C113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 06:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766471633;
	bh=ZAJbAqLI3UVolsuFyZv19o/Wy3UKDzZAedVunBFD0Wc=;
	h=To:Subject:From:Date:From;
	b=KwTaStm5QPiL19Tx5PWRNQglPBZfiixgQBh9hPoLpcYFXWpAECtv/3YTTnB2uRd+E
	 5UINeoZ3WN4nprfLeZafcYhPeAJV4qMvwpxN9vo/YGsnWDqgq0UKpKBm1aTjirxhm2
	 2yFzUyjvf+l/v0J+GLJJXu8Ut7CpjzBHM6cFlPMjdch6BkxAMdblE8S6t0hsMqzhpv
	 aoms+jeCY55SCDhXSKgsqu5fZUrabHxQdEd7u6Qva9PHtflcvepkUA+cfTcPwJyiXR
	 vPoTWLrEe/NmuASfVKvyEyhZk+mAfPkgFxhisMjItuARnoq+DKc220wommnMnznN7t
	 1dgDkRQ271WhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EED2E6B27F
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 06:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176647163357.22123.15598135162205808348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d8e30fb4b59ffbdefba76c46c65b3f9ea60f99a8404ea4499d861c8ee1d8637
Date: Tue, 23 Dec 2025 06:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766471633
