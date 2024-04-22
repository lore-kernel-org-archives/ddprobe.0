Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 527C7ED9
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 01:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713748223; cv=none; b=JtxY+/5PTOqcggT5Zd26iI541zihfjoO52C3sxnsqy4M5jSAea5k3GJMRb3JNvZ1P6CQsy5gozvKCvkMOz3eqBofw2WgO9tLf+zGn23FuHxl8002qUeX5NFs7XzYory8yhGfvWGfdSEDvzislRS1fBs2P1nJGbRnQS4balJmM4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713748223; c=relaxed/simple;
	bh=NTtJeSmdwzHyrTTSIcpvKEYxBh3GTfQ/au5jmFI01Bc=;
	h=To:Subject:From:Message-Id:Date; b=O6jzpe8lplMuQt1ddoPLEWD4i28NcmX38a4BaHnczmgN5N9Mum7gjRVhEwsbRymX0CHabvhUES9i6ij5+eQZDJmg2+9sKUS+cwD9z5Tdq1c+bjYxJZpAHzcf9njwBK+KDERCqEzFC50hVHFaPCHofmszWCeC7TbZHsYO8M9o/So=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D8yOzYsq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D8yOzYsq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF45FC113CE
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 01:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713748223;
	bh=NTtJeSmdwzHyrTTSIcpvKEYxBh3GTfQ/au5jmFI01Bc=;
	h=To:Subject:From:Date:From;
	b=D8yOzYsqxJLxw+LLIKavIP9ej0JdJrVkFp44fYhZuciCD2MW/sSaE4wTut5d6Vajg
	 6OM9EBOYVd5Ec2Bvf8uvqhKpCicdp84oi+TFVzIqtmA+eLcksxV6ncNEmuHT8QSPXd
	 jVUIasq84pJyFL+4uVoJ9N2HBmuKCE4RMHxvpenRa9TcXF6Qgv1z8VtgvJ7Zpf9m9p
	 FzZInyAE59MH3HV+Bsb0VwM+Wp2BCukKDKbkdfYWej9pPvvEG3k+nqk7+Tl/u0gMUZ
	 yrHC37czX1Gp5nL/6cSuC1Tr9yk1pUgj0Ik1jkzFm+8UELSokr4Y8X8TRlRI8ssSN7
	 n1BPO0TCybtng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D68F3C4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 01:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171374822283.4833.4256905890870656244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4731c5b16948bcb60d5477049a80ff570b59290822e45705f22aba45fe9f8dc1
Date: Mon, 22 Apr 2024 01:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713748222
