Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A82E46D2B5
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 13:40:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790775636; cv=none; b=ugYW+8eAkV3aDGvUl5vD6mYCDVluBSf3/XeO49RN3JD0XJG917VYyw138ZmHFFbw5n2+1sMfUFoyo7wTHkH0hOD9P2kYGsFI6ILYDkjvrOxUiYO6MC4UzSe6bT8QAtGItzhHs2AeItG8p6/aoAXvldSTkJq+vtK2nEdjspMYa3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790775636; c=relaxed/simple;
	bh=HW0/2ZU9LMC9bO7IGsUDwcZ/9HspHZPeHnZesMKVi04=;
	h=To:Subject:From:Message-Id:Date; b=NHFO+v0lk44xd5P2XYltK9x7chWMKaxkqmlt9neA3y35ceHzFGxBUDCB0Bwqge3w/GbLxmel611y4LSRh6EGDWIZe/zpFOrZiQKvwENzjfvb3wBvZNruVXg6l0KiUhujYmzWf02Ey9xdQXeTinsv1H3PIvLwhIgg88PeqDTipMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X2EFEBRl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X2EFEBRl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D14D6C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790775633;
	bh=HW0/2ZU9LMC9bO7IGsUDwcZ/9HspHZPeHnZesMKVi04=;
	h=To:Subject:From:Date:From;
	b=X2EFEBRlm2f4hZj/212LZvPffxLu2YV+ipBpJ/MA2mpwqL+yn26sdblTwZOPkP+5M
	 JGOAYsznOFb501VA/oHslclWc/pxwajCQNQS00P+dhKInwrXmgkc5hjSC/2jNptPYB
	 tLiFjX4y9nTkDwDOdvO9Kj3Wc1tCkGy8FlmgLrqrsZjL1C5C7Kzi0IfZsthmcpDlpY
	 qyJPXc8P/AM8RjMPtB2+tz/Ve8Tkns1dw28aH/uypT7HISLKbrT1zzo9R496FrlSF5
	 nQZ7fNFe4E4IOSkeJ+0yM9PQkVMjyGboX+dEehOy7iMHo9IoNVMwRGFnr9iKONeXl0
	 155U6jX28fCzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE97ECA5FC5
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179077563370.20705.2843985081905480123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38780e8b1a7a19c0e87e8410a718a9838e174a3ab4a2effe2d80064c3cfff460
Date: Wed, 30 Sep 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790775633
