Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB8FE2868A5
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753831793; cv=none; b=A1J/ZHC8urWgvE9DFHT+xggGMFdntRkFZx90Pul/Kknwuhn/tf0wXZuJrA+vCDiB5qB5WZNo8t5WkEdJunYuWM8GQRMarfoc6U9XRUIrDOA0MUWMCKx7Ek+jV2HfZrI7sS3aeqYhzOk8WltIYOacCUdAeoyYsP5+2H69oGcBRcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753831793; c=relaxed/simple;
	bh=U51cfdE/sVIZo5/sQAUAAo1Q/sgKtJ+KHsWV+71ExVE=;
	h=To:Subject:From:Message-Id:Date; b=s/bIx8TW759s/h9dOrTw9BHIXdgxGTE2wV5/Y02Qr9iP0QiCxqQ0sZHGnvQD+ncRI6mCkq41QYqEBowP88caxJdALLluXnheBcJD1QRjEO2dwoR1IbJV8fuUyk9ib7lHC4uafT4IEtxh1ZvTgZLDyRfryX4+0Ly9bHH9Kqnx1yQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TOI0jrQ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TOI0jrQ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8ECC4CEF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753831793;
	bh=U51cfdE/sVIZo5/sQAUAAo1Q/sgKtJ+KHsWV+71ExVE=;
	h=To:Subject:From:Date:From;
	b=TOI0jrQ+wc+eTfyVi9pxkVdEyNn82gESRqbQjWclVldIfMCJDIxXnzcoKfCcY1jZI
	 gk8WsLrxMQ3M8H+HI9Z9SIPEgfOL1YNbsiMPdxyuyH7SAUUfzbRR2Mzfk+3FmjqTms
	 F3L7gnOx9ek1F13zuQCqlUhnj5Jbas8UlPWHap+5RQzC1nJ3VupVwiRpP+2ApZEGmH
	 dVapk/WVIVXU5NJlOjwqqRpel7bb2mup7hqJmQrZsvP4OX2Lo9rYA985+XEX9WNWUT
	 dim5c8jyQOBZWPFTmj92azIgZWL4T/VQ8utKV+TpwgZflkZKBmiZHkm4NOgmd8iZe+
	 DapbpJGt4s/bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90922C87FCA
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175383179358.27093.18291825304373057969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25559e739a0fcf2d1fb14b5c61479401b6b309739fac7f7020586f396b869e4e
Date: Tue, 29 Jul 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753831793
