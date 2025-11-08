Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31CBB2D8788
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762586994; cv=none; b=hsyRy6IMW7QQX+N/3DRWh6U+dxgx8VOzzHkwrleCHQPiWU2BSPB63lcnegcN9mbEqE/UReKJhnM4jClADmhh6C3ZOTlTfWmwl8D4Bil23xuxCkC4OQebPfI94FBsc7RUL4W1JGamTeD98IeTv6TQB5XVxnmtvqL9SUPs84n14vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762586994; c=relaxed/simple;
	bh=w0jtKs5NJcD9vnSBDM7DaA8eP8pvMFgLgvg+f5OWf2o=;
	h=To:Subject:From:Message-Id:Date; b=b2UTAIyx3v8v566vE+PN+tXH5viOqQchjdl13coLeKql1U7h8wAil01hK6rCMI475RIFd8SAI7onSRJgULsVyee0PakVAthi++JrIZpV+q1urVEv6j/DdQa64b0IN0ZVW0j6Sv3Ng963zeAOqBrMiMc3QCtvYfohxn/ekpPnr2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dE98qbnw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dE98qbnw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF58C116C6
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762586993;
	bh=w0jtKs5NJcD9vnSBDM7DaA8eP8pvMFgLgvg+f5OWf2o=;
	h=To:Subject:From:Date:From;
	b=dE98qbnw2BkXNkdLXZ7H3SoKGIMSPSFKDQFJ3rpXGQ37L0j56MYdXp89lLKsC72Nl
	 dCVLNv6EhkpIoG4NKYvRvKTFklnlaX8sTyTFCQ59A/gR8zHumDkCInTYKZEl8KwPM8
	 1kCIPLPlFVx+PACIZZ4RBk+PAdLEbNYj4P5UrZ6FYxQaD7g8RSHAP1d+agVhhhrJPb
	 dIyu8t2fuk7V7KmVQ19xiwleja19ZWY6NxlYU8gcAqM1TDOcq2l4QlOGEW+iqfJtOe
	 w9JieujKOV8SlJFocjbOqQzpnhpwdsKbr3Az02Tn2b9oyv5PnYgJ0n9X9o6FyV1NFc
	 wCg9R/FRWfdew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9281ACCFA1A
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176258699357.5368.9453195321468170859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d119a9dae7fb45ebf998eda429a6ddfcb82874e0474641d0736b9865c1209fd3
Date: Sat, 08 Nov 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762586993
