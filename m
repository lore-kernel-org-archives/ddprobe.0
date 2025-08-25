Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D27E29AAFA
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756156194; cv=none; b=tKlyDU4VOLdqHLdEcUxHi85z8qsgSXvuof3X2+ivfqjO6Md9fldonjCAKtR0jvo7+IVbMdIKj+a2dhlKrFbr9BXO1vzoQ7G3UffT0iM1TlG0hIhbDaGBzceaOWg3T8sY4L8fgXmEIG/tO5Ku6jXjLlAsy8n7Gbwl76agmcw9viI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756156194; c=relaxed/simple;
	bh=NgWsG9y1DHc64hhnoS3O3OcBX2DLsQsNeDx5yk4Xp9s=;
	h=To:Subject:From:Message-Id:Date; b=iVFXL/1Nxuy1vXy8A0o+58a64JdGny75JKVWFkEXXbHnrBjO3EOstU7F5DBr/TB4ZIBS8qDVe20YLB6RxGFlUwkNLxwlhaxhLn8OoOOC7KisYwxA2NfJnsFcs+y/b5yM8Hdg0NrHZ4G8H65EPBckCUV6qxr7AxRXIWLQKKe+Z+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RLhFAsBx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RLhFAsBx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1089C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756156193;
	bh=NgWsG9y1DHc64hhnoS3O3OcBX2DLsQsNeDx5yk4Xp9s=;
	h=To:Subject:From:Date:From;
	b=RLhFAsBxZ/PAwe/rsZ0fM5CvVdkWGMqHM4kL9X2rA9HQ2mcJgO5F5e1BZa+B4PT+d
	 b79Ugb3ws/Mbc7ur0nnZhqN7EkEe58CwTN+SigT7o4pVRXR9dW1VWsb6haEBx7Jgve
	 KqwKmf3Q10vR9p3HXjSoZstMCTvHLTwpeRBlQCihEEF9M6TClsPs9s3zFwrNVGJSJy
	 EaFGeJyyl9KMByGmXWRcVe4x7Ic8u4PgfjH3XIdJv8x12w9y/TytkVhCIJf1oon15+
	 QJwV1Fn232VHYcKGNqiom6KwBSmQLPxHhpxjX+i9kYEorKC63ejfifogc8/UmizQv6
	 7GTyeA4746rvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F240CA0FE7
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175615619357.10924.9381200570590471745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c3d43bdeb472a9b2d9fc05f05d1a4682811ff632831246bc25cf2ea0914942f
Date: Mon, 25 Aug 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756156193
