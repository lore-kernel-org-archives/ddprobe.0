Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33740289378
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747988994; cv=none; b=gTiX4jvA9WHadey7hxOxBWt5dSoV1fHESBHcAAT+ZVBDujGwxamk33y+MUDwR6yKfCgsxG30VXC7A5dLGaZu2SL9TQkguqwonYhRdKntaXKmg/uWoLjp/QG2wHb6ZRGo7u0GlLPtZi44mhHlr6OpfVMPLwVnXmYtwLpSx3bK3tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747988994; c=relaxed/simple;
	bh=HYgQoiJXaVPVv93x4Sky+8rJPOwPE33vOG32ofWn1M4=;
	h=To:Subject:From:Message-Id:Date; b=WZSkOYxyHIMNayFgBFJJBZL3y/vO+3+cC1Xca28VGwdmDfnBC4JtXTKtUraOD2bhk+eK/HEq2B85gcHWmDKfKXuna5+X/fX5Qg7LqqXBQJsh3qfYduoB4VxuQ83xEoyRFzzNSTWp2Acdaa9BCjmmhy7ebmuTZHdO87a/mnLr20g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AzmW/B3H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AzmW/B3H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BEDC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747988993;
	bh=HYgQoiJXaVPVv93x4Sky+8rJPOwPE33vOG32ofWn1M4=;
	h=To:Subject:From:Date:From;
	b=AzmW/B3HWCOINzh62sXV843XsOdaq7/Hey5tKn21F81RC52/RT1U25CZ2VWyQwC8G
	 Eqx2841GRkp8ide0WL0+FxeKLsTHiwm3zudHdM2b8VQz1mk8cIULcerrYIh1sF9xKH
	 CoMYznL4ZwzaDGi6qtY+cItb7rZzkJKJjkVxdR3nQI2CU6szNUu67+bU7qjmoVumR7
	 LU8EEoHWSCDciCVUNT8SRch4Dx0ovnNzKCutZvk4Z4CQ0J6Ero1SoqMK+rp+HDBSi0
	 92k6uPYNMeYqBys7U+4p2vnMTNMIWd+SXXpl6eHa0jE3G2zVmjuZHCYDXc9hyCB6jk
	 7tfKt63JzWLxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A7DC3DA6D
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174798899358.9694.14732470412380277955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 679aee07aa8ce2b1785c125969b30323be82aa41d955b75cb37ed20dd1342092
Date: Fri, 23 May 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747988993
