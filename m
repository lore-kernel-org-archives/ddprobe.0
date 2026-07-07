Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36ECB21638D
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 23:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783466314; cv=none; b=TFKMqM6GXM+6/i/Ta7nTe4gq9tDkEyh22FpRcBAEO1uLaEVSgJkftnBaTEk9wIwgCfmMymJr6UR5BvUprPrb2AnIYsJ3jtXpqIXLa1K4KOR4LhoGlEbxN0af6/7B/k72adBh9dYkBjOXMem7UTlgKVY2mngThEs7sgfN6ll8i8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783466314; c=relaxed/simple;
	bh=IyKPPz9QCnsJ3KzBO3A5MUkoVa2WdlUBDuu5/QFpVZA=;
	h=To:Subject:From:Message-Id:Date; b=Awi8pSmtAqBvq27j2wMb0wMPV4IjZ608AhdNgxzJ0uhbqNwLVD76TsPH910gla9t98STFlqnAYJHZ0MRhGpgfXpvtZcsb2RaglvX2SCuMzKFQPZMHYdxoxEThTLoANoqgIHRgaYMmfBXeExh9Mu7RBgh4KYB089tj1I4gw5NiuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q7y9RhuK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q7y9RhuK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF8D3C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 23:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783466313;
	bh=IyKPPz9QCnsJ3KzBO3A5MUkoVa2WdlUBDuu5/QFpVZA=;
	h=To:Subject:From:Date:From;
	b=q7y9RhuKR8cmozbZTGF+pYyj2pDL/sO/IKhI1X6Yv4fDdujAdU5Kp+5VG3DFXN5HY
	 iM74lUGoqcGdwIPnCrHc8jo9D0SQRyEojE9T8qGrhcbFHtykXIW0eACJQvvKb5HOhS
	 Jr85X5D36j0JwrYlVAsyTiVzZu8896kBjezH0lenToCO/RdzolEO9EeRMvVnS2vTpB
	 XMda0FlF9PlkKvBK5cDTOfGE+Al/iWB4I6jkO3L+pj3EumN5ItaPehm7KUAg8L5YkJ
	 5Fnw1rIOspbVcBsAB657Rv5nTt1vLJlX+zJb1jyGh6Atw/E9ekvXPBoJpA1Q+tR3QH
	 wrkrQ5SekPClw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF9AC43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 23:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178346631368.762.17552892803082307507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 348f22e20aabf555a8e226ed2d16d80b285e11861ba4fc2e506b05f631ef9c8b
Date: Tue, 07 Jul 2026 23:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783466313
