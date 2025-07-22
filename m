Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283042E338B
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753190994; cv=none; b=mBLPwJeeNtpygGux+R65xrb0tB08PdLqrTJHhx4Xn7IAS53EX8gGGPZKp3rDfgEQWz0DUSWQPAqcysySHS9iacMHB2MTqYCNQqqIqGKtI2vuYk6ZZf00ZTlPvz7TUVJc094bENRQXIZQpzOoqO/xK909V3DKXa2/lmomxoLkAi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753190994; c=relaxed/simple;
	bh=o3/qx0UQauGf9LlO4CG6RLRwjwB7DGOMdQcxRCOLWPU=;
	h=To:Subject:From:Message-Id:Date; b=MLaN7zL9QzUu5n6wWW2J5vixJVGJmryKoP57b84B+0TxxYQ6u4Pgjom9LZJASFX1++EwDpgVbyHOv4nzq7ReDBhBNIQhD4/rtcZg1/Vj9n34zGnyx54I62XjRVzcFipvsyU4xFq30xx1M25QQqXfS2MqE5mWGEHAHrNPPSnU+6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oe6ANTn8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oe6ANTn8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBC8C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753190993;
	bh=o3/qx0UQauGf9LlO4CG6RLRwjwB7DGOMdQcxRCOLWPU=;
	h=To:Subject:From:Date:From;
	b=oe6ANTn8Lb6eetN+gWgERCwnvJj9rzNVx15U6IY03vpNjo3pzhK6NslMj4u0Kp47K
	 OThYq6oY7ZBe5L1RY1AXxbEWNpQujd8GYVcUd+nAmtX7lqETW8aabbrx6s6NCZ2jxg
	 HwR6epIrmTi7sit0JA/WVlTm1479IAKP3+Izmd3ydNGsKzgaFP+n9GlzsftyJx/Fp8
	 6gwI2o/8J5l/at8Y47Xg0aWvwyxKJx5IehoKutJHaodxYxSBhLCORGZY4ilTe/LHpc
	 OfP9UG7v4Ycw6H+Lb2/Ixfm44kxn+4Du9e0UHtZl411vu/MF52Ta1TIU0YRq8EzmDI
	 cZP6Fkcx122BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F991C83F1A
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175319099358.21767.10207810737069371419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93e754497cbea8a78c67b08a172ce71fd41d4ddf0b1aae7fead867cc461d4106
Date: Tue, 22 Jul 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753190993
