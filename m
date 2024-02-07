Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06C0F1EB5F
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 22:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707346697; cv=none; b=evPnZL/KxFGrmnXSjwOrok+WTa5/pp7Xt6ud7F4oPLnne5CNOTwQ4ax0joIATcaMrM8CVBB35qO+0nCLHs42achWhWoujvly3+F/gedEscWEec4VVT6654QHAjxraeAwA5Hu/ggn4zezrsXsk37x/C34Bxj6RYCF+l75hl6E2Sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707346697; c=relaxed/simple;
	bh=ACH2AfMZSn6zPtcOtdqG1VzQa78uhOkH6OEknujtnYE=;
	h=To:Subject:From:Message-Id:Date; b=fVQ7w754quYmE3FDKM+CT+OZfIx3nPn3R+80/pxvpLZspmqcYkFcuUvnpWv0N3V6xLYPTysQ5Ro+FvaX3qI1y815qP0CRHiwnZBG2J1eboOqS+22XulxKAEv/lsCRyAWAhPkdOcvwZLZa01wM7Bg390hPbZEDmsGDAa/yPHDNo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T6XrelNK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T6XrelNK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D819C433F1
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 22:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707346696;
	bh=ACH2AfMZSn6zPtcOtdqG1VzQa78uhOkH6OEknujtnYE=;
	h=To:Subject:From:Date:From;
	b=T6XrelNKor03FOmsej0YVlcBiYBjo5jizmIAGLsfMR5o+pzoNfZuLKL0zuDrBAIlw
	 TVkUTkhSK+BKA3H3ySZAPV2UA+lBZTTbcYROlEZ21Uew7e8utg8wgZE61PPEFo946w
	 GF1Sr8dktQSgUZgEgo0d7GcCPt+1u0OOhNLo9zZBANsDJfron8trRKkYsN/3oEEJtc
	 4JnaUOmidD4cO46Y1O3Nfv3Z/xXC7wC4jupvcQwyaEsnraSUSYWxhV4j57EaBCszmV
	 Ti4E9FDmQf0LnR4J0W2eOuBiDzXl1aO7Xc93SgG/AF5HCre9ovuaTS/tP4qjyD69Hp
	 9s28Cnk2p/XLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70591C4828D
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 22:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170734669645.29998.11660982771196227126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ff583facfd61e906404887a5bd82720a348eaf3183fe6c0bf866f2357a2e66d
Date: Wed, 07 Feb 2024 22:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707346696
