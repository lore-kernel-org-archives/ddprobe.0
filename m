Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0394F2F2A
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 15:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741534734; cv=none; b=ml0WVTY10eKRt6oFVCE3538nF7c/onTYPrBTKcngKYRAjz3hWM20NucYg7FYyLG0RqYfautuQ+ENU8V9dXWpLlSLTlapKld3II89yMwwGLtshWbkdr23pdniIH3FhOHD/2lHVQa2wH5fzp8ICZ2pP7hYDU0BJW+Bixb/scurlsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741534734; c=relaxed/simple;
	bh=5D3FR8Y8SP+Xt9j1nkr+uJ9CQCc6IzQRdgKgbl54lvU=;
	h=To:Subject:From:Message-Id:Date; b=oc2lcJbfJRvrqW5Eghrc6ogYyDfQnj1lgns/0Lx072nzVzgAi6c8ovceSP9BpUgWh6tzuAgKixZ8AlZariPyU9USSYovjCwxPgwiTf4ekRFh/1mEzousbix9X6qvq8Yx6FtWs+FOXZvUI2E+ER77TlSfYh2eDKARso7SH2uxRVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pn5YIeNU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pn5YIeNU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBEFDC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 15:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741534733;
	bh=5D3FR8Y8SP+Xt9j1nkr+uJ9CQCc6IzQRdgKgbl54lvU=;
	h=To:Subject:From:Date:From;
	b=pn5YIeNU+vxRr1/ziAW0ZijrX/P0CBAH84th3d3cEeY2cR0NX473nM8kamxJQ0K8y
	 vpLFT8pUCEQHsUCMAdU+WYe5VGzpybmC0VKD4gkjgdTK4e5UAiLrTHeDXx6zTswXMH
	 5sX4fxKTxI4DLwCA43n1ZN4/rQ5agfXFJqq7WHsfzKBkCB/UbtxoHv8tVuD7sgrPU4
	 +unyGu88q9fsL8ijZSJgqhZ9hrwF8cVs8J1qwR3TRhCsFdHnYeTjqAKnloFKAuOap4
	 ekEYO4FnSTflacRNjf12hdZ+hktd3LyUOEv/HYPoXysKMIH+er9tgsAlcjaUU6790Z
	 +ZiEbEDspDRug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C66C28B2F
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 15:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174153473367.19010.13610051831898837073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80fd227291a7b5190663ce70743984363afece83b3e4e6286f39ea28a195eb87
Date: Sun, 09 Mar 2025 15:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741534733
