Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC8D19DF61
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733888754; cv=none; b=t/x/l+E3LnGYwELVFS/8D7wLnplZSeHrMTpTgro13Jl7BDSvh8uriqQOHkCZFCT+QyzPWN32uQRlwWawilT9yh6Aqn2a5tdpmNsgfDFcbIjjPxRUvDNtz8YtKRWOWApiJhdqM1YyjZiVUKwIoLJdPbRzQOZUy30oY9Nvhxrb3ec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733888754; c=relaxed/simple;
	bh=wEINtgNxOAkpT6KAaeR8nnZyIfYMpgfj0l8+4K3HF5Y=;
	h=To:Subject:From:Message-Id:Date; b=iHmznwo3j0xP49K+ppfi8n2t89cTy7OJeilPEb6MPK6BKg+AHVZcJaXtZKHXuzML2l1kkXuQmwtaAfDgy5BwJpT/6Cwv3jWL02SyWgcE6T789Y46JnEKrwS/gI4lOIKBR9ce10CUX4D6HYdJH02G7Z+bSNkE6KuGsbeCYaLF7b0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L3ynl949; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L3ynl949"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5020C4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733888753;
	bh=wEINtgNxOAkpT6KAaeR8nnZyIfYMpgfj0l8+4K3HF5Y=;
	h=To:Subject:From:Date:From;
	b=L3ynl949KCbGbHxkULmjihbmCkgHu4dry4mWtMKbiISCal1GB0cQHpfFAcUO+cXUE
	 k3numo6Kdttv6q1kYaKJ0JL+bXQZJ4/uJ4Z0i4YF2iYIseL5HizKRQlQ7J4aHW3z57
	 cyuguCF1m1PVv36NrPKSj6Wdy9IbQNqxWpHgdlIimECGYQJueykMmNgznHrXizZDc0
	 OL2//N39vhqxArFUDGYRfMAT9Jb+YcQjKOuatUgqNdOx4ry7tMXXPHSMqF3HCydW68
	 lZUdJicw7pEHvgM1SLQROhgx+zWWXIHf86QSfqSJHYKhaFiwp8YknJqoxp0KrztMKA
	 B2pw3VWAReQwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B17E77180
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173388875359.25475.16147071072097973175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97486cf19dd499c2a09110bd0dee15ed85104110ca190c8d93993a95ac904ac3
Date: Wed, 11 Dec 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733888753
