Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F8D628F4
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755082194; cv=none; b=nbUxrP+LLQfNPVXXNTg1Mx+Qld+v/uYFPKIqqJrn5svqS3zIGKDG+ln3ldf4PZE0DUFVquHYgy8I49eo8Aaiz0HWUT4N2j6V7fc8h117y5JApXWP6ZiP877U0yylz2bIffr4ujmPp85XgUuB3L29SgICLNk7feSG41lY0oTSc9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755082194; c=relaxed/simple;
	bh=n9XDtwc0PTQkj2mGxPxGjdT4kEzKv4aHTWXNESyQlis=;
	h=To:Subject:From:Message-Id:Date; b=JS7a9yW6GBNYmIzMmk1X1Xdbw3LPSMbamqxM6yNLeXJ4C3QTdXkqrEYKvYhqJ/W5+vZY2zb23qJeRQNKawDojt8rYigivNhRchmTO2qGEjjvSjYX0k4xAr/aa/5xtSybDMW4XIlvo+laab3I+fKnN0z+Zwn2+JVUHNPu0RaA/Qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u8I3wHdv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u8I3wHdv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00BDC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755082193;
	bh=n9XDtwc0PTQkj2mGxPxGjdT4kEzKv4aHTWXNESyQlis=;
	h=To:Subject:From:Date:From;
	b=u8I3wHdv3fBT7ZkpqcBx2+7i9uOgBf2Kx95UtA7Uw6XEopC2q+IwLkOHRRBV884xV
	 7V+5huNiEzPOG3B+3q2o3AV2wFprkLVxCOPbsyaRz9gd+W1xuNNNa3S89pNq1Eo10i
	 t4DDnyTHWIWqG1adRwjfb982bKf9HvVuzG2HpisZwoTzyeJMgzB/oLOOkF6k67otYW
	 sLfcCCsPTgQFHkXbbKe4nm/0MZuhi0hNg9EnhoJddjMiw+Ys7G1NQTqzkt8yVvCnbr
	 V/KzoJiPwmMKEcDbnnyerI4iB+zTBrUtvq/xgMqvbxgK7xh1XGMav2eBW5VSwQ8VYq
	 H3AjDhgAckw3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA19CA0EE0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175508219357.5448.6241304947233955585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ea767fe1cbbf7875e22158927148cef5c34f29bed9082ca776c994199d4bdaf
Date: Wed, 13 Aug 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755082193
