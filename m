Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 411982576E
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788909034; cv=none; b=qCSiD+ERSmjyt1cp9a6FWpMnJXOlBmy+EXrCnHx3BnXHAHZ759EhqH5qROeEp5nOXcQVA0IFYLutCPh6Sd72JpAHWY9PaB2lMYfbDbXj6bAi+MJIrdwcggcHXPqC+aCj0eqj1d009rjyQQ/FteWaxs+3wazqyd8CnfJgw1Uhfoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788909034; c=relaxed/simple;
	bh=P8PZZGqNTRtaUz/W/tojWoicXi+kjQfVdAJMlcKquuQ=;
	h=To:Subject:From:Message-Id:Date; b=j1FOskD8UdmRZDPvWz+Rin2IFVjS5wR5ySdL1+R2qFHrZmsqMSxuWInwvMFTzQxlCcrjxOZDytTB+pDQ4gwHsAf9qBPZxxlrutnDeQtml9GoRkZDvJt51vYkEOk1TJxNUnxF6fRFoAMbPz0jBFpwJgYs7lsX5bfsVi9/PmCxB0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nrxd9r2p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nrxd9r2p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2755C2BCFB
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788909033;
	bh=P8PZZGqNTRtaUz/W/tojWoicXi+kjQfVdAJMlcKquuQ=;
	h=To:Subject:From:Date:From;
	b=nrxd9r2prZESnHanQ2t55pEIv6BF+Ayryn54xMMlq96OOUIw/KmVC2RJnJ9pXooMH
	 oV2QXWlikpuhjAkzEQC/NYjmS08uEOhb1v82j1czNk6cb94rti53C5H+3lgfUkTzmt
	 oJxErAcFutBRd+5qzBas2vuC9ufTKqccfrGWKpylxafV80DcSwHTKsQZcUqr4VY/g1
	 WUV9NvLZNrK3mOHG6h6gFI5kuQ0KLTWcVLzKuperASk1aQWXviooJ9kHjDM8GNtQh+
	 6D8LT4mP9LF9CwPZhnx9NqxKSVFtT5ltR+bzbsBW0eQjEqYBsyF/HM0VPday7pawcv
	 4SBIpTNt/3yRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF23EC79F82
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178890903369.4877.14857781412730435405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01a5fc9cdf7e8f539709d161a72d8a2da8ee08e0fc6b4219c98e8aa5e69583c7
Date: Tue, 08 Sep 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788909033
