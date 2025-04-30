Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 455BA2111
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745981395; cv=none; b=qLJgDZOBzixYy2Wp+FHRIb4eSoYMsi722zi7H3JERTA1f7g6J+Gbzk6RWKJGa2prqtj5zCd5ekNxNc3H8UmVh1LU/chcR3GtQ8zK3aNL5EaCNiSOOVUudQQ0MgNOmNdXCMFpMcCIOm5IrEO+6Z838LeCwYbLBhjgn1xyAQlQaSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745981395; c=relaxed/simple;
	bh=nPhUiJ/uPNqeBjraN97hGLJFsip5pSLO5noOi15j0MM=;
	h=To:Subject:From:Message-Id:Date; b=mRUBhCinHs+oWdrJAwsWHkzS1nrI2BEJvduW7y5kceZvDFFn4CWeRpnZ+644Wug30yMk4/mEBaMcvsk+3wDpqHkc3ugJC33JCSPrFyqutHPNA4f+nYYFsqYZ64tpKJmW+G6M+6CApLVCiaVZCc01K7/2W3YRFAbTzbqTXIxpID8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VXjz13/z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VXjz13/z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82B5C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745981393;
	bh=nPhUiJ/uPNqeBjraN97hGLJFsip5pSLO5noOi15j0MM=;
	h=To:Subject:From:Date:From;
	b=VXjz13/zOxNxrJmuOL1HZdHnsscuIcCI9TzOemH8oOUWGEhBNB+AT98Q+M/zXD7Hg
	 TSYNJ+0CoBWKTqrZJaB77HDoWhxIr9diokScFQtS4fxFcUDPQ6DI/6aOa1z1+cxLFG
	 2kolBLqLx0Lh9mig0fq7TVwyDBAzeYsR20myViCkqsT/jmw3dfY/X3SYVE3HUahHUI
	 ToGV1y8g/beKde7ydkriPM+DE8vFSFbgLf08fj6dRt871Bkx9+sNLov2l+8J713XPA
	 ws9FhJ2qRVQ9KvYwCRnihVVqaJA2cw73Nu7QsoXFWZtwZcsPjbwEKkltfB7lRhNmqk
	 36kUyPS+Hjypw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF54C369DC
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174598139357.24183.9845304596742748070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a0b0f07907f942e705b15bac565d9e4ae7f3aba463a362bdf638febf9da4eed
Date: Wed, 30 Apr 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745981393
