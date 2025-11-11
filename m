Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1314B31B110
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762862394; cv=none; b=stfIRa6l5cNbTK2ksTLVzvLWrTUreR0RYZVEnfbral1amGpoOMKWHxvfB1p7TWv3zB2SH75MI8bosUXabjR19MCV+s5NERaAhJv+YhQQKP9QIKYuGFyvd9PGx2RnILOzvz1jQGsEf8e5i9rffwcIFlzoZtxUVcVWhg99g8oPU4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762862394; c=relaxed/simple;
	bh=V7oBjrRn1B2BPDAHY0yqHZh+yuc9EkvMzC93XK9jc8A=;
	h=To:Subject:From:Message-Id:Date; b=bFNlXrNZXCO30xQqN6+IFFz+EeuiBSiiBtr6uSNV33UzJpRXSPJKrvC+JXThW4NgbP8X+pVD5f14+A2ZilGLxt4C8j4SZUXN2BqDJ0VUMoSkgbc9fj4nOmy+aQl9ei9f+T6SP50ESWsEHKBFNoSc6zwO9j6mqcRrYIRSuzT6h8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A0zp8Wvu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A0zp8Wvu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F16EC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762862393;
	bh=V7oBjrRn1B2BPDAHY0yqHZh+yuc9EkvMzC93XK9jc8A=;
	h=To:Subject:From:Date:From;
	b=A0zp8WvuKDICbijCH3LR+kZOHLZtPQOMOFXYQ9MKRnOG+26i2COB6bDQfZbUAww2F
	 vwUnnHs3cx/B/3+WFElM74rX61hCjVfiNvt0Pu95hYDJQRdx89EI5s/ZZEju5FkRVt
	 htCZ2wIE64WI6eM6EuI6F59EtXOHPvh0zugq7LBPWFyjiLcJvYEKIrFAm8pZQmW5PG
	 088MeN4OGIThPvJTlX1JWREKXQWrC+L+tDFJkq1lYw51FlthXTL0bYMn2KHfwGt/Ao
	 REcXadEnusLnNVqBEW6lpgQu3zlJUhPJUhG2JIfiV8rKkfVq0fD1qVuSM4B1e3k03l
	 4s5YGlPnbQACw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927EFCCF9E3
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176286239357.10779.10793243697039134617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afd0cc3a0218c6f4975feacca79c62dea5954bc00a130de9135bf8314cf8f9ad
Date: Tue, 11 Nov 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762862393
