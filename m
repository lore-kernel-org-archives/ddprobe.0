Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 323E02FDC5B
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 15:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764775374; cv=none; b=dVrl455r1gMbj1x17XIBa6gBpmZ1/5Sbwi9c4ln8osSRxD3THuZQnAhCAtSLcsFVwIibq6uNS0Wz3adnjyLh4bduwii6JCdSFKFYN04DEfgQo6vEbvQ0B66E8ydgo4Rt+3rAQw1McOX9oJT95ABjWAA1y5aw0zn5A/c1lhMbI0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764775374; c=relaxed/simple;
	bh=g35R1jBXx+gj5/LXRpNrClg8pe4ktCl6jWwvqnotf88=;
	h=To:Subject:From:Message-Id:Date; b=DsAbdKpZZPk377eAGFMZlNYNZ1Q6D20tyKL9zI8oh821POB04Ll8uE4iFh7sAZlBbO5NJGe/xtbtg0Z3u+CKtBXUfTxrq5c5xvjxe1moZ+6Yv3pYegoJQdJ7CEKfmRO3eBYEj5vr0v1Q7/S6FM99zyDzSZKew56C9AlymwZ1js8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GE8icKhx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GE8icKhx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E0AC116B1
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 15:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764775373;
	bh=g35R1jBXx+gj5/LXRpNrClg8pe4ktCl6jWwvqnotf88=;
	h=To:Subject:From:Date:From;
	b=GE8icKhxA3yMrEzDkCFkczEc3YRfawZjaaB/dnd8UNji0G+/5wdEiyEFs2iqKwxu8
	 A1Xbr6SJmUaq9LIZxZcQ9m7nwBZEC+QzARR0ajdCyLE0ult6szbtKt3PCpvo84KfaY
	 SHXo9Oviuq8sDvGT0KKOiX6CL4Eiwh92qpI4K8c9zXoQuzcHtaJuyHnpFa7D4KGhqN
	 gHVf1UV5o8SX/g0v913Vl+Qn5gtOkG84D9PuyM4kRy0f/TU7ZTYSG8UO12Qg7D8Vm+
	 qGGG3hNGWC7bK96MLPmvyCdSKd8+bTlXvU7Q+nKlpX5VKA5JyEmQbkvzZRHfUhJbHd
	 O+G/GOF9X/xrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930FFD12D75
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 15:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176477537358.6861.2631267890725277378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fc30fa1a3d0aaaa89e7fcf24585c8fc722e7adae3b22022f75512c7aaf00c77
Date: Wed, 03 Dec 2025 15:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764775373
