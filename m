Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89B2D1BC4E
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 07:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720855823; cv=none; b=nZkHxz18wvkLY2CNQMFmCGhT3ePmEnllSa5etnIW4ZVcjypanrB72aYDOIp/EpSEdpKt05CjiAzVZcwZ5Evb2JEuNdhB3IkEz1RbwkSpmKoHB74KE5vnFv8SgsfB0WlNoXY0yLcSQc6b/aVLXPkcm1V7H6ezyIfLWENfG6Vb8vM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720855823; c=relaxed/simple;
	bh=DIca9WSvbWyIse14ls96ljveAKWPjQ33KkykmEPaYnk=;
	h=To:Subject:From:Message-Id:Date; b=L2JN4KsZaTrZNKSB+WqcaR+xpwhCnWwR0gQjX5szQHVuOu57bokX1bcG6t5PyCLVzlj/OHqIy/fa1dB+u1IBDHEHidTlLpgXC/oTLYWgixJLBUWBWmLnqBLTsBeEtsezybHZDk+eq3xxqkJqw0b8/ZY3ualolANuCTLOaV4v3H0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=etRK4QfD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="etRK4QfD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9B80C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 07:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720855822;
	bh=DIca9WSvbWyIse14ls96ljveAKWPjQ33KkykmEPaYnk=;
	h=To:Subject:From:Date:From;
	b=etRK4QfDhDebseYP6KjXM3vpd7uRUaTPpGm+uuaqrBGcRs+XuXU+BEPXEVMr+tJri
	 4SA/fbBAfmXtImuHbvUJnufr/4cLwOe9pNJ9mJXf/Socw8xf//3CORWxgfxNwY5q8z
	 ZolbJbhIeYwcZs5CzxHTNBKJNBPTnzlN3oW83UGbWUwB9NrMTtLdMXOvSywcRv9ohQ
	 oE4LkXhXnUxpR6ZTp/J5PLeTt6uh8lYnG/DVi8dX59uAbpX8Po7IY8UZARfNzk7pd+
	 K6mr1HsJjWmPPRay6D0YdEiq1BPufbg7UuIqPCavRkfPZwf+c3VlMrPQ+WfMD+vL2Y
	 fReD4qzO2o6Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF519C3DA45
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 07:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172085582282.2397.7901738200644381749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39bd0cd53d2b2c33615e5a007ebcf8572c9e99cdc807ffcd9b832c27a7c64003
Date: Sat, 13 Jul 2024 07:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720855822
