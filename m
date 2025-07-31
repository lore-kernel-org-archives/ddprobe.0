Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31AE213B284
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753939194; cv=none; b=Z1OPF08Cwk3wZirEpssmBifPnzzKzpaYOpBBwFWnvXg+YsLNturUfuz0PS72PrW0Hr1JfI2Hfqey5xpmUHw5xQAVKTVPTNROTZZzDO5ifKOaUOIBCG+MjK9iS3GRlQ+1V9FpP7Acn3v0P4qheIT/W+gYsvLESoGINxrz7wQCgWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753939194; c=relaxed/simple;
	bh=GL2IuamcBj20F7wi8fcXQ1CApXMp1kfuJZRiqkrb9U4=;
	h=To:Subject:From:Message-Id:Date; b=lPwvddEbxM4uWnFynOn0GQtuiiqWHp1zsgO51p35Q/l4BfQc8ODeSCkCccVPR+ZoGgEB2+Pktxe6xjkLmabGrJY/bXUWX6WcK2dnEGKUKZYwrqTGBGGZaMKBtuJ5LbFxdZfo2aY6lSdpmz+IeRD2LzTeKsT9ilDQwCO6oX/irwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fTe7QfiN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fTe7QfiN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1834C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753939193;
	bh=GL2IuamcBj20F7wi8fcXQ1CApXMp1kfuJZRiqkrb9U4=;
	h=To:Subject:From:Date:From;
	b=fTe7QfiNaqycMcvvIHs1omISW5S5lY0leT/oHuRzCk3Nq3elJd+pBxQYrXsdk1HLk
	 z9aAqJQ68lU2JCm5TMIm5R4vcv2ij89Se9LXSewFAKtK6nqXjNhY6k9JtybYhJbk6/
	 NzBpBQL75EvdsfFXS9HNQzSPlPBUiLJDUou0GQayPNW8iqzAULT5/jc9oRBdaLEvF8
	 DfIx1GgUgc/k1loXgS0kATydf2SRUGI3g8mZCJHvpW4YKf7eCyKvHY4BQp+jWWHBAo
	 7lekhBt3MV/e1kVXIqZF34PxVm4DJqF9hwM5+ys04ZnVDDoD+G4/nZ+oCZhfiPWbYB
	 eQBK4B079IAiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93993C83F17
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175393919357.24446.14544542532614300469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26bfe14328165bd572de695332cd2edc7bb6e137c1638eeccf3748459ca3ebda
Date: Thu, 31 Jul 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753939193
