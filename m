Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6615742E40E
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791834634; cv=none; b=WLqLgWekhgq2uK6TZpBvLoopyqmarmsMXxanH82t81gD8HIi0zO5qjM2Tr+SNZ/0Ie6sNl5Z/GLlpQsB6X4quAlMppoNY1QqGzUQyqFuANscvKiDg+rtrqgdgaK7Zp8pJ32D7ADinXFCXEZFg3oD8khkXzJs3gdghVbrNQFYsG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791834634; c=relaxed/simple;
	bh=oyjjG3P9if4MLb+6p8Xqh6Stal4l3ruocCkGhHdoT1A=;
	h=To:Subject:From:Message-Id:Date; b=UYCW2C+eourNiwlwSomCnbIaDgwtpBI5ULAYoPXYESGbtfPXWHg0hJ7lm38RHggFpBIso9rSpwH/dGYb8MGMwm1q9S4dCL/iJKbZuaRfRCf4Gqdk1Rn5V27dl+BtY04UrgTNJ7SeKWyCosVpsXgOnD+d7o1xe/ufeQfLaADOgIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SYpKxu65; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SYpKxu65"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5BECC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791834633;
	bh=oyjjG3P9if4MLb+6p8Xqh6Stal4l3ruocCkGhHdoT1A=;
	h=To:Subject:From:Date:From;
	b=SYpKxu65P2ZCK/9x+sXimWln95Xw6ZYQbF0dm57y0qovDbtJZ2nJ0n5iavvIeHP6Y
	 Ky4ZJasv1qtnupfzdf4Rby9SLBqso01bf6a3PcUtOUqoZj76aVPBZXN/HpKTX9r81p
	 +geQF7RbVIJ+v9kUuFQ8U3MAuby5dM1z0GmsHPc8hLyGzu+OhKEP7+ewUOuQs6bezY
	 0hx6KBnORK3xkXMGSe3DBLABj0mIy6WNpSAwMKMw6JfI3+VFS5LvZxrWf+CcddTg5l
	 LMHWpLoLxJJu1zZYm2iijjlSiFmu1m8XACQqtJgzwQfGis8YrusNnV0NVs0PjIQlWU
	 OtOu4zbX5LZxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B21C5CA9EDE
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179183463369.5843.4424790394221068540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f01709a04028284c84b1d4ba53a825476ed8ab9e50c88c6796b44f8d1deab9d1
Date: Mon, 12 Oct 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791834633
