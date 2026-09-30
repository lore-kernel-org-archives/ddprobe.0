Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30FFA3E022B
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790796634; cv=none; b=VkNylCEmWW5j8DrDiE3sggkGe/TkDHpPUwTYYhrb5WusXxJF3ULUA3pDJu/7F4NEiYQ5N4T5hMIrJtygQfCV9Yi4NP7kVEfVZG0eKbXIZAIRQnwG8tGSsGh6eW5Uz3OY8XYZQ4XSOAkxhlC8NMarifuc2DXQZFCChWL5DPjHRbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790796634; c=relaxed/simple;
	bh=cC0BxoywY4e6vahIz4Mt+HtjazQFw3OVXH3Fkbon3iM=;
	h=To:Subject:From:Message-Id:Date; b=mpWIWuw765ZGxZfXksLSLJnw0NtAaMrM/BCoBQHcSiVrPrNTi9PRLc0q6nKCtvI07LZbpCvg88Nhl5btTSHqGhJA94knwZnDIWsneOLzOrbsjfOKcOSjSjpQO57wktw2g92VRyXL5bRRV0kGVtCF/+fzJVLjXyoZkZehiKzXoDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u+8QI/4/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u+8QI/4/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C85C4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790796633;
	bh=cC0BxoywY4e6vahIz4Mt+HtjazQFw3OVXH3Fkbon3iM=;
	h=To:Subject:From:Date:From;
	b=u+8QI/4/H28uH+6UbBYPhLnuw13oO9Z3X+cqyq3MV+0DDgp+AXOab7vxXUnwuP7W8
	 pIcgQvzwKI5yp/OXP35ZnbDJYoeWYOBN9CH8IwmVeEoTGmjITYOkdIiuaMNAwOXiW0
	 zF8k220cJ3kHjt9rJ4majdQN2ngIL+2e9jLHvZhDbWdfyLT7EQClKZtPmQXgE95SeQ
	 Hqzi3VuVPECYEWuqUX0I/NBxUP4E55FZu7OU/N3xKPQiRFPit97TywWo1ALdlKmEhd
	 Bu29EkeZEXuNJrINjVZHFQNqZRxiSxAbrD2hbXrW2EjQAppc8LmRATGw2jYRtQFCFj
	 RStwayYc0DrOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC131CA5FC5
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179079663369.10496.2863020874397596428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 211013da787c09d4e2f528230202cdf4dcfe8444a29b0f70d106f93690645a31
Date: Wed, 30 Sep 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790796633
