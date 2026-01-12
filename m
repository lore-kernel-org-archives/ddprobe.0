Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D3325B311
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 06:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768199034; cv=none; b=Dc5Rg3bVnuT7nRJ6lm1LzgE2JUFUXud3mejgr9vxYvPKUSEMkd2Y+W8e5WjMh1qdW8jBjT0WJSH1uEpgv8a3DJ1JWgG1MAHLD0hYCCqTbCJM7WDwDUdidYGPKIwbcdDU+AGSXEr+bGs9y27/wbVULc1SxaRWLDTV8LHfnChT5o0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768199034; c=relaxed/simple;
	bh=E7P7fA2vQQQnPnIQjUUutxOJSYwDM9aX9oTVdyga6tY=;
	h=To:Subject:From:Message-Id:Date; b=sQk4ogjL3cIwCjL2ftouRnbvtMLuRhqVR9rAdMRQcJrsQsAQz6vepbImPJXO84kk/YRmuHOyMm8GDoSW4Dm/mm/MGg8pca20pvcLKVXXCBVWHrGzyDXHvWXnWl2CKqWRhcJ0OrGW2Kb6LuXFG7qyI+20ac3h6sM5r2SDy+Y9L98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fUI+K3H+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fUI+K3H+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87BCC116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 06:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768199033;
	bh=E7P7fA2vQQQnPnIQjUUutxOJSYwDM9aX9oTVdyga6tY=;
	h=To:Subject:From:Date:From;
	b=fUI+K3H+TO1CsPj7chgg9QlRj1uToZS2ZIL6QYakBLMFN5El+d2mv5rTprMUf+6au
	 s74cIUTqQzOBiDmi/9U2n1fiExAWthKk18LiNdgE2GVoU7HJ1fF0fuj7fqAe5KruB/
	 nGjAqt2cBvIOW3R9foYCKInDOQW+1YTYYKHXGpOaDSDjsXuTtFVBH09zfgv0AH6hkv
	 8Y6gkF490ymw+9Sy3im04Loy987u+XJJZakcTBu6akcGl6DJU178LpTtg97mrTG2eS
	 qjWhiLZGLpegA66lYlfeDYs/9z1+zZGd02zciqNslfkSn+YWMzoBiOqvii84D6uClh
	 MuUVVNc3gsfCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95323D2503B
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 06:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176819903357.15041.11527917814661536426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fdf8e598997f7f13252fad13847d77d5591d56e8151c65f1161142ac6c34661
Date: Mon, 12 Jan 2026 06:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768199033
