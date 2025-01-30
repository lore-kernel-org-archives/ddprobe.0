Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D6631F3FFD
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 21:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738271755; cv=none; b=O94GRQh7QtjZfjrwCyE6onv0CnOOUuEAKZW756OkcsqS/XvLAJHyoW9zsiTmJ8w4N6Fwk4jgoaibWhAZu1FKkO9FyhiCoKWlfuEAWCDTHVNaQ4peFeyvG16vO7LGOEA9ZzoKJ8UrRFC+KTwM5SF4sY+QewaLvl5pLc1tdrKxXKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738271755; c=relaxed/simple;
	bh=qM+shWYv4AAjnP4p7syxuYC2QMQ7c8+2F2RUQwiRDOo=;
	h=To:Subject:From:Message-Id:Date; b=vCMkxy2gHiCK4pKsT/DVE2KBmjnZOPl4EzS4Tqcp5KvkO38ydAvvg70pUnV233VQtm5mE1pDdL59k9eMurRBEJyncl5Byi8tgbGteKkcgiLW846vCea287eapzOmWWvl+6bgt4t07E8o/Feb/LKADa3EgXTd/jgAD5fn+/reelg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tUXP1D17; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tUXP1D17"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB152C4AF0B
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738271753;
	bh=qM+shWYv4AAjnP4p7syxuYC2QMQ7c8+2F2RUQwiRDOo=;
	h=To:Subject:From:Date:From;
	b=tUXP1D17w/KRg+v+vj+UERJGNqmPI/WOSetX8LETScDZauBv1GFegJyYGkMJiRE5n
	 Jm7JUAWbusrRBHAsGkAvwPjltntVgVfO988DVdDhtwCYs9ghBcLDgzrWWgxHxpsGkL
	 fk65K0aNR+VihpZPfyCIgiMQxP/Aj/mv5H27MoZrag+OciasSUcfeouOHxSCT+hnkV
	 TAqosIC6bTjR/4NoBlvQeSie6UsaADWWEgB+vprA6kuWk2fnznsEjVLq9ajnMF4jFr
	 iMO06eDzNuGwxpe0gvzQPiigtye8AjKRvGx7cKCCxzZ8YjWqZEN1IAidModOYf3nZP
	 bRWKt7OBINa4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7019C0218A
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173827175367.27801.10206977465733930140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4fb52a56cc59d31aab61df01e5e39932e5f92b7a1d32699915e47e99943a551
Date: Thu, 30 Jan 2025 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738271753
