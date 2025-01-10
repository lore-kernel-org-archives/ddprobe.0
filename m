Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEF2920ADFF
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736510154; cv=none; b=gVTJ//SEjk6XbnRZbhfZu7HkoQhxaiNiXHI1gq3QTFAWOBekrzPnodXgVqo4ZuILFTQ28tJ8hvhYJVvFEPA3EL/ywY9XpQuEYlDyQ4rAetWi16BsSgiIE9ii+z44cH4663S/LLTWo1qod4YQwLgQuZLGIxMshAGu42FIojXzu2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736510154; c=relaxed/simple;
	bh=X5PdPhxL2XXvWD+88xzZmu6b51HoNlfamqxCiLPxIHU=;
	h=To:Subject:From:Message-Id:Date; b=GspZI5BmDu1rXC7PqdBiiCOwJsrTL+oZBjkb4XpwzIPP4egX0kfI1XRa4kD8JG/Tgv/617Qql5ROLd/j9r3Tt1ysVzH2SXx6TZbOSKLtoEj3Pbolo7aY1ldYIwiFSE8WmTOhBcaHhgJQOvw9vfowVWRnydiDT268uvmWFtDLUz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Czdrc3Ze; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Czdrc3Ze"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF51C4CEDF
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736510153;
	bh=X5PdPhxL2XXvWD+88xzZmu6b51HoNlfamqxCiLPxIHU=;
	h=To:Subject:From:Date:From;
	b=Czdrc3Ze5RP0kup+cqTgcWCHJIQ350nV+iCaO2r1Uf8eMdbO2Za3yRafTPdNsYeuo
	 kJZur3yWmdjY0wQok8YEbWhwxIk46U0FaZvzUUNX4n9gc/KWCLBZtWhbN460mcBgos
	 o+3jNmb0qjTraxY8UXC5cH/CdshogAv1mv2gPflr7hBwTYjF679VOcNeO/fviNyYDh
	 iWFRGYkhgIcU0Fr7VaItJfVyapD3KNhYtqB/OFBFwk8eTXL5qxkU19poQsAFXQNPQ8
	 vOMLpA5nNNHmIXc1kJMB5QrpbjC/FJhx+/iXXi1pAh6FsvfOgm9JCVM3pgHDZQqlT4
	 bNUoXr9lpSgZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92360E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173651015359.32464.15559133295070172344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38642464d8e1689e0e652d8a685dcec90b555a99b76a1aa0b0854eb1489a9ec4
Date: Fri, 10 Jan 2025 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736510153
