Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B88E282F30
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 12:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780835074; cv=none; b=nEvMn1WRKk/jncJGgjSkUFr05apygs2ure1jVLd8lOYcqVJhw2N7IwC7nqY/2QQ4UglDAywBGoZyF2I7uMuE1t0GPkrBvmzAGrHKrkNrNzhrXSpnrMVmCTi/Ky9y1Z4Y23Xx1Oo8tVfDwbJaxTrWDQ+fMpPsfF6Tlvb00pHzink=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780835074; c=relaxed/simple;
	bh=aOkeuXjINUb4FjBYIwUnTbrZZ7/OBnxaeUNoTUMnMc0=;
	h=To:Subject:From:Message-Id:Date; b=ewWQbYT/J08kzC3Qv/0CLP77j/cs6qqEbePduk73KJcZTuhp7S0qf6BvCr6vhhgrhhFNCzpGQz2wGih9IJQ0hSKzWCdk9wYGYE0Gpr5ebDj4MhJAJbFU3hN/DduLWPEzRvklC5Ryvp7tK0hHZd3eOghnSJGck5W4WbXYFO9j6oo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NSrUk6Fu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NSrUk6Fu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C21CEC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 12:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780835073;
	bh=aOkeuXjINUb4FjBYIwUnTbrZZ7/OBnxaeUNoTUMnMc0=;
	h=To:Subject:From:Date:From;
	b=NSrUk6FuV5pP13DfPWnotgPCYBpoA1IP+RIDEK+VKjJVaerawiSwf8rHsx/Uflt9c
	 FZ73QT35I6n2/8TiNehdG9uOoWiwAYhZ8cGO7tGYnTiPSpesi6BwPDOMRK2TfAJbWu
	 obqrexPdwNOc/G0cKy3VuQvKGGmpMz+Wf46SbSGxHFcEiUfMIhYnncHj0sDybsaBr/
	 OTHspHBM5xdKE63GXTZSTHEa/E3RD6OTjo8g8D+pXVeEaeU+Q6ZkkZF2jImnc53rfH
	 +8X8JO0YqkLj+aor9l2o6dz21YjdKHIfVAb87sIlryzKXW0MjZXoUghQnnDo6+VVOy
	 sRbFlENywMLLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A900ECD8C88
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 12:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178083507368.10792.1995549675559721515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 035820f22d19ad26bcfb19c5a2ab180bcb9c637b1672842b1fa6c3ada923a1e3
Date: Sun, 07 Jun 2026 12:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780835073
