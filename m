Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4792E8286D
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 12:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714653143; cv=none; b=S0DiwyfnLHk+rjxJaK/h3jsdDnT2YYkvPEQAqWdhCkM/YGacVQzYFLcs+CxjrF/kXytRy56uCyBZoHAwGbEC5NK8dMeH2AxepEMobY7h4r3WSbRj9MLxaQ61X17FQlAmf0fXTTPjuz6yakL5lzCHar2GhSu1+3SE/NKYf2ULLOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714653143; c=relaxed/simple;
	bh=WG+wPoXItdhKMbtrweSslqbCtLhzxxBEtaKgv3t9Nr4=;
	h=To:Subject:From:Message-Id:Date; b=m86hzCU1H8ieOFj6hxp87cjSIcT+pDNiN/Vj3jTwSF4G0CIMStsfXS5qlR/d5q8ExxQgyHtxhAWWcNZFp0SY3CKfobpKdTy8wI8E2hXdRvCWxf61po+fNhIby6zY1lPdrWdDkYA8PJOJJ90+fj4UT/saVJICU9sWjQ/xR2FzGEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kdLgiTMN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kdLgiTMN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1EE1C4AF1B
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 12:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714653142;
	bh=WG+wPoXItdhKMbtrweSslqbCtLhzxxBEtaKgv3t9Nr4=;
	h=To:Subject:From:Date:From;
	b=kdLgiTMN3WX8y5NrpNO/fdf0rNv9bEtkDOGMKuQqrSfXVFYz+h/IMTYz0GjtrWomK
	 Uqs3jgfZld055+yXaHCsZPN2m+3ZyW4yZqkD64m1zUJsHgIFdsntPynHvdODvRqTv6
	 LBeEJera8B0lKVX3fd1g39HpsN2ZCDiP4ML7QetB5ahQcxwMh8nfGyAQu3HYmu8MYk
	 TS7dlgp3ncabir1aAJmYBYZXD6m1PrcyM6u28Z+Qydb5oHcS7BTzw4uKAZ8AlCfIC8
	 3WXXuj/kVxOvW5GXelEHZSPqp6EYfOtszVxnNJcZt12mtWOyMpI6EF7amuMF0Q7d2k
	 ozPEZf3fijqyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD3B1C4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 12:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171465314276.32199.2916065950469098783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 891c265e03edf505a9f317f1007ba97d415b7e31e1f616916d7364e000e255fe
Date: Thu, 02 May 2024 12:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714653142
