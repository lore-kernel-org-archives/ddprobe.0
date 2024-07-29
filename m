Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08D8F84FDF
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722246354; cv=none; b=aKm0CGZM1np/6cXWfoHGVJsDpHMeeL3aJcEFXsgD4jv0bqCXdcXwn4htk+6pO0gw1wUbwLUusPrjj2BceuGLWPf5xqB/i2zO3QEjaQyMnQvPSR10YbDEdnDHWvm+UK8rz7YEIunczYPfSf9EKQIStmoELdz18S/RDD9XyFcZHOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722246354; c=relaxed/simple;
	bh=WulbfqnD38+1F0ITJDNMMaNlkQoozGFTN0yDIBtdZU0=;
	h=To:Subject:From:Message-Id:Date; b=CMFA2gYPVBPbgqP5tGU7yc1nhdTQmLmzPsupzB+4ohDHHvJmj6lOYq/xR49uUAqNJbR7rhfWXYMxaLuJ/hk/+WfXZ9+mE0AbYLpuBd1R/LXLCuHxL4T4S7fdrJN8hGKa/+Wn+T36XjQsJgBROP7FNBR5e63Yst0R6vh56Eshyv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=chnhZfZR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="chnhZfZR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A98E8C4AF0A
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722246353;
	bh=WulbfqnD38+1F0ITJDNMMaNlkQoozGFTN0yDIBtdZU0=;
	h=To:Subject:From:Date:From;
	b=chnhZfZRocTv2gX3e7QG7Vd4K/s+uxtE/wZJUcjcmuCZP/cGicnRZeC8at5nFRRBf
	 SWD5PJTpg+S29xUxg5kpoTZI9Bt4NxLG7aGi7Kx9UnNI8m96pr5rNmBbld3mEQPrR0
	 SOj8UVSZs5a0REK5Zro1BbfsZhfO1ZSBLVV7AaRjGaSS/vIyl6DND3L+aGxl3Yd5Gd
	 yTAyMDaarrgWl0Az7lWtY1/NbeoWO5ql8I+UO1dzk2x/UCdgQoLwZf43TLO2Tj/teU
	 bkwwPLhM4lhrpNQz++/DBYzK8mdZA3n/BvIiiFMR7GgHXby5HFqWBWWZIt3j6RjJLQ
	 IuGtdIVi4cE5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98251C3DA7F
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172224635360.25460.12866381718185921862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f82c9a2a44e9d98acc6cc5069fa338c4c2b358135560c6fee3eff349f1775369
Date: Mon, 29 Jul 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722246353
