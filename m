Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38BC1279DDE
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749808794; cv=none; b=ielTg0sQljE/E//0CLIdoXPIRNcSSx5LyIHIMLVvVhMprFdE43qr4zBBeM/b1f8Bu+gehocVRcK5F7xrwQrA7bxbl7omJ+USjjE7AFlVdnm8hqFCKzmxAvs7yyoVrCPi32KNahDua+2j2frrvJk/YP782st/ccxwHPh0ixYIvAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749808794; c=relaxed/simple;
	bh=j/Kw7ImJkgW9Sullnn7Wk3Dt1kokmKv0kWM+c7inL+s=;
	h=To:Subject:From:Message-Id:Date; b=fm9Y/JiLpUBOa18OfjvvsKc4Dyer+GBZT4mNTqsRfeOOUd3zVPVVM2LMkaLh6yJyLhPr/wP/8fdTy45aJ7XSYU7SRA7xDAuJcmuNCo7Sfl+gRWTQAC7zFkH41/sq0qNNkXmQPud+fMULpM7z8uio+gZjhtvyXHL15aKkzmDNiQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O2VB6kAA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O2VB6kAA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01DBC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749808793;
	bh=j/Kw7ImJkgW9Sullnn7Wk3Dt1kokmKv0kWM+c7inL+s=;
	h=To:Subject:From:Date:From;
	b=O2VB6kAA8VJtlauqMONDtyIxr6ZVFVwetRABQqIdI/MPiHK6TfSU6BKZNG8+858Pq
	 vilGS303p8pSKO3a1nf8DNVaJBxaUrlebW7el6e9X5p8KqBjiABIHGgl53agv+4cTL
	 8hP2rpcml4knsv0myuLd4ElRFgJLRdtwQmOcfqdQ9oorSQbkleUuUbppJwFwexy00o
	 EwgQ82A5xf+5JFHC22ygYmNlAL+nVmtvZMAyLpgdHvt1z2C1btGlNtQPbPEt7uGYwt
	 KMacUGqu3FHcxu8bBRWcRsuDbC5FGR0iBUfZj4OpdQxo1WutPrz82GAJ/h6OUpE8ad
	 qa0aG7Oc4fP3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0BEC61DB2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174980879357.16521.8819348901667338396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9b2f2e654f3b547de01aacf1d906cfc11579557c352c97899c6216295eec779
Date: Fri, 13 Jun 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749808793
