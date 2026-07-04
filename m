Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3388C2264CA
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 19:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783192714; cv=none; b=QVo/qDa8GB1V4Dj1aUqull/1lfC9ONNO34VxfVioEjY+2dFlY6h7kxlk23UL6NBeRdZa0vJhe8BKvxs4umJ/v4DEIRDogbdJtYf4MFHYU2cO9pGD+6Pth/2Svs8cvQML7iuzU9b34T29rt28fPJcb4JJy4hKD966SBBj7toBE3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783192714; c=relaxed/simple;
	bh=5hxC96eluQ18RGUsGVNGC0auwE/GROUnm/NGr3H/s+I=;
	h=To:Subject:From:Message-Id:Date; b=Lz3C5jXwXxzvoXIeVJufNhUTHCkR3VHAPg0c6iCz7Y0gpldgPCQKfJYLxWQfYMiHx+qhX9In6QNeCajSYvrzpUfPgBC3sJ1HfsMoDAmRGW6zJk5VRl4np/PZK5BGDPWN/nmn9uNFQZ2kfxUD4tZLZdARurxyuI/8xy06wyQukkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fK6PqHrD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fK6PqHrD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA270C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 19:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783192713;
	bh=5hxC96eluQ18RGUsGVNGC0auwE/GROUnm/NGr3H/s+I=;
	h=To:Subject:From:Date:From;
	b=fK6PqHrDzrpocPwpJQqYLD2wwUJpZQdU7rkuIPB5pw8fXCXxQZwI8OtemXo8d7fRh
	 GJUZz3yMg7S5YzMh6GOu0TywFFRf5ng7/A+oxe6UHhjXRuY2cPyhjP9CFYRRF3Wtou
	 bO9qGbLYSwbBNa1eP/m4vxkkKtFXcGKSIWA3jxsVPvWkJZzdr09G2i3arkLIfr3DMV
	 1MfaD/swnuFQPuIN2FlbhjRZGSQamhfh92z0maobUxkv/x0I83OfMw5fE4EYLNO2xg
	 WrADJrJRoQ+8h0w8EeyIslymyzzqNOtNsvtUEHAA1G5FG0s2VbC7eWVUKgo7YBKysE
	 MybGJABnaUGVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A831AC43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 19:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178319271368.4881.5387153010998020875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2acdba091dd7b25a3ab36dd929b174d9d62a8883fe6f3663f6beb6134ff1da1b
Date: Sat, 04 Jul 2026 19:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783192713
