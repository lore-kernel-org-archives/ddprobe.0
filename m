Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1956273F9
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756316994; cv=none; b=jmMTearDqytpuMTrjTjOJpcY9lY/bgHkvgMbigPVG8/1X2CnlT+oG/8smM2EVRt3T/6su/Z8fM79tKuhxHkfC/wvC9TfTDehXv6bGeVo7/h5/a+KQ03H6pXXEYtM+HSGXKi1Obv+61TUgNZYqGMyb6zPRCImzKR30F/6wrGYS+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756316994; c=relaxed/simple;
	bh=7tLT8IGsQMEMxlPTsG6iclCUrGG1PUACt7tMPQOidD4=;
	h=To:Subject:From:Message-Id:Date; b=QRpaU5Gb5iS/v2XCFYhYM5PCqCPvRNuTpORxg6A3T3uqJn30QCyogNcuMI3l4xFzt0fdnDd0ROURMPevvR9YAiBx7r6ZE1UiDzISS6+IBiIYbvNrnbyXjsejc+ESABEq0q5SMm4E3Z41PW8q0eI6fT0/IQkGthudkZlkY6n4ihA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VX5uKC6m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VX5uKC6m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE42AC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756316993;
	bh=7tLT8IGsQMEMxlPTsG6iclCUrGG1PUACt7tMPQOidD4=;
	h=To:Subject:From:Date:From;
	b=VX5uKC6mTqNoVDrSFdGn7aSmM0qGca+qoSc5h8G8huL7wn90C+ETw/koRarkGPFdA
	 UE/XUc02C7lQFf2+l0lDbvErV2IRJF/9arf/cwq9o84bhjpk3GzODLamSenYf6hnGY
	 +PSdJRNf72gKXenktesc/DomMx6DZF3R8PYY7K816ZjP/hNXuXtLaG8GMhf3UUbG8l
	 8qLl3skdL9b4/Sg8ES5uXtFjOU/fFcThXs0/s5uYCaIblKk+yg3sD90GDBHaKhdGfT
	 fJhuBTW7o5sV3xMvGTrY/sRIR72RcoBH+h77JmJdSae6/6B5h6/X8mA2ia6/Hosfd4
	 h3Tvl1fqAajKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7DCFCA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175631699366.20238.5048838822931745257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c95718a25b201b23040cd7c39d5e4319cd3b5938846dcb247c098da48a231f5
Date: Wed, 27 Aug 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756316993
