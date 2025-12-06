Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340183B8D6C
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 02:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764989574; cv=none; b=POBSZeSGK9D/FhZW7XhFHoWhGzAZNvbEHJrXb0Z+BidJjnQ+uqoUcVTWx3KhusB78WIbU/2SF5n8mHtN7YX+aBDJTYygrK25CA2+MtmmpWQnw++/ZCDXMAA+6TjRT8VQKuPXUv0ayCRsF9JM5x0ry1qiQBD/8BWiSNqW/CDCpDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764989574; c=relaxed/simple;
	bh=PIvoa90hdQBFd6H+Tz+khe/SbnkCST86BhqtNJwNXjs=;
	h=To:Subject:From:Message-Id:Date; b=uZJa3Wctt8ReCI9boFrPARo9FFrH3SwxxChTgaoGKUL6ARS+h6/qigv2SVi0ChYRhZ9Gx3TuXK/9h3RyunoJUCxg0Bi9Ecjrn+8DpLTlX3m+xK3ETuerKALLr7fmyAEvfOd+7UuPvoIWM44FzTVG0AFKpRkp34Y6V7dWjpRAY6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ROvJUpBr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ROvJUpBr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5770C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 02:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764989573;
	bh=PIvoa90hdQBFd6H+Tz+khe/SbnkCST86BhqtNJwNXjs=;
	h=To:Subject:From:Date:From;
	b=ROvJUpBrBM2M6ZGoYBRJ1P+Go89WO3yGyZOLHHRmwMcq/ab58lwpfkG2dIZYKoSrr
	 uRj0uF6x42KjGl901EuAuI0EI0UUIvE5WtpaSlwvJ1J9CvRDZaefhDYLsU6WO8/G0c
	 g9ZfX208bo3ZBL/sDeDRgQhHvXYakbdZOPXE5cYeo92S16GvnbB7fM7XqLcGDHOngK
	 2CKlYNv8anTh5ngYcl6B4ZeWpMCIKA+EuYp41rD9PRsuTiCsQb/lJ9tx1CdeM1jYMp
	 l9wQfp1Ao31Y9kbczySun9kU7jc/O5euRGLeG/iI9KDnmBY6s8w2Dt8fU2tty1b8Ex
	 tQzmF0NIT/xwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918EAD3ABEF
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 02:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176498957358.7055.12669864683823655816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93955cb3ba9e816aa764e6c3f625d638954ea0f9d9e0305cc3e96eaf3a421ec5
Date: Sat, 06 Dec 2025 02:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764989573
