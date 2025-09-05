Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD9A2F7AB0
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757086194; cv=none; b=Gjz4qfjjHClV5BW524bwdKprPqhmiUA5SXtIvTz59cI+WBN+46c0+bxYI1yZ3AX3yDeoFLHw2ejB/p7lK5o7yINgY4/eCtFrrQN4M/2rIGa4aT8Uy5JB2x8P2kLC+XkIYJ6z/8eCHhY+9jSzo/t2kO7mFhqhP3Y6x/EOLoOl980=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757086194; c=relaxed/simple;
	bh=PMYdaX3CXeQUGlzGjNQVdltI6CFjvMAtxOSFJlmqkbo=;
	h=To:Subject:From:Message-Id:Date; b=T4mEVeRNMKi5rcKQEY1k7TF9xS3FNy9cBmWqyDKtsA21Qy3JLNT5EXa46Ijj6Ml5hNjp/tfKm+RqBBKSJxwGIGZkU+3D39rGvsPbQ2FI+lPbSgFcWRJ1aALOrvVOn6ANfC49a7rLK84b3rCqt7IrGGSyq3SqDt3qlfPjGaljtzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YH4kkzZj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YH4kkzZj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AB1C4CEF4
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757086193;
	bh=PMYdaX3CXeQUGlzGjNQVdltI6CFjvMAtxOSFJlmqkbo=;
	h=To:Subject:From:Date:From;
	b=YH4kkzZj9GqlMdl49D6Ho/TefRdoI0LxFTT6CsceduU3V7Bvq03f8H4tm713MnXjX
	 WWJTNmj+86lvwaLf4ns9wi/oZhdJcipzF20pIey8R1Qm6qRVQgt8Laf/HMXlu4QYdX
	 X8K6H9ea38ZLMLmPpDz5dSQCZXxFR1ITCkmQspNEXB1ciVRFh2KiE3V60xmkBHyysc
	 ifBxvR6rtY6+Rd3Pg8F0FP5UIqilwEaAHAPeArMz/jVrm1j5NVtSU2NQ0nNKpaUnG7
	 7irlqG7nCsdRWLss8vGeG34Y99IjOp+2vn+1s6cPViygM2I/MYV/2MMl0cJV/dA0k2
	 rJY2aVWHqZ7Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909CCCA0FED
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175708619358.4953.1743747741230483791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 730bd97296271ebf5a0c5a60a367ee4b3a9499c41a89479d2c155b4c60e240fe
Date: Fri, 05 Sep 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757086193
