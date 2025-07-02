Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 404A0274FEF
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751460594; cv=none; b=bsJ7hk46xahbjgNq8R6fiebETm6V272Xq2zRDUyQJXW1HJbm/ZAvUjAY44CYPNb9ZXIFu+IVPFRm6Enq7Fw9CSJNYdxyz01CXSfZ8m7zw8aaT8XRwWfGtBeJ3zcBueiRn560sCXYuAdCqBDRCl6qWQzh4f4pMS2fkcg8bIyVvGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751460594; c=relaxed/simple;
	bh=/KB3Fsdqrt2U6lAv0/KvLS0vQMhw1btmp/tnrotcjh8=;
	h=To:Subject:From:Message-Id:Date; b=UHPGZXmIpXCSIsbf1Y7vbEuHlUsREl+gKHRzDMr+x7Cw/vg7J1GnX97IF9RwAiw2K8uoLuDidBHJOkR+NdvWSDda0LUlo45a0Hz/O/g+3vSTvPvMXnlcPDDadMccGA5s/TJq//18UscUY/8kC2lmSaFDpx16XDR67mcWpd+TpbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BasVJtCK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BasVJtCK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2507C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751460593;
	bh=/KB3Fsdqrt2U6lAv0/KvLS0vQMhw1btmp/tnrotcjh8=;
	h=To:Subject:From:Date:From;
	b=BasVJtCKLfm8DkijCbB6dQdSHg8CaJxGiRFK7QOU0ULXR4kf4JGoOTF37S29w8UJu
	 mY2kdGQtC31tllyimalJImvMxcXkuaRVqFuyxQZ8iZRyk4lsKr//6niO9Nl1G9ghnX
	 bZ57ir0p70jAiWCFRKQ7J6ijYLE2sCVcyZm3CAfiN7/wO6uwv5S7iRs2DCJ5WWIi05
	 VyaqUYoQyaj8ngK3MzovYLW7TZuqJBiJtk+c9P6KxCtyxh1ovLmheER58cHXReIn8y
	 AthUxvA7q/3tcH/YNW91TyYWyJaC77Rrk+2mxN9U2J0EF8qXx/R7YHiOIOAIYHF+vP
	 t/Nc+oqDg1gWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC36C8303F
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175146059357.31233.17892588614416605553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa2b8a9d982eaa1a75d69f65fd1401a63e151db9007959b6099bfaa2540ed54b
Date: Wed, 02 Jul 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751460593
