Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DEC42D8DDB
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 23:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775257534; cv=none; b=Ji9WSogGYWvA5z+cPorkHkKC/djz6ZjMYM3c3qZN87PloGtWEfy6jC3Qv5DKfYy0DoTwembEj9Phrd3+Xow4Hx/bMryfzNmQkG9Xsb9AIkp8cDM2HqeFzK74Xo7npmlI2lpTxoPC2KLS9Jxw6ywXpRD7LlOH0QvNNOutx4Jskkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775257534; c=relaxed/simple;
	bh=wdLp92gtUYWy9aqL2lS8GipVziq/NOdCIX/7Al4KkPI=;
	h=To:Subject:From:Message-Id:Date; b=YuGcq/inzXLTP0MwhfsI7jHnWKd2ZVhuClzCRvqf9xXkHOklhzkwfQVpTzN5b1Aowugm7RnDeSbUo206Q5vymz1XSv67Xr2Rd/u48zsDENJNE4gL2e+55eDKjmt8UqtgCHKWm86xQGIXl/KF7N9m7AxfETcYdKGVGQKqx5nfq94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cJInAFS4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cJInAFS4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3546C19423
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 23:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775257533;
	bh=wdLp92gtUYWy9aqL2lS8GipVziq/NOdCIX/7Al4KkPI=;
	h=To:Subject:From:Date:From;
	b=cJInAFS4X7dW0V66PnldkYo/s6SJHYk+qchTRz1YPMhaV0+NuAvVAsX7crnp/BDJv
	 ZjXLhsQ5uXysz6loeBCRXLIXnoyVeaArii6Idue7CROh1JrMZO2iir6GR4YYkjfVZW
	 1oqKC7Lar/sAR1SCrXTOTguIuMH3qQnELmkFl46WOGRAbQsmDmZIhU/SZ0pEq7vn+I
	 3bU6AMh+AUW9mkTOvpDLvtAhn8wuL9T3O/nbQJfxDeI+LYiVv7WjLR2ESD0lAN2Htj
	 9TZwkb3YwuUOuCHRIwA705pXRCN3wPg3B2sRoe+/opcU13epyrwRc2v4yj+WCYAMsw
	 9o00kb+Oay2gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C57E88D6D
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 23:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177525753369.1274.12601202198675711618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c25207614c3b207c652ba495f21a8e772334c5ead8f8f380a7fbf4e4e984f536
Date: Fri, 03 Apr 2026 23:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775257533
