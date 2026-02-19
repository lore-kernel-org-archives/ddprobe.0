Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FF1833B6E6
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 13:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771506894; cv=none; b=Juq424/qYs25C90XxISEEbmlAm6if5acLQUIkezgTn1uHCum+55xSsshqFwwtst4693DV7U5+88wBkFp5Yn4b9HDL60mTJZqdIFAYnrxFIRfOL5lcvZUviDmcKYN83QOdhGRc6IrVNI/+vt/2A5NHhArjmA9rHDvfGJWYuIcujM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771506894; c=relaxed/simple;
	bh=DfW/pcJj9d0IIs5hzB+VkridzkJAdXNAnk9wS5BgsUs=;
	h=To:Subject:From:Message-Id:Date; b=m0p9e415n6Ku/HKlChw3MLj9aKIqOr24umZquwS6DyqafsQyLXZsDy1LNbVu+LX7elOPLRYakGjzd61lCf7BcNtTf59J616HnQ8SVzYoZf9Q1bphszqEaWcuuQc4bK6LfNx2pKncgdpHnCZSgpHG0Cv4EvlYCqQHmvtkQ7QEIE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C5/vOGSW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C5/vOGSW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE744C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 13:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771506893;
	bh=DfW/pcJj9d0IIs5hzB+VkridzkJAdXNAnk9wS5BgsUs=;
	h=To:Subject:From:Date:From;
	b=C5/vOGSW2NIUQXTCQFwowY/kozQzZtJA84HkCcInJIctO4HFRJrSR8WL2q3QR8EK2
	 otcwjHnLakHS4yjr+0uEtYkCqhHIep9JY7R8aK8TUJzJ1TTk8bUV0aq0HOKUnTHCAw
	 GS7pPbpzvVB+gJW2/AItpdYL+2ik+3ocKFtXhqku+auhnFk4oTN3q/hPrVhbswm8ZL
	 uLk9/hmASlCqVOOsQeawMFpp+XoudjfIzMgfySZu7yD5VHCpFf/ZKoKnv6zXjRsu8d
	 gMdqViZcFyEvX4ni+RMNHrzVS4Nxxh/u8CVuD2wtxenWG8/hYoSALQQt7Qi9xJedUl
	 ETWRy7H94uleQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4FE2E9A048
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 13:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177150689366.342.15376134151012528390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b93edf3db73a705a4d724cfb47e0f94a92509f28c8f804e9e6e5f96565da60b
Date: Thu, 19 Feb 2026 13:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771506893
