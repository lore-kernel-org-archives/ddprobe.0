Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1412110E
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752208794; cv=none; b=gByg8wqCyYzNOOgisBxbqDGC9wi2N9b6/BoUWLwRjNBMnTf9OLvpqBpwIu0g28WfRtQ4Wweo+bAWdHPVafs+g9ew0qQ5fN8mgsOpp8qlslQSvYeJ9AObQNneJLXQnVKVjKLX7B5olyg5nBB4Q36LeOBtfVoSnGFBb+W747H64TE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752208794; c=relaxed/simple;
	bh=qBNVmD363UpRu+fewunwPxRIwDG8i2i//kFWCaSGrtI=;
	h=To:Subject:From:Message-Id:Date; b=S34yvSbdX/tHLilMv/vDYh3BwNoOXudCQOutt9zNhbNd1yL9xsNGxOkiwG2Wuz4W+jjj9ByCjebtpnuTfx2ycepOIso8PpyieDcNRQzsPSogaaeFdjA4RFOyPCLntWkD555KYeqnF3y0b4wHXjHFlKkKlXifsDPmB+iUAYh+LO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=psNop17u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="psNop17u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D68C4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752208793;
	bh=qBNVmD363UpRu+fewunwPxRIwDG8i2i//kFWCaSGrtI=;
	h=To:Subject:From:Date:From;
	b=psNop17uMedD5jKEcTxzZ4Nw1tTfqxXEDz93T6rPHTUfah6DxB1gh2JUl9wEdXpxo
	 zTxRN4L1dWt5/n1XOMUks4/iPmxfIgGdn8zPPpE7iyVMAJcAl/i3iBIatLciw/NRt0
	 Z+X4u2JfK8KYfrUokSXjeaYaWFsqhKf5JhtXu3aSKY/Lf/ExSU6AkCgmHQOF+0UX7z
	 NbiOOqYuk0sLkrUhNnTqh+43FT7o5naz7srsEiumlQrKxmAfamcRnrIGImKQvjSnSq
	 L+Toi++s6lE29DEdshzM0847d+V2aw5uqCOZ6/PkXqATnkpmF42h/sEpZxMWJWIDiw
	 nNhNaXMal+iDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB4EC8303C
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175220879358.1112.16472401078393379553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 575b4e544ae1712949897bffd9b1bb5daa917d8ea5200dfbe2648f5c398d635b
Date: Fri, 11 Jul 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752208793
