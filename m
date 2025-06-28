Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA093595B
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751141994; cv=none; b=Xlh9MMNFDTCWv14vXdMerqPwnv11s1hhvjG4r7IS2Fr3aTHYe7jU+1/V+ap4yAWJBwVn2ia+H+Sa54arvk8wOVfyiVONcQuTEg+AGxcvWhZtHcAE8BqBZlsTnqItLA9SJuu8duelSmScKv9W6i1gDrL0PuWyMV8wa77Tu6ddo/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751141994; c=relaxed/simple;
	bh=pAss4zWp5JqetZ4hvmzSlTYjSKOWAAg7wQWzTQJEdgk=;
	h=To:Subject:From:Message-Id:Date; b=WqEZjMo7j96vYLVSr8WBV62Bu49P65T1IVOj9duK6Xs0U/8IOdGvneJNjszeeEKA5V8kxi5JHtQc7UF0Z+kjq8OTm8lfUJgMa2HaMH4l/8OzEEx8uoHeMHr1CAlfYeIz6kehGDHEJFNEKXdSGKlgNrKW4uG9b3TNdw4uDFlbNYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jVWg0ZTi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jVWg0ZTi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A534DC4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751141993;
	bh=pAss4zWp5JqetZ4hvmzSlTYjSKOWAAg7wQWzTQJEdgk=;
	h=To:Subject:From:Date:From;
	b=jVWg0ZTi4v6ftKd0AXA7CKOBsA7umT9Emev09wvyKd1GhFPJkfa/yz2xuyWupsNzg
	 k39V+gZQJjXDJC0Jlm4Z7I218sn+cB/pqtMJOXgnsSNL0qMi/8nqGK7rG+ZZz1FxxD
	 Wi6apCl4CinQ7ebIVjdN/5W2COCJ7nHDMOiBPgmkDlO415ZYGct/9tKtElXRW9AsKQ
	 qDnOkyfSMqjXzigtwlIiKCTdUSSRXV02yeDdohwBIlALMjMCMJ1XKzjcgx43CIOYT3
	 YsEuaxUF+VD6M9KkQ7O4s3FBJh+pTnH8urcMq8wZm+IHIbk7cPNSN244Uy1WFJMC8B
	 8bIGwEw1h5y7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C6FC7EE39
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175114199357.18723.10398949002800390708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f8f319ac8666837bbd53b140d801c39f818202870bbc676d75fca2ed10c4075
Date: Sat, 28 Jun 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751141993
