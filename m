Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238C6B672
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 16:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783267714; cv=none; b=b+Ddbj5sRtZpSoOb7xd5YPmAIbplK2ImMh+IkxU7T+QR0kDD3SB24j6XepllgSzMGH+bQKA5z1o5m2uIWyQbG+4p5hm8L3nZS4J35PgW4Vv0eXPn8/eA9z8IhuJ5nEa5E2hTPRpU7qLrwcGAg0sDDDv635X5l5rLuc3DgBNMzco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783267714; c=relaxed/simple;
	bh=Vwm71ibWrZzd4Z4ZUqf3pATA7YYi8lLRITbRb4KK1cs=;
	h=To:Subject:From:Message-Id:Date; b=Cdi3o+wHBVyb9LYhF6s6cjdWT8aMHo8uTz3VVKHaMhtABrSkn7w3L2auyXi6p1NJgqvulRzKOPBA7KJ/VY56fCtrj4IkPR4lxOP87fs0BAob9/jkQ88ovrlNH5x3CtZW7CArrOYdWxb5FmPcURicwqHHouBMVyO1i1IjEYOjJUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CX/NuQQJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CX/NuQQJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B16C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 16:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783267713;
	bh=Vwm71ibWrZzd4Z4ZUqf3pATA7YYi8lLRITbRb4KK1cs=;
	h=To:Subject:From:Date:From;
	b=CX/NuQQJi1VPtFHD61iBSZPmsUD+2F5Fwk3EAJV0XuTbZsXvjQeVjoNmUN7qPz6Qi
	 Q/8xKxY7evL19kvCYb48eEsLJ8uP5jaBhRUtUELAAIN/+yliJn8anmMG5n3n0XhJW4
	 1RMUtSSeDUlAmRJcvMwZamPQP3f9cvNTXpSGGjw9ha8mt5Irpc0T9OP/QVy0hYRWAg
	 KUyC47kNrI1CJOvOcAmSgig1j0LcFASYmokTO4kg6hFpHNeanet3eB5D0a+4o4N1L5
	 FFuhJY9d47fSKtKtXvKMVnt1LE/mj2TxAFMjhLpzCjfQCUZkqCbLFNk8Q5XPaBBLfp
	 qonF0mVJ95kFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE00C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 16:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178326771368.15863.17588893075557087316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72ed878f7c265fc14e58d8f913235feea371ec7f30bd3e678f8fca9626ba6e97
Date: Sun, 05 Jul 2026 16:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783267713
