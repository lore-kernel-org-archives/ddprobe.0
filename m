Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE05BDF59
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762651194; cv=none; b=XBGSVuaNPk2NETLckTCkITdh0Rk6aAjBmRw+P/K5bSs9QIMZv6rVaA0JXMwjNjFN8Fv+VNw3M3F1VhYqEFYb7BFbOaAzdkav4xwxWQN3L3cwPL9QTwPGtk0enFohpK1+v14im7cAzInsucCkhnTNlHpSL8C5nrK64e6eLoSTqRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762651194; c=relaxed/simple;
	bh=+E8fShyOGpCW16NiTcshLCJOme5TRWrth2FUVkfKdMA=;
	h=To:Subject:From:Message-Id:Date; b=M7mhgi704zCauTkZQLxnIiaZ/pDjXiXp1h1FCECknA18oSgv80z+nnualI0aHw+opipDBm4cLbMovjU8uBJHBbfqbTZ9O/H5ZzlTSN5mZk4jKHc8PXWCN6TJvy2xhxPBNG8T7lkviLHkbbvkZrenOtL8pOht6TUmaF5VMTiKKqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bYSnZ3yL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bYSnZ3yL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7626C113D0
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762651193;
	bh=+E8fShyOGpCW16NiTcshLCJOme5TRWrth2FUVkfKdMA=;
	h=To:Subject:From:Date:From;
	b=bYSnZ3yL71nuUwewwh4RnRbs0LSnQ2gKM9+8kjJhm5Q/oMAK0zp5yzpbiqz4ClGmD
	 m7SyMvO1mfIB2LkO3T/BMmySut4F4f8jvGEy1NzMW+diTRCJdAjJFEEiV81nTA1Zsf
	 hIh6p5stbgOu527HZf1CGMMeoUBX4vIQTWCg4XdLQ7CBkwXVXJ588PagHLZDeW7n7k
	 0Xn/zFc8TfpQ+AzuR++uN5ugJh3uKPYNnuvkM5Oyu+g2EG8CnjiqFRyS/MEP536AXR
	 18KutE4GAQk9Mh5IveNbZ55I6ieyyKyJ+eMztQbWp0UBjHwHNDs6t1n8Ot8Yqy0KKo
	 4zHIohSPFtQ8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99942CCFA13
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176265119358.10137.18274724222342994623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22892ff92663d687fc78030bb28f8ba52a20e50663ef73cfb783c1b7ee338ce0
Date: Sun, 09 Nov 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762651193
