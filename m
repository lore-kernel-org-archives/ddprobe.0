Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E5858F48
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 08:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771143894; cv=none; b=QASUS40zedqfWi924p9mwB0dzcKryLHmLxS3362kZu7w6XWOWqPD7YhHjfRpx/8gZZThZBl/xLx+NaAsngfMCHBfsrQSKBp4ZtQqRD6qECE6+bsTLRBgwE1vL8gQYbcLsvLHNPuy3FWeocG82C/n6nJweOKfzbkrljfIqo3ESOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771143894; c=relaxed/simple;
	bh=C/qHWeQqLgkf6MW4EEE2ozRgjZJ4kju3YuBi17JCNoA=;
	h=To:Subject:From:Message-Id:Date; b=NBK9RHjNPDAEFUX8v9/oIdV2Au0SGCd9tJw9ZKLVNYA6vID/ZRwKHDy/TlNVrRP26j07l9AkTOBfi67pSbEjBY/hyi6JIQ/het2r9GBIytJ7v9I0600WqE96NUBLjRAPchbaYVkIsWQHu4emmWXMZnLGJOCkyqebV6gtBeQ4i5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D7ui97Vd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D7ui97Vd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5C10C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 08:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771143893;
	bh=C/qHWeQqLgkf6MW4EEE2ozRgjZJ4kju3YuBi17JCNoA=;
	h=To:Subject:From:Date:From;
	b=D7ui97VdobqCqRT+tlPVpmpIevXQyV43rdiGrJHrerFUszYfpsKSTobpbM4oNLrJu
	 NYWyUVTtjeNJhyw2YcbO8KAkbm4v0tMYZu8FEKa5ttwFXaz/0Rn99YDH+bebFGXciG
	 05YKdoRnf9VOq56qLvab77eKygnUziqMI18ry3WcPkXyJLA9E0vDyS7yIp/iwp5sUc
	 PUSKxkYQ9IUcpBT1Efx5UeAyIDXztY5hWJHmsnI3cnUDgWNCr/+kWU+IQiJFuR9/zY
	 EiMBkWd3QWgc55urzCPif5Ji9CXXT+AMt9PiFtuQazTpWuyZGxnbfvTOEYUSnd7kBR
	 i6r2m5eTTe2Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB96EF5868
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 08:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177114389360.26822.9540826523066603365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12194ed3ff719bdb965601b0f621f391192c3d0b4618e80a69c96e79d82d42f4
Date: Sun, 15 Feb 2026 08:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771143893
