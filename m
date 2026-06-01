Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD3B389116
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 08:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780303474; cv=none; b=Ccw4WwI0orH1xYmgEOW+W9YwWqilnvWrTg4MrO3mI56otjAnJNSeddeyUWzGagFVW8lkmlrIST3CS9I/pREZPyycHpYxRKFMHH5xdBOOGJJxGwTw8Jw37hBmb9BxyfYveJc9Pq1Ibcw2xLc2r1erymAT3QBjiZP5t2UWiguQeLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780303474; c=relaxed/simple;
	bh=AeAa6vq7pgw3eHD207kH/D8X3mzi74uJ2mRyc64Ycxo=;
	h=To:Subject:From:Message-Id:Date; b=gmm6XyJRkrUT2uGBaHjEEPkqcHdIl+6+czrmW9+Ib6QGhGdzUrcbz0ZXtwFRGZUIghjeyzzzSBih/i5OuR9i799x9xEVCJ0zpUiCfcr0Ueo9MXNi1R+ZiWtUAJP1xK7KcCAC93FkxM/eUFwxcU4HmlOMYi25E5+A/3Hm1dCAJu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DKFN+9MM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DKFN+9MM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9981C2BCC6
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 08:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780303473;
	bh=AeAa6vq7pgw3eHD207kH/D8X3mzi74uJ2mRyc64Ycxo=;
	h=To:Subject:From:Date:From;
	b=DKFN+9MMmUqJOJ0/pKji9RdN+QMZtX13bBvAZCSPEaiXUCn7OVMizjacTJ4cMnHUF
	 oy0TOGAkNK5fpf+0ekUInWPdW+Dg5kNzQphQoZ6MofcNBBc60iVQmjMRX8ViavmPgX
	 TwyXjCfIasTZy1/kygi7YJuKW5dkQ/A/YhjyU1pVnx1RvoT5avH/rQWg/cUbzQG3+a
	 5PGl8hF/qmWFPoFxiuQh2lda0qABRra24b3+SdJunkTa+oOYK7qlARbID2YUlzgs2p
	 remxoqW/jSQn/qdZw/KYVY285fUhb1Daw8RKSZ7tn4Uzj/xgBimeG1P7G7ikLVwWW8
	 7hvMcreeaWmOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE076CD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 08:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178030347376.20982.11158224216637399645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb94c0e8863e6e99baa9dd618262095a92d9b671fecff3ff47acf896443a9f66
Date: Mon, 01 Jun 2026 08:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780303473
