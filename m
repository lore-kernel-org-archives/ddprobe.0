Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A8E3288B8
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 00:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770338034; cv=none; b=kKgIeSdt2noc3KtQAe+5sK3fW5WHRDk/M9HpMr4oFDwWsUXukJYcOWxbmdga+Py0RyIGSPYEOwRxVvAux0ghsQhQk+7TtEUyPrbg+zhEwwy64i9TKOUhVpvmAx/kwVbwxpghl+ssPU1qTGT5afCdwYx2qHFyT034iiUSyEzVRVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770338034; c=relaxed/simple;
	bh=BIS0RsM30mutm2FJKFT6bup+CgC5wfkYOO6rnSRWQv4=;
	h=To:Subject:From:Message-Id:Date; b=RTOV/HQqKGZjEMlztAw9EJVbdn+3iNwUdQrqSP2O/5JFeRqYYbQBpPjaBDSSABbwO1EKjkCkFZhPdy8/i+io1Nxk7Ge+QF6dJo9czM/Q4z8O8k9hbAbBiD6K557UyfEbZyDTHOlVifmc0P8iPwVR/DnKb+3mSsZM8irUabi/cE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mi7wJbi7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mi7wJbi7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF41DC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 00:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770338033;
	bh=BIS0RsM30mutm2FJKFT6bup+CgC5wfkYOO6rnSRWQv4=;
	h=To:Subject:From:Date:From;
	b=mi7wJbi7jFDMLhuZ8hqMazg18g3N37kRQ+h/21S4tqc9QiBgSjRbsQPKu7yH8L6yE
	 K+wSKW3Rh8BS2Y84dgOiC6Kn5FL7kN/hr1KcWkjk6AfS9aJ1AV4sraTtQk55YGJV7u
	 DKwvdab7YZd1IZVWLQTgiL/kWje6+jb2SUDl61UjJxEpdUszsouqONgpY1b/gwmpec
	 O5jX58y0KIdaTgQEdFcnH6UoFDvH4QkenIBsi6UBjjO6nYWST0o1Wk1saqB2wooS7D
	 JjKiWEWbRJ2JlqmstW0CvOPrOR9Ht+j7NRjgMuPy6BNIoGFqDW16cR+mOuvMV6LfSy
	 DHw1liNxnoQCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EEEECD9AA
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 00:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177033803359.31069.5597741519948266501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9777858e46f0a9549c16a722435dce29409c0b17822c7fd31a8ba0012aabf8ef
Date: Fri, 06 Feb 2026 00:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770338033
