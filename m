Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 389E721E096
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 16:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740587934; cv=none; b=NO3TZq1QYEuX1gVtSE9f+xEcVeUm6yia3HiXq7Gi3x/vrgksuWX51Zsppck3Rj7VzmyuUSoIjQDF6pWHkHACZQQ4Pix/0muE0QeO0TluOXhBp9Ef2noacg2pmei1ANqLUtZqwZ0HI4SkKmL5f343mwAkz0olCnx9HmbKLVGyGy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740587934; c=relaxed/simple;
	bh=skx8tNTh5RwCV1DC7q17Q2+XK6WYgU3ftYmOOWW/JGE=;
	h=To:Subject:From:Message-Id:Date; b=h/2tPY61YXKjNoJkZPtvuPWukZpl1aeaJTFJVuQUFdTXXJrboe6x9uNWxjPcy1I4GdbZYdbUvg6lM67lXL0l1edv79NBqhbMFyV3tC3HYdJHSEbhMxVi9cXmZ7St/gtH+uI8pxJpmhayBtgstDdxh5XCgWcOJWZBSRBFP+r6Dm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TLtPwCsW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TLtPwCsW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE9DBC4CED6
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 16:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740587933;
	bh=skx8tNTh5RwCV1DC7q17Q2+XK6WYgU3ftYmOOWW/JGE=;
	h=To:Subject:From:Date:From;
	b=TLtPwCsWHnRKCWARHcgIopoH3Sq41HyUenja437umFtmLaBWuC1D8BaXemWP4gdsx
	 J4nKFB1xXAaIpgW+K00DCg/UlChjobhD/yFlsXhU0ItgrZIXlg4z4PbgD5/cyYtXB8
	 H9XQ7jeNxGbgvPolMHkGeAFuPLTp+kYz9ZFtUQIMM6I0muVjFZoyYVwnwkUyNRlzCg
	 gIDw+rhCDBy25dpcNZDC8TUU/Scv4Rql4hMTwpeVuZjRRKG6PfObhaeAWCc9PnQsVL
	 depf7SBDoMbMo5fxZfpceYvz7jVMiqXngbFYLCaZie8Sx+b5xC5TJEOQIk2NsY5b4C
	 Xunn9u2w2abTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97789C18E7C
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 16:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174058793361.30692.15918902219988339831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9444c297941b007904f3b19520c4005b63266f2c94620e39e27b31666c3787c8
Date: Wed, 26 Feb 2025 16:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740587933
