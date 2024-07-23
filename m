Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CF0713B599
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721747154; cv=none; b=ZEAEVeVUgRtNGi4Ovuae11C/E+mjW+N+uC94+KGq6MOpX7zR9LJ9GD7GSBnWLjCsQcub/wxUgvjBA4esvw6yqfqx62Vtrr14ODM0ipJBaVBGpbkBc1zwbFOC4FnzwW98/39Dn92AahpqzYq6xRVgWI8ccXx4Oa7d2acRdgix5Kk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721747154; c=relaxed/simple;
	bh=x4AA7hdQXaui1HtJZ2XBOXFFmCR8SqThmmP5Jx9uLbo=;
	h=To:Subject:From:Message-Id:Date; b=YhD7tri25wdGT7ogId1TAzq3RLVlZm5+l4yLQgihpnbDd960u1T8Dc2qxEZG4XC8XIKuIEvknVdoNeGYAUp6XkKJ3y9Kby0CmjvcG+tJ9I2ZoKyyh5mKlb5yJvLq5Be+V2dAmePKr7cQ1dBMqFKdrbplyLClmy5M0kLH79EcgMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cfEx2D1H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cfEx2D1H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AC7C4AF0A
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721747153;
	bh=x4AA7hdQXaui1HtJZ2XBOXFFmCR8SqThmmP5Jx9uLbo=;
	h=To:Subject:From:Date:From;
	b=cfEx2D1HxdksDCd05OG3yPoI4bx9jCV89vonk9O9SNtK8ch7Nsl4n9cw+Sv8r/Ek1
	 5/hj93gzz9r/dhQeULqDsZvfKJbzuHtth482t+wy+M30Q4DtTk5vLFmQWEtNsl138Q
	 kTrBpQzeC464DE/AXsJji5YMJcHUB+j7Cv2ysegbiz3XhSwJvh+M9dGXPOFUxqcQmq
	 0uiKAcNqF5lUONBPsAkj7mxCKueJnH9jfQu/7dq9eoKFS81z81lbvv3CcsN70UIZeM
	 SZVUcS/3RqXmmj+GA+UaXEkZmyTKg39q9QNzoFLqkarFSNR3WyJaGOVN8EpkpGhL0Y
	 1lFdSUXNzNhsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97ABAC3DA64
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172174715361.603.7963907051577536131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7f4ac2b940b752de66e4c0fc084c5ddc4f544e53a18dc15ab12712b1e7e99be
Date: Tue, 23 Jul 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721747153
