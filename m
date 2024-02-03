Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15EC5F9D7
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 04:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706933297; cv=none; b=KU4jsngQN3G0FX+b7iWc+OAmST8aztSfx+0vCKC8OS2rx3zJY7O8CzP8TTPgmyDiUjgjp/RZvwHkIpNgI/2UEQTVHte6xGxUXIoVUE8YpVzMZhsP+DBRDJH2JsR6R4ukLunwEmW+K/wfRrg52igbFtpJXvaCVQYuap6YGtGH4hA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706933297; c=relaxed/simple;
	bh=UYDNcpcsdBjs6ofs+uiiB2Km1Kk1I6blSM7tCj6i0V0=;
	h=To:Subject:From:Message-Id:Date; b=b6FwNaT9CqAqwsiJhI1wT5pvhR39pWVmIE90y8qc9slwxldpUeZS9/85jbK0UDGefpzUH/aQ7V3az86mMs9Ja3eZIF0GwnC6BJBfZqOczqSAFbTdlppRwVGI+7mL4AxW2wMITKeIZ5uZJ2lQwOEKqBKJUywiPKqInZ8wyJJln7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pIgMSEEd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pIgMSEEd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84691C433C7
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 04:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706933296;
	bh=UYDNcpcsdBjs6ofs+uiiB2Km1Kk1I6blSM7tCj6i0V0=;
	h=To:Subject:From:Date:From;
	b=pIgMSEEd+UKLin9/ziN95TgVcuwUMGKUaDGUAGVNpiLmJOHPVGKipdttlAd8IOU4I
	 DxEtmACtXIcSMsk9pr4ux+XUnK8//cLkXdKrc8StgLmPOO8ZcLFIhOJlvkns6R2Y1v
	 b029N88q5WJymcDucVdV9GGTdEiFKAZfPPv6F6jV0CljvI1zxsZOjrpZIbvZoP/CaM
	 7kFXTsw08U42XEW6295+OIaqqfT7pxG5ihdsBF1LOeG9rNhjt444KMdAUhSCuppmB2
	 rbB8zyj/GvO/TrIScgjOgdBCkRXazgQLFjAlkX0EsZz6CpHMInH9Pqta0t/lh+y4KK
	 SjSi+Lrsr9izA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61837C4828D
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 04:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170693329637.29148.7745850092979040676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ceda42f2595d8799c48ff24736418ee6f9a16337c8181c5022c684ee6c7961ba
Date: Sat, 03 Feb 2024 04:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706933296
