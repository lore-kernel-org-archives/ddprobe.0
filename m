Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2652A289808
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751882394; cv=none; b=P0yUQXXH/4hswt9oplwSNvog9B3/aqNJ4o8cGlYXxHoL2q/ok/mjZA+E+xXgCnYuapeJHVgoecDBjUyIIOigaCDHPsKZo4SB47IStMmQRcheEsFZ3lKrW0GVsgJzItBU/5hSdAQ+ZNGxDSh/vklhji2S74bV299gkE0q9y6fc9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751882394; c=relaxed/simple;
	bh=wVQVtQICbs7HPAKiDb54TwsJWf6iLPElWCeTM17I8Lk=;
	h=To:Subject:From:Message-Id:Date; b=LT03CDcI8ICAnpzcbEUX2OaA+L5R/CE002PrOcxwup8taBtec33cd8QBKBqnSmjFoCdRIwrvnR2l2dOzzwAxIZnZZj+viEER72O26ozSWZWsJy6m5VBPpLhoZC5liR1jM/S5D1q6pLFafaahPYUNnxjmlNnndGRWOnvD/6j6xnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qe//icYU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qe//icYU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F34EC4CEEF
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751882393;
	bh=wVQVtQICbs7HPAKiDb54TwsJWf6iLPElWCeTM17I8Lk=;
	h=To:Subject:From:Date:From;
	b=qe//icYU29Bj9DL6QsPz22WI17BxuN3L6MI9HfxQ/9Tm3G2RDdVZpTxrj0bX42YMn
	 9GjRboqL1oPMggh3IyYxEgTRPYSQ4YNSpn2LNq0uy07JLFDo4+44eGmQl37MizK/DS
	 cnUi3ZNiWdZtBMR07GJ/IuaRcpQ6f3k6RCEoBDaaAw18gkdTxm9tPthR/zVd0w+Q+0
	 5YOCQe9rsB4vA/Atq6rZX1k+ckfFroHA53/0FERAZHG0rGhxuVQO0F0EmgClNDG0fM
	 /MjBIsw1TqdVWDe7bao62DePlZ1+uVfea4XNujcRcZvSm5+dRxslOnel6vaxZCsyp2
	 R4lQMRgTOUmSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDC8C8303C
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175188239357.3897.16169277187887008567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b73317f8fbea46d128c66947a610f99522f1dbfe2a8699ba8e23091291d86e66
Date: Mon, 07 Jul 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751882393
