Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F0435BDDB
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 07:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775288734; cv=none; b=dG7Biw1HyRsfbhak94Y4yX+M7w/GE4DKdmXIUbA3ZFFYx5faJrrKncP7d8GP2YIE6ULrDkZkwVJok0D+BBuDKO+GQosfaCLpNP2azW55Ul8ZsLkl+MyqmkxGrKnipJDgMPrI+md6rKQH7YJqFdpLvS7LMbYgpZeI8L6YmOP0MN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775288734; c=relaxed/simple;
	bh=v2IzDWY9XDWU0P6CctML99lZ1lQoo/84KtQji+8KT/s=;
	h=To:Subject:From:Message-Id:Date; b=IuYLDyN5ewWhtec6c6XTSFrZBP2ZEnCdAM+bcK+JAIZlOESHbM/wZm800Akzly/t6RF6c8BDqVfyb0thVFAj4VTwI7xTG6P/pwaKjqL9DdcDIsvnUsMiQiFUn5R6F1fNP9nPdiDFcmnanflBpLSTf5d3416OuFGwNiB6PUCmw9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RvHFE1kw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RvHFE1kw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1B2CC19423
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 07:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775288733;
	bh=v2IzDWY9XDWU0P6CctML99lZ1lQoo/84KtQji+8KT/s=;
	h=To:Subject:From:Date:From;
	b=RvHFE1kw1T9htEDAYY1ty7e+votsTljJcHzbRVMLX0fHDmYN9BQFf5V9rKvay0WcH
	 Mu0RuiSLZABUN3DlVnQLeeRf2De1JDvdMWJfMUvC5sQbye8zKD5ujAqGlxX5OC84tf
	 QLBFoZBLTRLWKUYA9o3mXn9r0lD+UOUcKVVfuKmzizN+XTVph9KY5loXcKUq62xY0O
	 8JrDDRKUVLWKd4lvTLQkAmrOVDhMtecR/Ar+tm83acKqRs9RyIOA5oQ//YxURnGS0/
	 YDDVkQOd8b/A+GOTpt0y8jLYHwLfvsjjJauCcQ3ynKRmbjLBIGGrj2Ap6gy3LVRJqP
	 TDjZ5uoynvW9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD720E88D8A
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 07:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177528873368.21529.11928541605235424876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b827798f6f4594b560a3deb2d44d51186fe6e0c76b4c1425fee637440cd51980
Date: Sat, 04 Apr 2026 07:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775288733
