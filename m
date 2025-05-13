Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3091548C
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747095596; cv=none; b=i9rsb/Xu1gncbtPMdMJGHLnF36Jqr3v7xqr1g6HrjOBazvPDI1wduWYe8tFep2fWqY8AGVMzfOYiB5J031AAQgp+Q4m6QeI8kFubDBcRRwwhIts27NML0Go0PSJWMdQD15CFu/xuUrHcudMx+XRW+kb14XSJQvX4vm/Do6zmERs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747095596; c=relaxed/simple;
	bh=QBSiNpkLyNo8oUrzgWKTaGxHXOGvyFq3jTRVbXlQkWo=;
	h=To:Subject:From:Message-Id:Date; b=dIT5IHlNHXUFpcF2fj+E41bh6ui/uvAtq+G1t1aSW11gN4J/aZt0ybpJ6uZCvvESjTke07vXyC9pENDfwIzvn3kw1Y2536gnrsJiHRTs9C57aZMtwFl3sr1yKbmHnfve//G8vO0xW7924Pa6L7NGc+0qmhNyx0DAcXkRKeqcLso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z/VZE7WO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z/VZE7WO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E023C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747095593;
	bh=QBSiNpkLyNo8oUrzgWKTaGxHXOGvyFq3jTRVbXlQkWo=;
	h=To:Subject:From:Date:From;
	b=Z/VZE7WOVf5sZimAUA1C8XKyGMrsMFW3dwL1MKWzfe5p7yeCataoMt0d6MR8let9J
	 JiH0n8eCqIs1nOMI3WSEQskjCjzEZW2EARSO7TlrhH7XNvd5dfrvSSiyOf6dVTNGKL
	 VWqpALil/ig8Fl5U+cC8d8YUmMOzN4pTaXxNytG9gFkX11A+lLEjyLHk4Z4jcQQ3Y1
	 UevG49S4MsClRip33ceqn2WzZWx3wjCniTORTodr3CrhWVHFszgkymgJ21Yj2n76Mf
	 5CIwwxM6pMsLhmnfnPDlZT4OYcsUzhOZUY8JmVUAg5SK728pMLzAwOOmC2/jkeqOyq
	 XXc32Lc4IlFqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906EBC3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174709559358.21382.10220783829790725919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e3d16fad3e76b93c707018e958e1d5e762f015459d94253a343fd2ae45d54e0
Date: Tue, 13 May 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747095593
