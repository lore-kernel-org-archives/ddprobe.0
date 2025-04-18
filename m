Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 439D313C9B3
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745003994; cv=none; b=qiloeu7Hmf3AJL7VisoKIljNcvmLHPtACbUyyBeaDYhc5Jj5GCZH8zbFVgxs3+D1CMFJ6c30MYgx4oc8yC+ecG0enklDWp614/masfYpa1+yyZl922v3DbvRoiFy2jJtRCfC+k7Vo6Xymr70isd2illxhbDKz9gzDKgWzaxopIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745003994; c=relaxed/simple;
	bh=WXvfPF7O76FNts7KH1jnpOva6dwUbSs27LmdInHAdtY=;
	h=To:Subject:From:Message-Id:Date; b=pk3h4kS8sT4o6qB+T2KxyyxzhdOxe9eK5YZex+ARMeVLGGTtA5wiyoEaM9EklLlLuBr5GjThzGH8UaVRQleIGp3SIVqYIo3xdGlArAVUYdYxwNuZhVJ9VCshzW6iq7FAN47dkNcRAfQowBcdrE0asdgXoNCyNuXnPEOAs1ry/lI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M4ydvNdC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M4ydvNdC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF0C9C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745003993;
	bh=WXvfPF7O76FNts7KH1jnpOva6dwUbSs27LmdInHAdtY=;
	h=To:Subject:From:Date:From;
	b=M4ydvNdCGiQDCGlbRVMBR1cqMqZYQizpda5Q8lCZCgbr65eMmifIc6Njki04SgKjb
	 Hq5xjLZizN+0GdEGMapax0O/K0OQv40YfJPT4HQ/lcnkGg9tvCZ5xV0xvxaidPpFsK
	 1DhvI5KJO+bBixkhfT1kTfQxY/07Q73FVz8hQ+LE3s9dIJGwmrJeayCSKIApBnagd1
	 BMs1Wsrxvg77cBXLUmvpEtjOM0YlwBa/u41BwBQkTDuWZ4FAYesi53aF0ubxiNSKsw
	 nhnWCcbLm37E5ViScWuQX2+ZuHlM1KrNEskaCyyAp0G8Uz6rsbyzHHrHgfSe/6vJZY
	 DTcK5z7LyU7XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92078C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174500399357.9765.5349789173040882821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33b44831b2c8fa69d743317b57d3a02bddc6ebcadf2ed498672f2195080593c2
Date: Fri, 18 Apr 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745003993
