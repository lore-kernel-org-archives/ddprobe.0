Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C3B21255A
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 18:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766861034; cv=none; b=rRh0X69h0/q5Unjv8AiEbKhCsO3sWusneGsn39dUCtquNo3dtC/sCyH8kIBJEUVxgNeIsJlwO+HfwJlc6H7lygJvPrjvd89B43zklKqA3nOM6sNxMBtjpLqbzZtT4nRNAarliCiohGsMwbGuCNFzvJeXOrYHxO+5rHNI3RJqdSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766861034; c=relaxed/simple;
	bh=PvwqHA2mTkq7kQsXIC0TSvFTHZigRmabNlJg5efGMxM=;
	h=To:Subject:From:Message-Id:Date; b=Em08GrGMKx1z6lovfNo7vqJBvLBPlVfA0+0n6Run9GxvjOdMta5HUdFwfI7uIs/ZFfwyWPMLG/X1fpXr5f9IYVflfDKboZpA/Tnf9yZgnmlVPGeYkAMU2PVO9DYdhvaq6FRXb/WqZWAHsBHXun6FqW7B6ZW3ozM5F0EBupAbBY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aFZUmd/n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aFZUmd/n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C79C1C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766861033;
	bh=PvwqHA2mTkq7kQsXIC0TSvFTHZigRmabNlJg5efGMxM=;
	h=To:Subject:From:Date:From;
	b=aFZUmd/nYPTLq5zbya+sJ2ky4KSJa0YmgV0mvdk8xtIx7SP0oVnLmtK/ziZwW/cUS
	 l7PJ6DL2Qfcya1Khj5f7w6w/I1epPVozMgrxRcoYbfzo1SbEyQsOcZJOvMAZGcT1zU
	 qkLdU+efCX6YICIu4Lq89a7L+5eGKjmuc++FSsgh6D3o99ALd5uQdsKXk1dNtz+LNC
	 8d8KUYPM0nYfzpc90Iuh47Qc7xs+T8eLMx6oystuKaj6yCvqwIsJfXwARV3Db8uIFp
	 T06WKg2cVdrK2MOUVN+huFj84zDHc7pnqJ/p1aTswYMydtthmNgmWac3MfuNoO0qbT
	 5oBWCz0cPPuOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9862E9271A
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 18:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176686103367.1316.15730453896058236407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96a4857c1a081c0e532c6b25821088bd81520faaa10c71aee54dd400493292bf
Date: Sat, 27 Dec 2025 18:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766861033
