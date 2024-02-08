Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C70350256
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 23:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707433697; cv=none; b=hdV2ErWf0aHLXvQGQi5bIK73Okg8orJQro55YZM/hPUYkRXcqxe30Z3248W1wFYnOVL8qWpNw3vrPXnB1cwr8pMxwWro5JGYIel9sQUL33D1ZaRUfPSTLxBXVXt6P+j5e9cYebEg9R2h7sEJ/DALdCqrNDHWPjlX7KVn/hyW4x8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707433697; c=relaxed/simple;
	bh=vyQ06WDCSR6owIEgV6aSEHHqaQCNVNFk4ODdCQKm7n4=;
	h=To:Subject:From:Message-Id:Date; b=VBYeauPkZ/34UB3QR6bB4z/SLjJl1qJxgS5t1GBiJeTkeSrDCutyy3LX1HY45eQKimIMgWigHzNmDmVZr6vWEyMos2cInE4rYiri/VnZDE7df32kK7Kq4ipJnRiqQjQLazUoID4EdZRWl2WIvI9pdoOONW1eDVCDj+nB71hsgds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fdPVZkjf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fdPVZkjf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92D0EC433F1
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 23:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707433696;
	bh=vyQ06WDCSR6owIEgV6aSEHHqaQCNVNFk4ODdCQKm7n4=;
	h=To:Subject:From:Date:From;
	b=fdPVZkjfaYNJryamQEhklGofHpIetiDEnN2vpiUqi20mbuCQ3OX7eVLDk+rJRxW/l
	 QMj6mGNNwFLkr42uUrgiBzWTPvVl7RxoEjFuxfpf8VyXGl2vUCxWTj3VGlEvH0Cnlp
	 6hkPKJUEUrEc/FAvM714L1S0QFFwVxtI4eI15fosqMd9PpyIghSWL3NKH9fktw/Ovt
	 m0ttT+/07rDNHYrdumOxU7ind/FX5UOi0wEq5YGf7rAIWaCdEKS8rYznqVmNDmbK/C
	 gbgj4pzWBkkLm8tDjp4GsXvlxi8oypn1ZInIOofohxH/EweR8xG//6JlQpy6T2GF9u
	 VnirJOFddyAAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75AFFC4828F
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 23:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170743369644.29912.5425420241011691591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70e0bc2b53078462698bb77bd3a3f55000980da5a6fabbc59d3d780514020a6a
Date: Thu, 08 Feb 2024 23:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707433696
