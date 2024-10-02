Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE971197545
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727905553; cv=none; b=Og4OR6Qt3Vu2a/aQtOFhaIntZddMBs9pvHfss6HJ3GZ9gyyXfMTGzi8hXqtkw6nkLUWGY0l6+lwYAIx5c5xAybcSq4srxaRGvVWkAUftgybp/ZcGE5DymCD3ZqPxzxnBdWYjtilxoEITOKqyVPSPoL+hh4mK7d7cHvv0d416VaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727905553; c=relaxed/simple;
	bh=IXIiwTuYBXMPdCKf7NA7oxHzWAiPmVUFUkk2adHcS9I=;
	h=To:Subject:From:Message-Id:Date; b=JiRiFq68oYbRfu5OCsW3vc1NQxlgDW6hKDNHSxjHvYAD5DKXQJ2Yn0W3DgBMu8GU8RmQDh4imFfa86MxiucWHe6SPfYOSaQ16+cAbbqzxxVaYj6RnbFKZK9xKH7ct91wz13hB3UHjUWT6r7aCWWKTnHS2cAzrfI5XCjieWVO2mg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f7u7EC13; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f7u7EC13"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE517C4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727905553;
	bh=IXIiwTuYBXMPdCKf7NA7oxHzWAiPmVUFUkk2adHcS9I=;
	h=To:Subject:From:Date:From;
	b=f7u7EC131Iw4lPN60fIEkGLZs1eukqWxS6QzbZFE9rk8EXP/VZrpnABRM2MY8rmuV
	 Bi3O+gY2htTRTrST7p8PXxRVMkOZVv4SYGUSE6dshLeunfD00d430UX/eOOd8HYwmP
	 UMkaAbquGqvwbmZYUzDA5ZzFMjgX8uJcrcQvZHpXP0gCQucdv0GEy6+BSK+s8RU4ax
	 fINCzrKPQ9Wg0Sj9DFbV0NuDBRO4jpnQfIwxXOaXqt/1oXpWixTJl5yrhJ6bH4fIqp
	 rmpxngT1zQXGRQ8+j8nhcYHflVuGglYxc0mlfJZO1U3ykifNI5JaLwl9MdqIP8rOR2
	 Xe6mh7AHjwAKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CB6ACF8540
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172790555360.3912.7234691243070862596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7583368d38c29f64beb86a9fe03a13083e57e272d8bb7ac83ca2e414014c9027
Date: Wed, 02 Oct 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727905553
