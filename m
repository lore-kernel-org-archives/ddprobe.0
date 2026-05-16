Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FCDF3E7BB9
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778949034; cv=none; b=V7KD8C0zX78aHF5CwzBBfisKjjBcCfwiwKxbxPTMMIknHH99u509OCMEhNZiHWAIjyTdtV791NmI2z1FQvWXDgLvdYyRJC1FIzoCxV0xnFnAcoXgQnNeF8mRKWvPXoMrFnajOBxZ6zcu5O4kkgz/mwPiCq1Z7ebPnLpujw6AWLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778949034; c=relaxed/simple;
	bh=K2i4V4m9jzIZz4tFJkzFkahR0LYY6i3CH9U3pBUdCwI=;
	h=To:Subject:From:Message-Id:Date; b=frYSk8Q9uFIB5oEp2VJuUXsMmTZedTxf2HTYLYXhVNSdq+R/zqeIIcgpo7amg4eMHYok0z40vn/5Nz/E4lR0mAP4lfOLK34Zyao69kxZmqGl4BmXm4GEFnhmXrUq9prwNXK6ExjFEj74wFYFZpM69f23n/omCj1dR0VuzZzhnzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gShzDJ2L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gShzDJ2L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C483EC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778949033;
	bh=K2i4V4m9jzIZz4tFJkzFkahR0LYY6i3CH9U3pBUdCwI=;
	h=To:Subject:From:Date:From;
	b=gShzDJ2L4SoJ/tGLOyvN3soKskgAanjiQ3uAeT2nXV/SvlAQ88Eqg6Co5hA9UznLj
	 ArW5Kc50kU3YmzBJxFxBP9azrZqhZO2HVcGGHpOSteItlazAHdf9MlomesTvc4dPRE
	 XSPBvw4b34wOg98AA/gGYFPx5Q1jwaQPtAwRSPzLuE1yJ3vLkwgvQUNjX/rTTKEyvk
	 1ZlKewqjVqhX50QdIoJ9OjZFTaYXBmNCQxksvGZc2WhF5lZXoFM3WvapaZg/Qb3yL4
	 nrWogxyuIJcK3Rz8iYh/R9fG4BlBi8YNeV9SSmhezH3f3BxCPGrVlK/iteU0V/K4Gl
	 GCQl6lrkxYTEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1DDCD4F3C
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177894903369.30171.4852025285957686895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cae734ad2be0904e7ac40fb622792a42f53218f2202f3fb8d83e47a956718526
Date: Sat, 16 May 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778949033
