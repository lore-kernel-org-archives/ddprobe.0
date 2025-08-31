Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2246A23816D
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756670994; cv=none; b=lzAbXpn8todgjtfR+Cji7ZZxg7aPiM1DThhA6XgJM0d8/f9Nj3cINARdawDe6Jea9IOCXz1+M5bQ1aSgGU2BZYTxsBsOpP2sEyQzBTNIPt+7TYj0ghr8shsGUaub/uL2sQln/Uemn/V7h/pUgly+v98cmAnP5r1hsrt005xavWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756670994; c=relaxed/simple;
	bh=M6Bshb8UJ2ICxm9CmvC8ttN0AGse7HMqDxnvSl54i9o=;
	h=To:Subject:From:Message-Id:Date; b=TLlQmxl5felRg++/T3yTbuZqOEsVaRvJMAX+6IsJ+kf5uPoE3OPueuddw/yZ9xmnmMvuhkPYTRYtHShKdR/KPsOl0j9Lf0gBUMcB5XXCyFbMTR0cRScfALeFYY3KL+/tp391S189iCb460ZT+LtI2MvRz22WxTNTu2SIoi+SzuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dViOUe6q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dViOUe6q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9ED5C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756670993;
	bh=M6Bshb8UJ2ICxm9CmvC8ttN0AGse7HMqDxnvSl54i9o=;
	h=To:Subject:From:Date:From;
	b=dViOUe6qGqXmBeqTTZDbJVbeeXCLMUqcUCi99+lZyJHc6MY9oikt6btC4+iEwaHXZ
	 TWKeZ9g0vnQEWAlAM0u3n0Nyd9kXk8mBBjBhKHXEbjHjTb5nh9HLl/o5gT7xpJD6mT
	 eN0LKFc9E9gEgFHT8cxsaZ++I9oE69Ujt8fbr/6w1MNJM/XDYCVdQFQlU7L1Emsz7R
	 EQjf/Di/wNUfNc6RopyYyB7oed5pT9RI24iRcmZ57mdi0N93/ZicyQlBF3Q/cQJF9r
	 muJTn5gUcTKwJDKZjo8Fo0pdymW3Kvi7EAgtRyxq2aSNpVxV9DgFgMimSM7lORAygH
	 jRAYfVlkkpOIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955BFCA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175667099358.15920.3566952812222338546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cf218e7e0e678d7d841a89b3fbb4731be04db7512ab15e2acbb42e959baf8be
Date: Sun, 31 Aug 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756670993
