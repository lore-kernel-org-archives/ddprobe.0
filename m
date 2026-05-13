Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 485E73A48CA
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778657434; cv=none; b=DzDG8yV3ykEK2Mv/VI1YJZf3q/f/KXgE5KGugtEryN5MfHHTXROcF+gfqo0mftzaOmfSCWNOC2AU+aqNtMxOaEisMfBP/lOV9jPki6HG+4rCySfHjIxpQUWOPc+dvacoXqi+t6KJGSv2qekxgbjaYTHo19yf/dFM8NYA0JQOyfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778657434; c=relaxed/simple;
	bh=RYq+BFnYOb63Gb7uXN/SQl0buTFdGq8l+D8/dy1j9Qw=;
	h=To:Subject:From:Message-Id:Date; b=AMfi0CIFCYWdraIEb9AdA0lLZRcMnJ5Huphl0438011z2VkZ1kSKP/zCFE3wkdfr6Zdbv0SGlxiaMofrJPdTgcvIBRHqydGWxHbU8JFvBdqz0LByr63EJ53s22k7DITiKNr0LddxhLTt1OZIbDLPDCBkdQlAcJk3GEYry9yAxr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m2s77yaD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m2s77yaD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C94F9C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778657433;
	bh=RYq+BFnYOb63Gb7uXN/SQl0buTFdGq8l+D8/dy1j9Qw=;
	h=To:Subject:From:Date:From;
	b=m2s77yaD/prLVVGTNCRLTnwBK1MlTGhoR9CYBRzTIfLKJ5xbeH+isqQFYxSJD9WEB
	 sB/tDjVdKVZFQtTdTj90o7I9xTWMkMhQAA+q50V6v3nF1fsUJHQHg7gK33wcMXMYTm
	 4JbgeqPK90bmrM9oZOIn2K6rB4A5hU7wHI1fbcMEc7+im85zAt9gFH3f6D2YLxi2Co
	 nFeeP1mQaxtsrNVGRaVyZ3D0BdZnGwnfkkabf5yNwK0DQ36mZdCtX/brK+1LC4BNGj
	 yAOBKD5NImIhywbll8p7ZQXSpgPrtmZbd0E+zHD/vNsBHqg5bcY3P7F2fJnp9sTj67
	 dkQBsprr82B6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9F67CD4851
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177865743374.6631.15321528403300320419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c94df70d0766bcec769065629a9562bd7200ecfe05eaf93f8fecb25851c6a9f
Date: Wed, 13 May 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778657433
