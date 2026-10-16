Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6524944724D
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792188034; cv=none; b=bh9MpGAXIwSjNDyjK66pVEMqVktfWcRcO9CF2WAt1ulLnt1m3x7sf8/8nEnX1n5GtqqYwSZLsAMgVVtD07YIw7eG3e0P/0ouicwwlQCL9j17LLHzOpsiQ2L4+qW2f6He1r1Y0fIu1AK2rd1yr/OAiyJTwZLu9WzLdV0ab0aqKhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792188034; c=relaxed/simple;
	bh=th0fVFqmdT3FgzzizkQcnFlly8pkiQ8U+ZlQRyK/qAE=;
	h=To:Subject:From:Message-Id:Date; b=RsVvD/h4weyzDAPwRlRuei7olAO1ngkabflNVUFstJZuTKWQkr5PDRo9Kz6Qv+an6RyHyVB4zg+mt26k+tn+VOU9BvRYzFA+6JziecxMQVe0m6hiqatVLjt21lZ8OqhFkyjo5VLFikj1/9QQ4B6QKxH3vPEN0eqmXy55wZ+m3To=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PABT9j27; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PABT9j27"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5E3EC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792188033;
	bh=th0fVFqmdT3FgzzizkQcnFlly8pkiQ8U+ZlQRyK/qAE=;
	h=To:Subject:From:Date:From;
	b=PABT9j27I1FCEpIZUI971u8BNOszQ9i+IKepRjBuY6LShq7NNefx4f7fcP08wycUq
	 qV2wdh9A/S275+D7HpCgNv/cRPbmRW1GV14rXnXpSIm0VJ8+irS6ce7jWjcY+Ee/yv
	 rMrr51luz0Z/H4jV03JwZj3SmG//BFE6vwzqgJiLMLBiaY0Onw8rx7Ll0VhPDq6Hq7
	 +XOcEu/rROWmWy1vZ/t7UUt2uj2Fg6zEb3ygm4UqPjs/oMaYGHh/Lzk6KYrl+s0uQi
	 IqWsEq0Vin5UXrRwixYcAoRW7wa4HHeEMo7lJdyw7zCZh/mYQ0GakzSQ92N3Csqk3S
	 3SWb5Nu6LaEEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD2ADCCF2C3
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179218803373.32150.6359609622494514843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 851b935d2efe2249b73f8d1d3a1d012a406fe45bb7b5549280d7626934a5f0c6
Date: Fri, 16 Oct 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792188033
