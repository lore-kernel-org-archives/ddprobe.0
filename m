Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E07782899
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 05:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771304694; cv=none; b=fhfEf4Ab9o0rttqC007FLr5bsmBzM1bxEo1xy9mWIObNibTQ7cjPOr67aNbRD4ZhTU0Iq3tgvZQe4QJWmp+4T4+5drjgcGnB9FvXUHsWWww6glIcW21w83HtPQ3JQew3hGcwWYz9Yb2Mvinzbt8c0tmraXAvz/l1z94jjmsgSJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771304694; c=relaxed/simple;
	bh=vnUavbqCS+3PRYEb9QKJkeKhgBX5T3o3RsiwvZBko6k=;
	h=To:Subject:From:Message-Id:Date; b=h/yU0CKuw1MtRLGPlIrgQqorxi1HlCaAFHJzKek3YWwkGiIEJ2LekqvdLOcJ7BFQzT+skebNXXyC8S3pq7eqUIRQM3xUIIydPgcHSRlI1GflMu0UQACdKfl16qYT9IFaAwolBocDoetEG0nVhjXRT9MM8xZNvvyhbBrESYKgXjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LBus1bxF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LBus1bxF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9977C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 05:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771304693;
	bh=vnUavbqCS+3PRYEb9QKJkeKhgBX5T3o3RsiwvZBko6k=;
	h=To:Subject:From:Date:From;
	b=LBus1bxF3aW733IdjJ6hWgnDYcN7b0BUhRULaUQDkcXbdN0yPvJLZJvdKUg3sN32B
	 xatwsmaJBDUZ6T8+p5HjRBRRoy47WMEcBFvcZ0k9rZ4qZMETB4Y3MYP1bi/LDdQgHY
	 JDar5Ztw4Ww5ecVX00XDJiL+AlEwA1lb4Ain6RQZ1MXN6ZXhDRzEDcZmK58QkuKiiQ
	 02Be4dLIf83TrCXFEkHgBPPGRthQsA/qTinW8girfDu4lWYa4GuxCqhAk0TvPo2yqv
	 4fAVnT7V17CuRjnDOeJ5YudK+IbZcO33UabwOPBt8Q8Pq8vmFZpktiPL2hd7jV92lH
	 5smfn03ePxxSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981DAE8384C
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 05:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177130469359.14997.6469618065646660295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b19cf6fc7b47b7524cbf7fff88c5ab1b3c20823881b30b25fc85446ee33a701a
Date: Tue, 17 Feb 2026 05:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771304693
