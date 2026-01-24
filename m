Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD121373
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 02:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769222634; cv=none; b=K2+HsHqcOPn68xcXrLPzC2brihsdjU6taGtx9DlccXEuGgrj5EsAWt7pFHRrFjrB6oEH7ELscdSYfZphQ8R6rMzF+bjvD4o0KPznozzgM6kbuUQvHq9/jFvYf1O/SlhPN41gg7d9TnFu6vYX+5r6yFy3udiq2jvzuuuJp6GCp/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769222634; c=relaxed/simple;
	bh=E1Xo55lZUPsYTrRfVlAr26cI9ZavYGu9/f4OI6dg7ew=;
	h=To:Subject:From:Message-Id:Date; b=Pg2r8oiecvmS/m2nNmLpzD+Lzxil7+bqeNTMeKYEO/vEwmxvvzihR1E996x1TkvTiQZ6ln3m2yx85BDXeyvpphifZenhfaEQ14PSCbza/WSJQ8BnQ5WDs79MmDHSdKOvqcWf6y4VRyfSzp23B0YuIGi7AcCmnFeQ3dGdiLGG0nM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C7U5FOnm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C7U5FOnm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD920C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 02:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769222633;
	bh=E1Xo55lZUPsYTrRfVlAr26cI9ZavYGu9/f4OI6dg7ew=;
	h=To:Subject:From:Date:From;
	b=C7U5FOnm9yhBnw6Ud9yfz8ZZTP8zR4tgqEnItZWjfRk74CzR0PPbyhjYS7mNbEqKT
	 tOWCdA08ChjKtJljo/HyoJvOTNRtEb7uBi6jbKZdEU34aZfvtC+3gk4CFQHfjCujDM
	 9w0olf3LDkYla8LqSOvI6QyA2INl+JzGTZj2hOgWIXiBsycmPQTSSMK2pzCIs/8oBX
	 2PVw+AdFbvSSGEiKh05fvobk3IyEgIz/aLH69Scm/EqMsfJ9hU2h0AKWE/ISxywqj8
	 HC/IDjktx5qxcpsTGJEtdh6x4HudorTd2s4VJQl3sGtgb3QMg0eVICPw74tTF9elTQ
	 nGkPdboVDNgBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B51ED77898
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 02:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176922263359.20905.13735638494343801392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39b11bfcac9b4f6e7df0f56693ebb7dc27e4533e2500b3991f8235907132c4fe
Date: Sat, 24 Jan 2026 02:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769222633
