Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15E2326ED2E
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761422994; cv=none; b=UUDOnm/zm4gyKILs27H17/nnoYri2ZS0YcYxsPN177t5x4S6INqAB9SzXLv5MdjOYGMT0cMVeL48HnBJd4kpuDh3IgOliIdjuZoWSXzYe5xuoBYxhvKeNpxJl08qnwVSXb0pVgfDqVHbheMJ5kY8/nbzYIzx9Q3vyGcMQk1x0qc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761422994; c=relaxed/simple;
	bh=A8kCNX7l+Z5jo21forqY/k8MzOy89kdAH7iioPLuuv8=;
	h=To:Subject:From:Message-Id:Date; b=W1wDUPvsvVSVU4MEx0lozEBmrWV8BsstcfM8UCt1hk+HNxNVuIm8mn/Hg+/2etrIh5mJENfysW9jhfKDCoLgDg2AS1sVmj8rEbh3axAW3uF0IE1d1QNYXO08sa42S78s6ZcddnD2LY4fy8e0vmSafYq7/ChpApXztquap8Q9Irs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NLry6J4p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NLry6J4p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEB8C4CEFB
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761422993;
	bh=A8kCNX7l+Z5jo21forqY/k8MzOy89kdAH7iioPLuuv8=;
	h=To:Subject:From:Date:From;
	b=NLry6J4pz7v057pXaoNOKXhSfsoyChiMYKMJjvYAlVUIHO+nL5ZZ5Pv7gCAR9gnMT
	 2vb5ROAiN/S4AujYYmKp1iR04izQgVj0ZntngocrRVhTS4r8tle1b0NY8FSGCiaHNL
	 zB1R3MR8VOIMuJ7rj7L4NbHm/jGJLocbSYKQk6g57/Kg/l/838pxBmluihnMNLmjwf
	 sOyifj3pXJw7i/X8OAourt68zNfJzT39Ft+prROlatfeHBALOC0fwO+HYXa1zOrz4j
	 VlwRAGGTNpUV/h6LEAWXsSXz/RIc4lrZfuMBtIWrM5gaceRG/62sWjH3DQnYi7XzkM
	 spptokio/Ppuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E6ECCF9EB
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176142299360.15735.1654578527803093478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3726d534725f432eca3f6a1d1bec8b90905ae77958f1b3b3222a27e04fee12e2
Date: Sat, 25 Oct 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761422993
