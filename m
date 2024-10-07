Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F0E11DCB2B
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728327354; cv=none; b=XBNr7iuylxDjlne3iIlULe86gEOpOhGbuvt16woY+zYn0QwBEi3IaEtFmrw0oqjF0b004HapTAOOkkVWtddwPQ6ykK6q5ZWbxcv7m1eQpS736z+V6T5vwlAlNVAIHwGLJu5b07kgzp34ppMZhQVR7Ap97fGdy0aMRP6828ql4V4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728327354; c=relaxed/simple;
	bh=4vBCCzE05IEcRRJNrwj4g8L6S26B5Q+7qXJNE9Zr2qw=;
	h=To:Subject:From:Message-Id:Date; b=rJS32o6puyJa1IF1w9cM4wA4rfDlNGVkeac9UWRWV60gltH4qsSUCShWi6sRKRrMzG9hzJZdK47sy00H3cw6mPWKTJMuwDsRw59m7sddBn1GfihT6LX3Hy4ADmeXnQHF+HGm/iQZ0BU/RlQgTGDj6DQBrKcoahwPy6izXvEQ3zQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L6i60Xqh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L6i60Xqh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B64C4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728327353;
	bh=4vBCCzE05IEcRRJNrwj4g8L6S26B5Q+7qXJNE9Zr2qw=;
	h=To:Subject:From:Date:From;
	b=L6i60XqhbFdJPv3G1LEWNRQeJMQzf7n0a/IZ9Qb3WRwmyAwqGauAkmdt6ZOnXf48K
	 ef2dK3DzWdvHc/SB2L2PbIEr8RgHu5AKZGNDDJSPjQLpMXc2lYqFvT8cIIxYLJ5FKz
	 Z91E7tUp5qiK3bKJBHvjPDiJCMQmYzOYlomgVMKGD69YDnTr3WwJvbf4y/AS8wVet4
	 kINd5ItFal1ymI6+kh4kA85L6rXBvR4tfWgXxjOyPeUMQh0kxRLLPoyfGivDf6+yQS
	 vMpEFA2dzBfAysJo7YQCbwEeZkUjrZmEnwoNe49tQC7B7gyXrEFXBXKHIem30PyNA9
	 TuGJWTkWQgQdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948FDCFB452
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172832735359.10682.4288167389148100687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eeac239006ef39c4b31e3b25c5fa03aeac26f2656c152f58df4ce210c5c49a75
Date: Mon, 07 Oct 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728327353
