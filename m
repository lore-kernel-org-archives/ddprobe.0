Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 425A31FF5FF
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 10:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741258734; cv=none; b=X93tlx7YPpzJA6f+NF+HmpAYhwLmXiJ0EaRMEyOnZwn9fhu3GpGt1zhUI0BADxsomG/uletaAI9NXixXCVpSRByHEC5C0ALxstcsLaXqy+E1XG9bJz/GS0Eat/WPo0VwcvkkdQ8yHtSfOewaepClhMsbjV+R9gfiGpo6khcSK6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741258734; c=relaxed/simple;
	bh=UVz2dAZrvys0hz4QKA/TyauP1BgkIYvHBATGSXbcC9I=;
	h=To:Subject:From:Message-Id:Date; b=tIgs0QuZAo+qCW/IcXTWDedyPOmh5t85z+E5o0Bwms4iAFEBbQVfijalsZEtejbceP2G0GXX99/B2P3jfB+CF4YF1KaP0og1R/P2iwTORVkAyCKZF8dvQFve73d+Rd0iBITvFs0uJPCOSGkH0AbV9J0jSRtnUCmy2prRJ7xoaPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UCY5N2Py; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UCY5N2Py"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48D5C4CEE0
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 10:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741258733;
	bh=UVz2dAZrvys0hz4QKA/TyauP1BgkIYvHBATGSXbcC9I=;
	h=To:Subject:From:Date:From;
	b=UCY5N2Py+BOoMBsHUJvyWhOBudNlyaCvgyp6OMv4cFtiJf2+g7j4WTLzNNM7JAKmk
	 c/xLvjVQId3H/qrqVk/Js/5/VUF1x2mGqHvaBNU0y2nbiPB+jKdne7iAvVU0P3AIlK
	 llT5Wdro6b5g42PcoAZpKVX2QJH1Fhs413jfFx7iSiMA/8RwyeY3iSU/JV2vItA1kR
	 xxmJlM+cCnQclE9/yJLwBLEO0bVesCaxo7y4euggZoSjqHH1hyQ1YUBv0StbB0b/Pl
	 LNou3h/8NrM0U3+8MIXJFvu8BspUK8ZBany+2kKqKfvWGlz77uj3US+Gf9Bg9Vbm0W
	 1KYcNtBcsFi6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FF1C282D1
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 10:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174125873359.23947.12267512892667740329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4284204e3dc6d0876a079112de0f8da27e35451312b71b2d099d06e3e3a8355d
Date: Thu, 06 Mar 2025 10:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741258733
