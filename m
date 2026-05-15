Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBA4D1EEA3C
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 03:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778815233; cv=none; b=H8bJIghhp1Zt4MudPR+N2eHI7/0KN9iyC3E1RMlx8k6i+kE3JYh2BOma35TEzRbj/3ruIL2peWM9fEdXSu+dR2eB178B6v66944+Q9pkKPW1jFgmHde4sNW/JgVnc+ujr0qFenT/jHpJ1y/z24Tu0lj9VSQcW3lxWXejHDajGvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778815233; c=relaxed/simple;
	bh=KLcMxF7xhSTaX4nfaO75nLSnFjNmbYEdLOSticb1Bsw=;
	h=To:Subject:From:Message-Id:Date; b=d3YUNL+AyoHHekfml6mXNQU1dUWKmGeXIv16fz6hwzyTasfwjc8Brm7Xhld1XbPxDQ7pmCwo9e+jX5UpGgtFy6XKTjB0pi/8OMU+SNv4JCiBTi6ffq3F3chvRyfpwr0+X5u7fSm59AgroIAqurl9IGQFBZYkkRneXcSLQ6J16WI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pd8Weocm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pd8Weocm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC767C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778815233;
	bh=KLcMxF7xhSTaX4nfaO75nLSnFjNmbYEdLOSticb1Bsw=;
	h=To:Subject:From:Date:From;
	b=pd8WeocmxX9W/S334hfFqW5xdHkQ3OD392bTkN9zB4Jjo2wXeZ4CUC/KIuDHxfz0Z
	 nQl9Yf8uT4cGE8hgTPRABnuOiURh+G9cw6hgdyA+ikOMM0HtOB8aFFgAiL36BtMzKR
	 kcxYzU8j08x4b9x/yC+P2wFdUHqCVGXDEfMt30CwEpY5cHhs7fbTQESEgLIniyEvDv
	 bHXGkKPvojLsxmneOf9eOX+A3RsG8iZWZhlDO3gq3rcjjLFLcpskFQ8wQc//oHlY6c
	 7mKJzt7fQE8g9HcI/uJgC6zsjjGlvAdTpmBTFEOR17y/qjA9TsMBve64O0Yfe4hHfI
	 2LUQx1ZLH6UTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5B0CD37AC
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177881523368.27002.17303324098864014850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f621c97a73c623b5829f83e35e4061a436cd277131359da5f43ffd9fb1351a3
Date: Fri, 15 May 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778815233
