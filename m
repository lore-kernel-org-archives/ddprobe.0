Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258B056B81
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736610354; cv=none; b=ardbgD5sSnASmz7NaW2PQHDw1Pqhns1SMJdU+PU2TeuVBRLmgg2jZGT1u4doKF8LXq8vFb19heBRPd89F/FUrYA7Sx4fIFjjfAbzzUxrhtJWjkLia8nXZpbGCBLFXJk5SvET9WbmHoHXvq+SSGr0XCNKULMuLgxUujbcw5Ho0Y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736610354; c=relaxed/simple;
	bh=eDbrgkO1KOjJ9V9s/cZeFJnu0iTNNDt9NTWKC6/fZX4=;
	h=To:Subject:From:Message-Id:Date; b=bGAjlJR7XndzUmYBnBgLNWtht9q0r7KjC8VyJkl1A0vg2CwGHtOz17VKrOEEtiN9sHw6uyvRYwGT9xzDcB3siXTqrDFDAYFJ3qVLb9XExkDr10XMsxG7ZVQUI5txR+J0pQjyi5A9Yk66aG4jlJri1DNXKjaf5EBudveH1zWaEqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vI7+Jw5D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vI7+Jw5D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4590C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736610353;
	bh=eDbrgkO1KOjJ9V9s/cZeFJnu0iTNNDt9NTWKC6/fZX4=;
	h=To:Subject:From:Date:From;
	b=vI7+Jw5DT2G/RkH12NHj97vyUx4iBQ6VwzAiUShXlYwsz3nJIvMl/jK06MqTTLMJp
	 5rTpVOZWFaiFimSpPumlRBSSU7ALHZxgpN5Vjl8l0gBb5BtFGrgwUCa5acBxfpFgVX
	 1YhETegSYNIAcxhKDyjXboKfIqn8ScUSo0+m8YHQjKZNIs/TO/C83z67qwzvoK26Yo
	 /05kchBrv5Xwi7VRma2QqKbb+hMtCAroJ5oOrS0JCCwRwJdyyekldLQNk/2otTcISP
	 JXoH2L92GUQWZN20fl0tkyqXYPrEHZtTvaClrGgonvrghrp1UirkYZcAmqfE6/Rph4
	 q55U+SkMeBVaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9134FE7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173661035358.25707.7366547679664158695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 671b3296dbc577c8afeee3d0308afa18e5e240a5040053507ceb7bc4964ea816
Date: Sat, 11 Jan 2025 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736610353
