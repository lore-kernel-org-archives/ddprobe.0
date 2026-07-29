Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CD013D1717
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785335434; cv=none; b=TCp7Pfr+NvovWcZhtchojzwTclBLCu/SmyqJXs775HY6+s2hlYmRr98cybmZ9xxzPGu3TTiGneiC2EdgerFXBIP9xOlOU9oPz8vb4uRmSHH6iy1mjKnk5aB8bxpllQwxUbsW+pMsuVek2rp2Bg+CZC883c2CqI4n0973/Xpdaws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785335434; c=relaxed/simple;
	bh=t/54DN6kA9csb40LNk1Ezf9xegZWycpiUGiuBYvSxEk=;
	h=To:Subject:From:Message-Id:Date; b=jrE/Y4WeL3wFyjGi9dLNkabeTCITLQaHPQGZUXmG+VhucvrSsqPd0dOvAbOZZvkSRfC8Sjox/zvAvem0n2cl9AH+on+qihUGr/leD+uG6YfUMlMHnRsHTfnoKQV3rUfyfkjzyTzR9wssc7MEHxt4o92d2w5V12ElanFZZ07RpGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HiMdoYkQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HiMdoYkQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF8E8C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785335433;
	bh=t/54DN6kA9csb40LNk1Ezf9xegZWycpiUGiuBYvSxEk=;
	h=To:Subject:From:Date:From;
	b=HiMdoYkQDZZY9bTjht/ss6avL6u+Uuu3mYADyXzEVG6Tnqq1AKVW82AYzJCuLL9Wk
	 e4OVpexv1DzXOclDTJVxuBq2vVeL7a9GrQz8ccUSWR1PA9wkaxVbno3fNnc+Pxy9JX
	 BIkyo2ZMdYUYonfi1wp5qU02n9wI8cM+m1T0vYHso6nROm8ajDiO4XWFFMKHvRPEEu
	 5qHmtzjxkBv5kwBmx4HAga2Rr41zzlaJiS69F3aFLVfTXzple592lFD+G+pZnvFgar
	 rjhXnlNq0idYCUuSeB+iNMkqUeqZfP78cwUnh2J6EE97ixdtqLTRp5KwxaYdkb8nVs
	 OtlzTA/deJTng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BD5C53200
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178533543368.954.16823509567197079952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49a21b7d46714953620dffe060d50adc280ef6b006ee184b1d759877ad701b4b
Date: Wed, 29 Jul 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785335433
