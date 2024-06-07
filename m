Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70057D2F0
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 02:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717728443; cv=none; b=fSbO2ynoUlt+wjoVysuugsSjXZkX/23TYFtBzHuKwyj7y5FuZxQzqGnXpNQmsMVcXHGQ3A61mUW5Byczfi9l5zwWiC+fGtA+mAsnYKvk5uhXV1MaDC+rR72jAR02SphbrjOWIrwmdxS2XrpC7JduMn0r3NmBQ9CN5s72PSmfDH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717728443; c=relaxed/simple;
	bh=2yx79YHYVC4vWG2sIz97prLJp27EzclkkOgc9KpkvUU=;
	h=To:Subject:From:Message-Id:Date; b=XjUYHeNIWWrkAtxzpoqHsRU4AE8YTiHCKhSXXI0cj6Yj6jl9HtJStrzsuXr7S+jAbfdB4o+sX9f9lOBJ5upVAxQE4nchYk4BWx/V7EVmRQvKxJVBAyFQSmNBId9lH32Q/e8DuIrC+Lvoz1uz6zXMXbxAkV0kLYQ3OZUxkOZgNXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W8q1tkmY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W8q1tkmY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8A69C2BD10
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 02:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717728442;
	bh=2yx79YHYVC4vWG2sIz97prLJp27EzclkkOgc9KpkvUU=;
	h=To:Subject:From:Date:From;
	b=W8q1tkmYz8ysl/cSfwCxhk57x7wNMXOY5BQScxTfgyX5Qg6rDwAUPxdyesSi1SvnM
	 suT8AX73xan3KbnvlVAdxV5TZ5wd6EqQA4/Ja9C3g1kxZa+NdJ+mOmGiGSdjLnBR2k
	 ou6CbTtLBu39ZEqGaKWL1BOXav5cg/1tq7BPn5/PZunuxji9QiDzxoE6T1CGmQ1t2V
	 dcVWKlF4pdKb9mUsOSfML9NTDp6v3AARBShUFjhCd5am2GwoUTnYVbvuKEeWoyJ00W
	 4VPvPNKe2wN2E/Gv++NN+SO5i8Riy7sFvps5ijAZw24zgPkE3q4XGBRk8dcaWzOZpW
	 3hA0WC+ZPQTiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D016DC27C5E
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 02:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171772844278.32502.15620156435167342696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec6eaf33dd670728f8c9a495dda96a8d435db8943515a22aae43f438ddd2fdf5
Date: Fri, 07 Jun 2024 02:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717728442
