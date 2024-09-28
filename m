Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1449AC8DF
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727530554; cv=none; b=jA8hzGAEraii825/pD6lzAIGSEqB1xq/cQeNK71cRNDlpPtio6bc6F+5ElgAe45I6asnl14+amYV8gfKc/R3VG0sPFdxS08rpKztcGX/BQV23nKl9lfMHL40FZ/Us/tz1wk4Du7vRol1dni0XJ/6XOqQhcNT3qp8sZwQou3xUHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727530554; c=relaxed/simple;
	bh=Jc61ww2aCjRuKW7rfr1Pg0S7iB3ozfMEWrDr0gjsTUY=;
	h=To:Subject:From:Message-Id:Date; b=BenRhPcFsNwHYYyzVVml1wI0IAdtIIQmN3w1DniRfrklkaYYsPWBIwsOW+cloQ2c3/vN/DizuJBa+BqNair1Yy5XRnmnMovJ82odH0MCNTVAIyQdGjGytC7+R3Jq60ZTk65rn9FkQsYadXWSWOydJe32m+kMcca/kg+VDrMs/Ik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tEZjwda7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tEZjwda7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A625DC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727530553;
	bh=Jc61ww2aCjRuKW7rfr1Pg0S7iB3ozfMEWrDr0gjsTUY=;
	h=To:Subject:From:Date:From;
	b=tEZjwda7rfSG6enAw51+kwTNOIKB1uZNCxA6lEbF+FLRXnxZssxYBs0IQqMK3tHul
	 XIdlfCizNOvNWXSDKi+zBncWz4Yz9aQwEkvS7s0eG8PI23DkhKAWiRj189yQ1BKvSk
	 iZvmEvYRscwn56cmfkK32U9DrjGGV4mo/c+Lic1o00g4uHBCtD00Zp7AKqN8YGDcUy
	 zEhfvWOaXwQpOeV2u4REtSczgW1tsd9nz3XKznVNocpwTPJdLItp940889f/au7XEE
	 Yo+mEl8vRhlTMGJ6R3SBDwm8FgimYCXIC82rYYeD1r9FRF9k54Eg/IKLUL2fo3vbpK
	 ku58XhsfRu+ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936C1CF6493
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172753055359.18450.2553003530832477827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b6c9808679ff04ef3171d93ff15e90aee9c5ffe8a54f66d6493192fd063ee50
Date: Sat, 28 Sep 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727530553
