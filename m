Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B87B31AF31
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 23:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772492694; cv=none; b=BA57L+9yyqbJhnG5kMJPW+3m/wE1dlIP9J5K9mm7dzmXcR+mVsvIxfPGzMpqVBhmfLXRtR9UCeAeq6wqFImUZW4YBZXIO1AjVpqip+mjIBOh7uWc0CVi1lG8xuWS0YSSa9NpLcIu7QPP/4elY6B7odrK1uB7D1HIfv0cj9udWbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772492694; c=relaxed/simple;
	bh=u6V9SWky9NEsh13lfnbFstVBQNiLR565aIrM2WW/sWw=;
	h=To:Subject:From:Message-Id:Date; b=ZK4siYgXaLPmjTOu7aP8Z21bL1uVJ9iAqGuQl4R6U+JqrfP3zJp0bAbXDaVBSLPkA4s18masCmElevbU5AUx0lYGMkgDlJQV47WAc56iZ9YDCTmovHOs0eSJ5gzS+0xEH+guR8SYfdBuPGzrCh019sDw2xeqvXUDm6eZ3g8bSVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g8b/cAJG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g8b/cAJG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC525C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 23:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772492694;
	bh=u6V9SWky9NEsh13lfnbFstVBQNiLR565aIrM2WW/sWw=;
	h=To:Subject:From:Date:From;
	b=g8b/cAJGI6YO28rGNNsa7G44QqFAHfnstqk/vn/GnZfmH1nPxL3KYDOkirKnyEKZF
	 oZeq86hDPNsmwFjRdjJEyCXFn4raxbkYY4iE5jUxAcVf8aY8jioVItXQvx3HX1FtHs
	 te2nFEa9JscTVUx6SOnbUmA45tugNgP4YUW+nF8W8WC0vV7+c00ttwfd4QCKVoWboD
	 v0MTaX/8M1Vncx6sIkFtdX3PJjMzNjcCRfva8EI4zWWfqDkI2X/yMJvF+NT/+GEfdt
	 uoXxAdSv3+z6B3DHum7D/x9ZdTduonnwxzGdKAVIrLxeJNfHkUSml5WH6UNwHvG92Y
	 POP7M2c6Gusnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3639EB3641
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 23:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177249269369.6052.6042108482715099070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2f26a33edff9bdefc2fa880ce8b02240d152e22c7db94ebe624a73538665c43
Date: Mon, 02 Mar 2026 23:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772492693
