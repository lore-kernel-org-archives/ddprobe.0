Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15FDB1A5B9E
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 14:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764857574; cv=none; b=nhHOiItsvNQOcJJ7UTxfWhM/3Qa3JM1IuKdBeONtxQ39yYdQhcfSDReM11G6c1JQJRsIqt542X9sYZrGkjdOj8ICE/l+F0iP76BaIpHhKvsquR0oMijMYSVhmJ9hCSjIaF5JIgohAxkUnnXwwu358EDx7fC742Pk+OSI+V1hTSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764857574; c=relaxed/simple;
	bh=cFQFFDoW847u89jr4Ba4ZU8ZdpcOWWzT3Cj2xUkc3CI=;
	h=To:Subject:From:Message-Id:Date; b=dxRrRvQAedBg+qdYaizVVpwX24ygo5mJRZCL4HQtq4yRZ9ySlB/Nt9y1uN15kauDtJZWxbdBXP6gJM9x0707mjU3PhQVLqfx9s+JvmJQTwWLNpRstj+Xe8eOKDL+pGBFykgx47tZQl7Pst6CuDlFEnn8Kn09aW5A+dKWA4u06vM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qbuAFY6r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qbuAFY6r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D21C116B1
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 14:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764857573;
	bh=cFQFFDoW847u89jr4Ba4ZU8ZdpcOWWzT3Cj2xUkc3CI=;
	h=To:Subject:From:Date:From;
	b=qbuAFY6r999k2qPwE54JS9s86VG0FqVdYMW38CkbWOdmSLwf4+b1RsGGjdg47F3z1
	 qDviq1tiNKofDwtHxhH43BEhd5DPF/T8uDeryje3N9iQEISovOP6sstGzyOG5YGfXd
	 dTfe4IAvd4oj0yVTl+d7gk9mQME3fRyyGY4yff3DdW+QWK/FRII86LJll2U7+/hr3y
	 c86e3GawADRH2YLeAiGwEyE5O5n8W2IpT6wbF+uYgyCiMVXKBPCIben3npy8+TiIyh
	 Mvn8/oOPpZiS0f1xypENN8/2CtPqzJJ5zUl+77yHBYh6hBev7j9TKW0L0257bVk+zf
	 eb0EyaFOzIJBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95241D206A7
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 14:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176485757359.23766.12165613079666224496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2f16a7fd815fc669f93a25bc0579dd61a21329ee473f7369360037746395545
Date: Thu, 04 Dec 2025 14:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764857573
