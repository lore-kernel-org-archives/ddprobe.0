Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E571267732
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752035995; cv=none; b=rj5xc8YqEhyGwvAN6MITv7nJxT61NYJqj42QDKkd8aeU07eA0IMNqbxyCju1NCG5mFZP5XaFrArka6i7csLDAj5v4hOUCdYCouTkj1+Fo8Imb2ACGJMf3HXSnafIZMoRiwms0aQlE6Dec1AL74lJ6d+OyC9gSvPLvg8D5xF1+gU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752035995; c=relaxed/simple;
	bh=G3GJBQKVuYZZ3x+zRqJRT9jq4vwW4TqdvFCRHPyPSuE=;
	h=To:Subject:From:Message-Id:Date; b=DQZnFrwYG7RnP2YNUptzTB6IVIAC363op2xHwRKBs4ln2z1iWkSWApvJimXpzXVQGsTSA8T70BsKfYA2F8i/07pZEps+YKUXT5kyOCMA9wwZEXax+DOENFgoGpZMrAARrEPktcog3Owh5dFbT2AKVDe7Wy/yYlrL1n2FU4aI2ic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=caYcFe6Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="caYcFe6Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E61C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752035993;
	bh=G3GJBQKVuYZZ3x+zRqJRT9jq4vwW4TqdvFCRHPyPSuE=;
	h=To:Subject:From:Date:From;
	b=caYcFe6ZqWAzGajHH/YKQT/bDkZ6xkRpP744jI2j3Lp9IX5VLjfkem5IR1vSdlQhg
	 n+j47dhZSUBEBu+Lc+M1z63+PmO0loamTc1osx37kndq1iTgDil8m2j8gnQhYUEQT+
	 6s2EnMASSnwOeKpljNpuUJxB22mocplnvAvYh/hnwZrLr0wvusS8uQr+kLt4h7wv0N
	 ZSB3wgmUxwXsJCjFhbMR0xnk4FN43kO07lfbKhpT/eMeJJRBDemFTGKl+o3A23t9Ta
	 QSsLYixEb3fMCKCBlivAloL4G3yDD6I3mCN8QgCPMYfZcGmFR1OToJlTESD2oYy9IY
	 GGI8/BVq/Igww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922E3C83F09
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175203599359.12389.2042999474016517206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74df8563f7ec49a50690d277ff19946f85620fe9a39b2fc168ab7c6675be43a2
Date: Wed, 09 Jul 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752035993
