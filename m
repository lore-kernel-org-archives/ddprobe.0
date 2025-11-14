Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 259EB2FA0F2
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763116194; cv=none; b=irCAKrJfGHirhv/q1LnKL8RVuOmGJtnSAsZ5ltFkk02+y2PU+Wh81UzTD/irPTQC9mj7O6v8IWivuqQaG3TErHOivXWqmjjgFRkM6BVfGAn+632onqfYZcnIJP3crwNhd5ZRhspxW2hb8Ic2vwTuBhHR28UmwI8wNEzQPuveswo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763116194; c=relaxed/simple;
	bh=xmVlJd7p/DsquPxDWTUlfppFZQ+8RrQZ6xr5XJwN654=;
	h=To:Subject:From:Message-Id:Date; b=n9B256JTLK8A/V0DVClH2Q9LWFybV60VZdB6hNpjUyYF7i+pOvJyK8JTtKMj6yrh433U6Gt2INO8fLUCXixyGIbnPluNdWWAL/47q52peHrUC0/xDZ6PlA0VW0liJEQGu5XOau4YCu4iSNnaL+7CL2Srf+2O9HTeVVT8OCU3Rd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rtBZujSG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rtBZujSG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF33C4AF09
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763116193;
	bh=xmVlJd7p/DsquPxDWTUlfppFZQ+8RrQZ6xr5XJwN654=;
	h=To:Subject:From:Date:From;
	b=rtBZujSGDvijOzt1zEwzNu+NDer+x+JM2fZsPubkdPOaHsvpAzDrI//nzXtRh89jn
	 sBth6mY0v+3yT9Lrxz9KgpgnhealGYI8yCt2Hrv6zDp1ZDfsiqql7ErDHsoHL0512/
	 1Dn5KH6UuDbMnpkG/C/7wy/pZKxS/jl5Y8WUUtwn8lsJmfID8z7FotgH1NeBrKw5Lt
	 Vnnre2bQOGXb2etk9e2xCvVmdxiBdX9Eq6wQpYhWcCzTBNL9OC+dPaybBNxwTQ593S
	 HKMMoMoPz4D2+xf/sIQL4Y4tmoGXGf7iXInl/pSNac0nZ9achP9N93hww8l0WoVSKM
	 7B6iuGt8uNvdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0CF8CE7AAA
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176311619365.6879.8509717413466034845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9de60a617f0626d1ab8e373e478e1ac583376e06f694edea65d01d51fffd7cbb
Date: Fri, 14 Nov 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763116193
