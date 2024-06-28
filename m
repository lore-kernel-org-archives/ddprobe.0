Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B0DC4D8C5
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 18:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719600863; cv=none; b=QgdLE/Zi0TEAgoolxcCgicYa6HtsQzGNYUbi4ElGLgtje5bEPii1d7m8nL2UOMn5oDh9R5K1chhYsXKfuAsyt3VjmdIxyx5fZrfHybublEBVI4eOr3sDGh4a/MixwbvTYmRWg3LgijHPcFwLGXZkm7tiWIdYOFkbzjWhPzMtNqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719600863; c=relaxed/simple;
	bh=1syTYySoJDkWphw37AhsfqQnlXf4Q62V9InqrCFzfoM=;
	h=To:Subject:From:Message-Id:Date; b=jPK+i5XlJTnkW9c1C9C6VQFdE28xQ6pUEow5M4T/kxxh9WCKT92hcBnL0b/qkbVbwdlUndcq4nzpnMj4lWV2hOKS3NF+fiDfIZamFYJ48eLYWOyoK1lcwfilfMa2EqOl4IH2icLGMgQeFogjwDQttIsE+eZJ5mdj5be4tJeFN+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p3EE8egX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p3EE8egX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4C3FC116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 18:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719600862;
	bh=1syTYySoJDkWphw37AhsfqQnlXf4Q62V9InqrCFzfoM=;
	h=To:Subject:From:Date:From;
	b=p3EE8egX7ohMgQoyzWiZxD0AUCIMBkB+1Pwr6Pjkiqtyo87izcw6VAzZ6t0F8tumq
	 My05A+KmLH7LY4rZ3fVzsgf8qsI1YMA2zuEoxSMKoC1a3ZUM0RR2RqvLmLHyZxKU5i
	 5xJqhrO5VQ1lm9bydSghtwgdJWFsXnToq2AYOF0QwaCMmP4HprEose64OsvjpkvJ7l
	 BRsUXR8ZsYV2C2Hyfo8B0v0QV6ZZowcL+uhuW1yUuEs2/rvvm4J3Qg1sBiCPPFrlzH
	 oqA9bcyASsrbVEXPv1VRHyIH2VV6GVyHqjNXTnhwwXnWE0w/Te13l66qytcmR1u0UC
	 hFB6LHDZcUOdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9D60C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 18:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171960086281.19279.2318477087488279693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 694397e157f52b3cbc6e28206dbb54c996760eb4b1c1b05e26dd6336350e7cdc
Date: Fri, 28 Jun 2024 18:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719600862
