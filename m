Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7CC3FFD
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 00:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767659034; cv=none; b=aL+XAoQQZKQ9KKFn/Fr2D2yKcV6bfT+6fq0YhXDIAcjIkdLtjsADlh6XSqDO6mLumfPU36eOWglhkk6VbDRjySumcgQmr8jt/PYL56aHiltgk6qLL4uWSiAgrQxbwglMYAwlrgIycRO+a06x5sGMKAwQX2gR8bbWa1YA5OqokNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767659034; c=relaxed/simple;
	bh=So1oqdVxHdTePCNYhE1iX7pZV7Xn/f//vANn9Iks3EM=;
	h=To:Subject:From:Message-Id:Date; b=uMPnT8Tz5DvmvpMgi5I6zzhfPP/l7n8gjM3YU3Aw39kRWrAmRimB/TxL7sOpsBn5ISRl1LeQIAKG/YF82tOtYF6of2qLrAW+bBZe2hds6ZnW0/parrWKNL81zwPjzeASs+zzc9W5K0LtAlQCOK9ehUqot6s4ykAexXY20k2orrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ige3sP4w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ige3sP4w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE53C116D0
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 00:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767659033;
	bh=So1oqdVxHdTePCNYhE1iX7pZV7Xn/f//vANn9Iks3EM=;
	h=To:Subject:From:Date:From;
	b=ige3sP4wXROpKVbPk8DxzyTmV1gUBebKoBLQS6u/vl/HDTchzzdTmsMj3Dd9h3jlV
	 CgwZzz+GsOp4zAw2fW2LG6AhYdTJqngPrqjMQpKqpH7D/pRSvX0WfMR8mOEfJRcBCY
	 ++E4xOn8N9QJDWzWU8tDPpXBzDFvNjhWr73VN2ArF7cpoidZapOfHCBWKMrATjXGf7
	 I5VEsL4kmXFV/eoNfO00R9lz1dQ6oiLpuNAX7xtOHqILQMg9NOoYkBvHfNJE8pO75/
	 +k9GJgtGRRXqnX6b/ZpjL5Ga1q4Zvyj/YvR2KQdyN/iY4GiIUqzA9UB0JqGvkWKa6w
	 sqQhQnUCLlc2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAB1CD0428
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 00:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176765903357.28185.15864159600619414850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c32871d07f0df16f4b87fa35106608612057d64d49bbbaa36fa7149c60280457
Date: Tue, 06 Jan 2026 00:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767659033
