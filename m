Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FFF9284881
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 10:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774088694; cv=none; b=TO4I1GrUiqUxFSx12xC29N3DmFm5fdduMI6xy6vxQ0tqWlVSMo8Y8qwZrm3X1pJudn8sZAtGUAhGh1BLxx4BDgU+758Gai8LJ3ZDvGgeeH/weU4hj7xxbRNzcRForYX9XX00bUQjcRLuJTffvghK5RoYR9MXB2E/W3KzIjChfxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774088694; c=relaxed/simple;
	bh=XvnWulv5egxXP27oHR1/sjm/EdF7HNbYyGdStq2+sDI=;
	h=To:Subject:From:Message-Id:Date; b=GXSmVLhk80zX/5rl0mc/X3rTntVqXVkJnoZTvBHpZQYQUkQ+D3I5c0aN+TLdPFta2fyBRFcBBM6CoG4OQ9kuozAdt//g3+DAZ/DDZ/32mrRPQR+dxgKuhA6AUlxVq4qrO9Dv1SY5PiLnciDesxujv/1AuK6nkAIW711e7I2f3hw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FSZQhQ94; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FSZQhQ94"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33A0C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 10:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774088693;
	bh=XvnWulv5egxXP27oHR1/sjm/EdF7HNbYyGdStq2+sDI=;
	h=To:Subject:From:Date:From;
	b=FSZQhQ94Q5o/DpVoZXZu/eKkeYAfo4bBtN4fdryuSms5fgmk4hXsV2d6HRqHYvCWm
	 ayo4XDdt9JlvJZMCkESjCcwqB7GBIsRFt87kFbrgiMMHMuk26cJaS+NMLGpCHcIkrK
	 FYu4PPaHNf+58dJLd6YiGXKCSDpDn4c8dtf/FBmeN0ViNFBXUfbzP6pSh94KzcmPJm
	 J4a+RN9tafwkcl9qfUCsCLeXTQLa56UceF8W/K+4RK1ianB2AR7oK9audLwPPRwqk4
	 yVvwnjHbk6bY7n5liGVRYbqmnFZsmSj+8ZOjApz6YF6Ve3J7i9Tsh3wqJW4FQEUT5M
	 ta5v4FZamAC2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937C71094463
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 10:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177408869357.26931.14572790177461431780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d685eba799575eb4c8b50cdea27a40b6dbb256a701ea964ce9ecf479d58078e
Date: Sat, 21 Mar 2026 10:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774088693
