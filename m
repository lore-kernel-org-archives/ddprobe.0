Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E0F8EED7
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748684995; cv=none; b=J0khgaEVNFoyZDfVS2gWG4zmiAuWZbpZmZfGZgVvNLCqUBgnrNVws5/j6L7XA/8x5cELOYicHZOPXn2JBZSE3FR7cysARKQj5PcyBjr12HqcLCJ5Uc+XlR13UmXZ9JYXX3c9Wh5SizDc5cCpa6euLX84nDXTvtQugndc0Zoqd44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748684995; c=relaxed/simple;
	bh=lJ3HEpJvHQkQ7921letsKBhxFjyE8Oz+b77YaK42NFI=;
	h=To:Subject:From:Message-Id:Date; b=dc2ByTWf0Wa8Sj/pn0fPqOAgPVnFGml0i6iHpYE47IhrDI0ePt09k02TDeY61dVoK4+IZ+lPXRqcIbkyE6N4Op+r8w0pbDK4CPnec+Rq/ixXxWv8d79s6Zq0g1EdUzw65IwJsgl6bb130ivTm6fRlLjbYVfyLRXShQFMn5sbfW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AmAuDRBL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AmAuDRBL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD421C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748684993;
	bh=lJ3HEpJvHQkQ7921letsKBhxFjyE8Oz+b77YaK42NFI=;
	h=To:Subject:From:Date:From;
	b=AmAuDRBLeNgG1MIPImwP0+CVGLgpHKzVlw82bhh7ZuX6yx5TRXQqDWDoCnBYLqSJ6
	 HYeyjltEnxgaAzv1bvXdm9Ev856ojXMRbuDoTi+PpZ1dJTvAbfJmca8kIPyPwIPhG8
	 UdBEVC8PoCpktmPiTkMEXbglZ5pFXzeKrEWEGbhsoqBtOMKojX14w8Ym1glzyC9EC3
	 nsR0o5yQXzLOXe5LB7qYxwsmEzY6B94Dpr2xFC82erQIOSCxY4kLKJV+35VoVytdDH
	 n4OXF0ARBqTmDldy0W6tERFnAhe45g4QhJOpgQ+ywc2u+Bo1HzmyCVuKyTzNEwcWRQ
	 NlCjJFhkv+Bpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C8DC5B543
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174868499360.14367.16402760962362444472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17e89e051a94d1b9e51efc673afced9186be8a46fcf88a6d6648ea7eaadb831f
Date: Sat, 31 May 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748684993
