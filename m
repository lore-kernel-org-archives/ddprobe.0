Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E9A829CE6
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751253595; cv=none; b=JSy/OfliRe+GfQlynfb4PWuZGItDbCKWc1Cpll6fbmfUB8l7Xk0UsoVhqMPdYqyDeLumfvPa2bqnU2PxCWcuBPA/BSThtwxsCCBRzIvrutx48qKcInhoh20Ukngnhf9VFZzp9KoT1o4clYq4+J4YDJE4k1Tb0tsivtC8Euw8zD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751253595; c=relaxed/simple;
	bh=MmdkMwpapOm7+aTwDSA6BQCZNwcbKVxwIQYgBmxCzQ0=;
	h=To:Subject:From:Message-Id:Date; b=EfJtpZLPV4iOA+Wp3u8eaf9m6p4+rP0PO+pfdPbFg9yk3woZKgIbcPU4lNL7oEXqfyLg4oJ2SKVpQSZWOHY43Lucg/kbcyWoLzgTuRx8ZjSCWqyas5EwDYD5K7sQKPKhNTqxJjB5YlJ7Kx12kXFS/xyTeptUkAwarX8qIym9HDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pzxlkxdt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pzxlkxdt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4619C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751253593;
	bh=MmdkMwpapOm7+aTwDSA6BQCZNwcbKVxwIQYgBmxCzQ0=;
	h=To:Subject:From:Date:From;
	b=pzxlkxdtXOYmyFPzlPvFq16jZHuh/CDuwDFZMgiKfIDDS2Kd22nSQDBEEx/Zuw8Gh
	 z1ANPnSJ5Io263rZri5bgFvClI8GSNC0bWTktrho5m1//VHwhiggsQyjfzm6em+6OD
	 GW4ROEjW8fh6bkDPrTBkqP2p65J5HZ3QAj0WceSHxA0PwhxL8i98zb/HKCJnByJxqB
	 jPqaAUjPCFFbU1uEM6u7Z5Qy8GTsCELYtWMRcUL+4IDnuZRb59z8HlczeRCPWQmg6I
	 dOSvKC9NPUZCoNHwUkEokIoGYO7zpCbwNaI//dvZe9I4aeTHWm+rPj4j2QsjLLqcRP
	 ISPgpv0D0hryQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DF0C7EE2A
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175125359357.26754.1901861412735527327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34517ec75ca6e8ca90419589c59bdad56ccf9f3ff10e7bae39b4286b36cf4ba3
Date: Mon, 30 Jun 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751253593
