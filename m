Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A5FB2D617
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 03:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783741114; cv=none; b=RAP6pUbnU7hTHgFjKKYtPmKi0TMkcZxCItPI9lOSqULzmvgK4BzyWDzZjymxvg1Fryni7ADErwLrvFpjfNFFzVAapagjacgLNcio90Vx6L0BbYgxPy/psD4mkOnNmg+axsETbT7jm1qQbiEFzXSr2+y+8gLUwEyFR1WQVKXjzjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783741114; c=relaxed/simple;
	bh=U9PBPPyfwYPyRkSBBWxendQPB5l0HweOh6T/z/ktzG0=;
	h=To:Subject:From:Message-Id:Date; b=EdGayuc9FMN6B0jCTchBhGfbcUPyrnxdG2KaTryvXHj84ZVQYmAMQ+Waz8MYEbgS7t2XPQUVpGrB073nKVexBJGyfpl2w2dY0leS+vUqiB3FML4TlMwSLVdHf+QqXBpjace3ShxlUrS0RIxUztkaORdFpjOwJbdmQk/xuB1putA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hUXmvi4p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hUXmvi4p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D164AC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 03:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783741113;
	bh=U9PBPPyfwYPyRkSBBWxendQPB5l0HweOh6T/z/ktzG0=;
	h=To:Subject:From:Date:From;
	b=hUXmvi4pe+aYVYIPQRYuHVK1MxZyFwTY475haI2MUpfF2aDnKH8DblUhOx9Rg7qWP
	 NSxey6S2po/CYOFDEDPoo17GuSdfaPXaEEY1efPCVTILjd3fGwFlFtmy6cqXpXBX4Y
	 QNxWlu6/4xb3LpFIfXKIq5B5DL7MXs8DkVOAaN+8ifRI4/f6xE16wMAyElJ5Eeze+Z
	 hopuHHD+TXfrNSS3JVML6eYLTp6uLva/pwmvoe4c4fRbhvujpkY7ptSrTb9vhSNh4c
	 hwoWHG7yTJlCjh5tje5XKuGKZf0w1y6vWuPAmOtYKzH4avFRiSNvLZdivhSRrFCBCf
	 VOnezh0Zm/d4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF467C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 03:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178374111370.1199.7290380837663055484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84b027fd09747ef80b658f8cff7381ba3ff2f94e9be76b80661773cea6d39f58
Date: Sat, 11 Jul 2026 03:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783741113
