Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B39E3093C0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 14:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764168174; cv=none; b=biQ2HuHiUEpNmP9aGsPKQXh7gQ8rl8FhdlDeyInPp7DRfB3VaDBFXJiwbULyweJGEeWa72uGJ6cQEVE/Dw240862cjdxo/Sn1rRZ71Re+RASDB/fMMbXPpmGuZMGfBgOMUwT3GiVQqpLWVdRnBun/DrOg/zpzn115HjdVOv3zs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764168174; c=relaxed/simple;
	bh=zJnV1WJLXLcS8YD083kbcjYPhriWCt83V7skcNGw3Pc=;
	h=To:Subject:From:Message-Id:Date; b=MPq/pbxxMPpJ54rfhv5C3ioDd3b+fS4s1qm0xX71epOJ5PBDHCyLpY6WiCYJ/zZS66iLGY+9yvB6KdFgal2l5SjGnBdl/rfztxq8MoCvLJp/9kmbiFSRE9ZT/hPuBXsKIn1aw+vDjoAa3sjdK8wN1vjnifotZKs+nvzCZBwNXXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WEk6MPZI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WEk6MPZI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CC0C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 14:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764168173;
	bh=zJnV1WJLXLcS8YD083kbcjYPhriWCt83V7skcNGw3Pc=;
	h=To:Subject:From:Date:From;
	b=WEk6MPZI65MLt9+0Q0Z2FBStCnHJg2xJOk53oh1kc6dhBPaHCl/ksbk3fq4lhgAxP
	 3NgbNJrQ1w6hDOV/dr9ijxsDzM5hXljoKROKbkFzxAB+fyL9IQ6C/IEra68GjxZkjn
	 pno6Mtj6ZugxfB5GX+OWgEaXkxWA2OX/BxCKz7+h5kVYJvylaxo9Tugsh217ME2/Kd
	 irej47lDWdRDmnAMKYIg5btCHr96YlBra1Icl5jAro/ruejE2B7f5ceCAqwNXcHCbs
	 woOgriV7FkTQ6vmfzz7cT2fgvbAUYsrn9v8H5rKVbJ8NWLL9CXnDCyanXSniLvhH/q
	 6exIF/kdsvDCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91144D10F57
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 14:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176416817358.23808.859936728253442150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25d25ce9bc545bfa7a171bbd2e3e2ab9fa0749dcba7a0d7b23cf55ee16443222
Date: Wed, 26 Nov 2025 14:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764168173
