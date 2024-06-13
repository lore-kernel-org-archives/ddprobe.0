Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C76A8174C
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 09:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718269703; cv=none; b=T7ZVYu+ox5VZqLby02Ec9yBp6AM3WtbsU0IljB7ZOeB05IC2YIX+gJUyzPuUc9pg3INCtzqLM98OREh5RGOUgVHfFELvV/LkQmfuWJYrepWDN4gKN/STSRhA2DH9ODB7Q8hi3W+3+jYcN7LiEQhi7kyRUXgMXsfI7vBBSsfBMbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718269703; c=relaxed/simple;
	bh=+Irhf8w0WhPCIAhLNEmuwxA24lXO+yalB8Tn9B/FK1w=;
	h=To:Subject:From:Message-Id:Date; b=cKeLsDq9WgFZDqmT8/d7y3O8LZPRiVSCwBQsi4e2QizJQhtJSf9R8P+Fp5tx3nNud0x+d/4L5By2CaAcP0w4cYQGEGWzXIURXF5DsW9X/GDPurU5B0DX1XAbiULW6Tfp2Z863ZKR9OZmzdCpwrTYzMnvg0yESfsyW7EjhVkDWiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YxF+TR2/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YxF+TR2/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7FE4C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 09:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718269702;
	bh=+Irhf8w0WhPCIAhLNEmuwxA24lXO+yalB8Tn9B/FK1w=;
	h=To:Subject:From:Date:From;
	b=YxF+TR2/SGkZj3THAz+wkYM2EExsoYMAmqCvYZ2UQBjTA4y9Qn92Lm8XU1HgIhSAA
	 PknVYfNSlOijVLmRAmldoOVy3TczHjSl3cKACmELZgFhrubQqKPRF2ubPVatgydRF7
	 3BXVC0wK9EhWTGIR9tvcPhAWZKohwN9G3NhbuHBGbSYsjTJfovDWz9+R23LtU9Nglq
	 Er57LrfOBxTmiZEOyRlIRruX78W09TmwXTOXpIUqUt42yfTkR5I897ohbOYPWlCo3N
	 dTeCLb+OojU/GVmkxmMNRddnyzQQcWQv6QVbpFpjGw5xZsDXpjXp/EVyd/PxkTLysY
	 u0bLdddOe2sfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6558C27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 09:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171826970280.674.16765982364807748839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37926b3c2561073fc1fe3a4471dc783365c66ff2ff850db7aa7039dd612d850e
Date: Thu, 13 Jun 2024 09:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718269702
