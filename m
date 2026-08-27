Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63489340A6B
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787826634; cv=none; b=iaegIkkqD8fvYtphgT+nbVkW3NJBpHPMmatEmMgypu8bE36yGBdeze6E+tMHmL38JxLNmFtc2YIIjpPHdQ69LQJUtcCnoXPd7XNjth2C/guNNiSiai3+uPo9nahRVVCkeiuK0g+1V8zmAgNETC6NJQsF11bSIEW8+S7ireZENdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787826634; c=relaxed/simple;
	bh=dIUutAU9Q0O48qV95v4gzegf7b821rkIwOEqzsWz6kc=;
	h=To:Subject:From:Message-Id:Date; b=Qbal7Pxt23U/EQRfXkiJLFHf85H3S3WKx5lRXPtXmFgEDZBD1aqnY/EYxgaq9m+okpyvLz+9XfjneNWdfFFgKH9qwkFODf4/Wi+w4sgw4h77/9OjvzrJauiPqvWZ6zKWYWDirUNNaNs4bLnOIyPj2GWlzf/xEpsIj9h3qdkJ+cE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gUDS11Ro; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gUDS11Ro"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDA8EC19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787826633;
	bh=dIUutAU9Q0O48qV95v4gzegf7b821rkIwOEqzsWz6kc=;
	h=To:Subject:From:Date:From;
	b=gUDS11RoQzNTLUoVwgd9O8BHQeCwgQa9z+vookT3kb8bJVB42/j7Y8k2gJnXBViu0
	 SFlbgVuco+mlYBoV0ZI7/kVPOSHnTcRU5laj4KuVg/umBG7Ckbq8+NT5PGDTp4IU6/
	 1uTLwcY36ZPgdebxSNRPC08R3mly47fd3fTN9VGA64D8QDg8FOjK2uCYjtJ9BPHMHz
	 qAisl+qphuMz3K9N8DJ504uvNP7jmh4NhqtvXRGw9aR/3iyfWX0HAWd6A3m2LUfICc
	 nzgU4CQgz5w+pO/a+JnyI2QlBcGEzRBewMtOzMLG+Qvx2QTex0dBCjFL44WgFT9zVx
	 iKv5Y891bcO5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB153C61DB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178782663369.22526.17477873293242958996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f389f1f769a138594adf200599bdc408a7caa4427baf3508bf4ca446ad5e3ac
Date: Thu, 27 Aug 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787826633
