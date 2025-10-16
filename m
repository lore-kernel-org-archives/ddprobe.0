Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E35D433CEBE
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760624394; cv=none; b=bKwacLzlfHkLRCLH0t904iOV634hK+Vwtc3QqvtDHJ8jNJJKMOjCN/9bA6IsrlKQqNbR738ao3BsM4SrkVNX3glJ2y+8KGYFOqgPejzMIzTNiyv8+l/DNrrM6Q9npcp4VKn1MeB1skMXi1fgfQQHfHt9uJqI5ygQcnhdog0JUZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760624394; c=relaxed/simple;
	bh=DEUT/1fTnswH62bSxhI9AahHRBQedEFUDMPczuWAefk=;
	h=To:Subject:From:Message-Id:Date; b=msut+yJ8EWNYffa5+mYZTl3llcIlWxwDw6OFpj1Xt7z/K/2p1edMO2oMJWePecuz4oyHj+Pi+MhSvokNqMBRmolU/intGOy9GH2vQ4uPcm89TMZJu529z7/wrlJyRiYYUfr9PjXBRqrSLzT7haxsAD13VyKEJD6EI3lLAn7bfC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sxZyDe8q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sxZyDe8q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C06C4CEFE
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760624393;
	bh=DEUT/1fTnswH62bSxhI9AahHRBQedEFUDMPczuWAefk=;
	h=To:Subject:From:Date:From;
	b=sxZyDe8qgq3s3N1Mq2PfysR5YsISKKdBD5UbA71vE6KdDCJoqwqrKcZaz9AlUL5fW
	 OE5p171ttllIJVCWsLhCURox7oq2Srfp9cby5e5v3rfPrbTiO/elDsWBzhGmljxFYQ
	 JoGbH16B5BHrWc9iXG22CQVtW4oEBgiJDOjIhb+/FffJKg/oQ31okfGh7Q/6KJdJRE
	 Y6fMe59NIh9JmKtucVxDdgd9xPHsA0BHXgWtFBZF6kTJYsPvm0kewMNEJ2s8Jh0wDk
	 JhUZXHxOuLuBL53+HsHbffyt4JOfpUH64F7IpI4M1Lmk+el/3L+zBpEYdbPHiTq7/U
	 vCn59qqXwn0mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DFFCCD195
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176062439358.12706.7810259642701020450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c78f843498e3ba75b5bd64789cfd677d303bf9349b412a4dfa323e26d5d00a1e
Date: Thu, 16 Oct 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760624393
