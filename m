Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C58F42E1C63
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 23:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770939893; cv=none; b=onV7fzhPl5u8H2MCXz4/LDS8tIllsa3KDCp9zN7aMsEnY0vzhRlFclULHYCFBa2CUYpIybrYlWY4qrCHA6rGDxRJmgySndGl34Sai61pBYTOsB7lOCRpCvTTWhTbyTFJZJAHH2GqrO/nclEhJOpBUKBdHfu0Nb59my3Vk+o3e2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770939893; c=relaxed/simple;
	bh=9wCVdGrUf7dYcHf8pujT13bGLxfdMv6o/lgeoVGm7h4=;
	h=To:Subject:From:Message-Id:Date; b=YeRXB9izNaPmDc4ZmQR1ZRZ8g2XN+At3nLxAavoGY5FGhu/MwT7RBZBZyJ4EuDF3tLrJ3momI9oBykaIHF+pWIHrJau3aS9JKwpPuEshJmyOnfR76lRHUF6LZbNZ6FqI8+OiPntlzQdT3oEFQvdxTv/WUxqMurVwupJgV6ZTRjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WVDwgrUo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WVDwgrUo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA731C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 23:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770939893;
	bh=9wCVdGrUf7dYcHf8pujT13bGLxfdMv6o/lgeoVGm7h4=;
	h=To:Subject:From:Date:From;
	b=WVDwgrUosD1tlGynrOu+yp5gFtpUErTuOMuiMOWcgSPpH642P44A/gk9ZkxbGvH50
	 zw/UexveY+U1XHTaEUHy0mzaxJdb5oXs9JlAvQOMP118adZ39/k6XSnT3JVWjSsxf6
	 CLhSoZ1QP0S5jHIZDc3796AOEcU8hIHRP0Ps0NYyHtTM5qssxFJ10sXdblG0oSbnl7
	 6GY34ijXjIgFxVPLQpOtsxWGRHQB9E4Xd7eC2LqC+blmJDXApyXjzbYQNHaUXCQOnZ
	 QIflZAyr80k4qgWEAtLSpy1Cg1cPAyQGiSnP3nJPJ05ROB2yVIj0adLL3d7MJO/3rg
	 pvknhKTJVgCgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9774FEEA86F
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 23:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177093989359.29285.14679693978990783685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6a5e4bdc013440ccd2ed5d65601cac5916e64aaacd0a3d4fb0c4d7e1f7f87e4
Date: Thu, 12 Feb 2026 23:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770939893
