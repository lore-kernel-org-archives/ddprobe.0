Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF5F1A9F90
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 16:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777133854; cv=none; b=XtihYANv5d41ideUfNa0sxCyApZh8CWT2I5bBDSijaOpn2IbRfOY+Hu5SQ15Sbf0yuSNiim9UW2nIqaHCUiN18emtbxhpBtR6NNrtMBXOBrEY6iuv8/RHzuS6osc7wEw4lWmShQzMf1vZjymcOqR6A7CKN+LM8tINY1IflNNpeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777133854; c=relaxed/simple;
	bh=e4FhnlgbGSVV59KZXzYz9yni1thzH+M83ILbYSZt8Ac=;
	h=To:Subject:From:Message-Id:Date; b=Bkc4UvYb/EBxhj9plKtJE63Hg7hMn0VVDNXns/0pPZex3EpFhxxzp/gl8ROiNH1ifmlV0nv808//x1MUQq/VUKRqW1tTSRNQyQ3Pl8j3X/jULN/5Iwe/nfkEgkWofkOTzCCYvtscy2Od5F4gR9gonNIQSeFqfxLmhiOjptLHk+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Abma4CxF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Abma4CxF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFF0CC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 16:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777133853;
	bh=e4FhnlgbGSVV59KZXzYz9yni1thzH+M83ILbYSZt8Ac=;
	h=To:Subject:From:Date:From;
	b=Abma4CxFh65u0zyMVDIuwaF/lKCWoHrxEt9JIzCjtWGTNvaeJX/dICkO4d9ydk3UA
	 S5RTG8ZVWs5FHyg6VB4DKm1U62m2WGmlJakK5STe5TxoX8G0Gk3JcCcAkz8ghT0FNc
	 /cn8pcPfqr9i9+DHEHAphVjTV1fR9s9voUiIViveru/ckCNt+dTsGJbw7fqzkTMQm1
	 OysX3t0o1IZRd1yAQ7hrYvqM+K/C1Yq9aZjSE/iocp8sx7RKlJuIHNs/Rzn67a1YGd
	 pfDyZolit/bIIdEQN9dWZsWvQw1s8otEIf6CEbRNm6z6Gem+XFpeYqv9qqd0+d3y7y
	 RW+MFVzWX+UIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACAD2FF8860
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 16:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177713385369.28935.2439485802383485554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6207303d0d256d6f192773fa033c595525eaca10b0d912f3b4d5898bb19d41e7
Date: Sat, 25 Apr 2026 16:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777133853
