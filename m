Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D5DDA930
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 03:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764558774; cv=none; b=dKjMSr/lgIr418vKxgcbRUjs4hcnorSuMY3Y6AnAT8cG6pr7c3J8IP+ulRXOO5tXX5zYeFXeLXdJMtRNDF4+kcUV5yf4HCq+3qHGnnL1QSyLO+VZocgS9y51kRd4u/5W9zAsWeY/pyXs5rADhJ9+DQu5m72gmdSnSJUxMMP+4II=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764558774; c=relaxed/simple;
	bh=QApn0c4D9d6ZJ2oC7VQAe+Doj4/5nka0KJaJntasAAY=;
	h=To:Subject:From:Message-Id:Date; b=YomLIhGajKxXi+k8lMn/UaAUYuaEsipSSw4bF+p/kSeTuBrK6+EQ7vQrZUZPnw4J2GYJR5IoLuZMjSs7/H2dpFAd1T61uSB98yicp8FbP1CeAvIB64WxDKGdVHt8LYy0I/Teqvuwr+CPBiZvKhW32K1nLXfSIv1flMDAvrcokf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IxjqEkPO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IxjqEkPO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACAD9C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 03:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764558773;
	bh=QApn0c4D9d6ZJ2oC7VQAe+Doj4/5nka0KJaJntasAAY=;
	h=To:Subject:From:Date:From;
	b=IxjqEkPO/YqR+Wr61yf+LsLl731fHLjPGzS6Zj3GP0sv/UQ34sTfuhjIXIdx758f6
	 9YM3HUdMWs4Yr+3hHsEjt/gbaLU0RNTWACwwrb3+sNuAhs2uz5vDjZx7GB+qTg7fuj
	 fX6pwQybn+QCJKlSmYYst23KSjEhsZkpvKVcoPy4n1QUX4CGlgi0iK6ycE5/QCHYEu
	 40Yx5aUPE9m0ZLJACWVa2KZcvCKRxI7ZLwiWJCzSz8ZJLVAjCAILMYtPOiFcreWFT2
	 5n4qhNGNuUynDojAFb3eRUiOyYx+wRmlkywM0ZgJ3FDVd4E2FaEt5Udl8gM5C9nh1K
	 nTjjdkdRuUAMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97060D111A8
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 03:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176455877359.24473.16144045529343448635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f564bfac8dc4f83e79a559d9b216b3f49785d4c481697205ee0c3f0e2f4ac19
Date: Mon, 01 Dec 2025 03:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764558773
