Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A3DC34D3BC
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762612794; cv=none; b=dEp0JxQ9zIvze6X9MOztMOqLyQrrirDSmAmGlDHoEdGzy4G4NrchBr5NWKFsn6R87IyMvXk2AI4/H3Hs4jsWhKdokJkvmb9/RhmfH8yV1thnxduRKyWxV7CooKGqhaF3nfWIgx2V4h5EsdAvGKPeb00i9qkIap9SLefnDLrosjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762612794; c=relaxed/simple;
	bh=wMNiDxitJvs6AlVQrfCmvpZvY9AHyNfIiQhzmF9ybO0=;
	h=To:Subject:From:Message-Id:Date; b=C8BLrkN4cizhE/RifdVzIUzF8ms2L0MmC3/ECmNGhSIKaiVEi36frKIeBuIfSuxt7oCgM4m9uyv81YK/uUuMbNOY/qNTTdSymXQvHRGohXYm7W9X55rnlRLjbgAIc2CtKwbOxT2OmCJ4/6BSW30VY+CUwHowJkYYygyERLFuu5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b9o8Sybu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b9o8Sybu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AFE8C4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762612793;
	bh=wMNiDxitJvs6AlVQrfCmvpZvY9AHyNfIiQhzmF9ybO0=;
	h=To:Subject:From:Date:From;
	b=b9o8Sybue03kq4jQ6h3GaSm7emaDTeRS70thg1E9E0uT07H/UaqLMa+IK7qHq9EiE
	 FA3cZvBOfVzKmCX2C0DtHe1xXEVBzMB+uduLRHvjeYG6UnzkaM/xDCEJ6KYM4w1Hln
	 G+kMN+cUW2TD2qAL0gggmqHePpC16B3rMmvWG+FP4uzMZjzR2USrHInc5FxYK7+ZO4
	 ITPMoDD9aK5WC6YKwGwZdY8m5epjx2yYUUdMhOZ9eCle2wtkT3tiVAXOsz2kbLZK95
	 ErJwxH/jOePtt0XqmtmtXgTPKdbjDeyytInOF/rZZ71GWnc2f2JJ7AUfjJATtK+CMO
	 olDlUh4xJWnBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F73CCCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176261279357.9388.12866991802032076800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e73ea45a8a547608f44f02ee37c34e765996b5ca8c28aecfd4abe04db75e133
Date: Sat, 08 Nov 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762612793
