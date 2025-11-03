Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A6E82F9D82
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762163994; cv=none; b=AsBat3/IGvSSYGL2IGPprz5mGHquk+i1l3PtWgaCSLH36h3WCsl8RSZnrhuv5KSG24uU8hXGgoUzuEaNESngm5sBRnMBJQyU42/Gr6AZSCwWcGLETaTCdKCvp7nrIh9bIEh4bDKNFZ0fnHRj6IxfI1UUmp/jAX/0C9Sr2K+MnbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762163994; c=relaxed/simple;
	bh=zPD9zo/fJMP9B0/EFp+RvA2Bvjab4r34oRJf7JIS82E=;
	h=To:Subject:From:Message-Id:Date; b=j5OJzXv/8bt4w2gVmjps7NaOAvcBhYvYy6hI7T0cy9Gp24LKy8BVNKt60JHstY/qTMisz47nBpKbR9XEwHgCHhoD0Lb6Tk+8hjno5XdtQHxCJAi7+v/UBhp6vFDReAj8Qodm7qBCsNcWAxwtbcQR0S9E9U5gQh3i/fk1m9jLrRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M2bwnJSd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M2bwnJSd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A085BC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762163993;
	bh=zPD9zo/fJMP9B0/EFp+RvA2Bvjab4r34oRJf7JIS82E=;
	h=To:Subject:From:Date:From;
	b=M2bwnJSdR5CZw4aQgaR34R6UR9PVu5EdBd8gMY8EoNXeoAanNbWgsdpxZou8o5Hpp
	 PK3StZPwOHDdNysVI4hOMN7l108u8Q0Gg2dCeJQiHJNyHVU+zzITjRgdu7sH0NINjI
	 I/G4ERkdcsUvU727ktqHG2gVqy2XnzE/NL5TlC1mrGU0aReOxlB37BhVnmDOBzvlRj
	 GJ7Awd1FTGuS8Z7DvfNJXoavDZhM8yO58JFdZwPE4L0F/9bdET3yP05Niz8+cuY8gB
	 yv2vNj7YHWPBBkxj44LB3bRAUKmUZfESwlQsHBM9B0quj2Ml/QYHFR3wLpEZH4rI5S
	 jPggkSA9Z97Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906EFCCF9F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176216399358.25550.8851374208049823241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52548cf32548535fc72ee6dd38db6b94821e5a1ab4e846affb2f670d21f488e1
Date: Mon, 03 Nov 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762163993
