Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14815270ED7
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 01:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771377294; cv=none; b=caMCgc385rnH1ojhLVshD04NER7f3S+Czxq4afpEpkdVUiyWyP99o61NKXR4GZb2B0r7XFs4R+NV2P29JVH/31fO6xgNEDceu7kleR+RR4qcWmezJ29HrUuswVvadP2P60EK1SQDJkUtFDpknU4AxAZ4pzLarBMee3DBZEUP67Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771377294; c=relaxed/simple;
	bh=uIsdbmZb1GYQrlldwWq/f7HBMAWxhkviY1biwZ5OKwc=;
	h=To:Subject:From:Message-Id:Date; b=d/aYqnJs8Hmx15dm8tzndKJx1AwroIZcsQ/oVWqNTjzVNc0i8gb7/QrrL0tLxQuegYYHUfwQWjfCxt/uewgJQ8yEVx06bI9W0wISAa+4vDY6JW0bP8eQUmfWqp4GwvPCI8wnRwoU0J0LHx9thfzQ9CP2+3rjQs2rqsbtE6uq5iU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J+OIpOAn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J+OIpOAn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0190C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 01:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771377293;
	bh=uIsdbmZb1GYQrlldwWq/f7HBMAWxhkviY1biwZ5OKwc=;
	h=To:Subject:From:Date:From;
	b=J+OIpOAnCbrwAlSpALY3L1MaS52SP+usirOdg4V8ttcXgHNIfXjtHZ0yz1u1eyIjg
	 7juZcqCIMTJtP9pnLxZbAPq1ST+hrYzB8TTeL341zWiLz70j89bvdtFbW8GHOemfgA
	 9k1cLa2EaRUQ65wjVSmOV/LqIo3+9Im1B1Ag5xhV2Xtgz65uzJV8D3tHU5oFg3oy/V
	 QmTvSulMaIKX6FFcawU5Aht37elsKkRFMiOjZNqw6LdYjJHUQmGv59ccxcGZFoXpU3
	 ld499L2g8ajFPriToL74g0hM5HphlJQaWUqWaNp9A/7C0OpCibhi/NKyNsBpO2bsU7
	 3YJJCm/FpC5mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9650BE9A03B
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 01:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177137729359.1736.7028195596108636202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a533743e137ea19c36c1cd9abacb663343d3a5d36572129ced08f3c42785c92
Date: Wed, 18 Feb 2026 01:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771377293
