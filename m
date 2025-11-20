Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2847F372ACE
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 04:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763613114; cv=none; b=H50pCL5+Fehz1zlR4bUS68sRpu96+TwekR6RA1pDjCWovAchur7R7v9lrO/8pYspsC75a4UL1IqJZnH6gKN0BbYGABhHfaAdE47SrgCjKoeSgJ8bMdwf/BMhaEtf5XHKbVDZ06+xTo1tN8dSKSRZ8MfJcUYuW4iG4YN3POgdZ0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763613114; c=relaxed/simple;
	bh=1t/2icp2cKxCRP81m77HrzSDSaVXeXy+S1FI56N9nXU=;
	h=To:Subject:From:Message-Id:Date; b=OL90E6wuvEdHCn8AWxPKtIpws77kxlVBzm2mk7ajojhRQg58cVlpuPoZ+h4K0p8phRgVoZfcGy5O3IPyNjWYIe78uBlc1uYU9GD6ZnaVWhQqLAz6uacvgkOtKU4M35JjzdROc5E+7HI/1O4rYjksyBrQKa3SyiSPo3kAx8k9buE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F67PBHrR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F67PBHrR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A5CC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 04:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763613113;
	bh=1t/2icp2cKxCRP81m77HrzSDSaVXeXy+S1FI56N9nXU=;
	h=To:Subject:From:Date:From;
	b=F67PBHrRWbWv388T1oYIApo5glqBfPjNtbbapo6w7CYeN6uYWsi4pL5/+DEYjUvFl
	 8QI9t+a59cGLRyyQwcl1Ey+/waoA/bs5kDUlJdoWcsJrYyxH5wQ53ou5MLdqVjSi8V
	 2GuQ3WHzLdlA0AObkRYK+FfvPFYDfylZTULvvJ6+6QG4MYmu43Z6RbHtloNmMQ03dw
	 d4KykcvHOwJvrlNQY57aDzQcnwBBn4j4Y43hgEfG+NUR3vP0oi8phi81fmkBmMY7n+
	 +3QZ3Cvc1xD+DijxRa9AGdz3tzawlTnXewrxRfdzosSLVj0iqlr59UQYAKhZhkgad7
	 6gfVAmQxPYwQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954AECD4F3E
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 04:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176361311360.5521.11899282896594489200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2af233af64acbb1b9966a4c493ab4f7765a01b7d3cb214c7bbae8eb36e2c727f
Date: Thu, 20 Nov 2025 04:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763613113
