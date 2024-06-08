Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6735D1CA96
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 23:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717890443; cv=none; b=CXJlP8flNh8Tt220/F8QhSzj1kw27PWePFaaz4EMgzoOCe6spzKIVf/3NcucmXc2JnnEePoy4mmhRvh6AmraoUo0QjQUpDlBJYTB4dMgNicMskc2ZHZ5JHMNr3jYwDs7ds0DNg4yhMM8HybPfKzP+7QuW5d/1iI7KM7c1qz+d/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717890443; c=relaxed/simple;
	bh=86H5nKhAQzBdlEsK3d3ZtA4sVPaLCfISW6g3rVU0l1s=;
	h=To:Subject:From:Message-Id:Date; b=o11ywsN2a/GIYo30i0uoCOX0F5ce0oER9/tepbhwt833qQpIyzZn9VnaPm1d9HM9DJ98xeegUcJpmN3gisDUa+N4MyTHQVTb/qP8LLhjCQpkxMhieITnoV4UIx2p+CMSI7wmKVu58xKO/93qaNi5g/Fcuarm5ocs/UACR24q8VE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eT+S1ZYW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eT+S1ZYW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8571C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 23:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717890442;
	bh=86H5nKhAQzBdlEsK3d3ZtA4sVPaLCfISW6g3rVU0l1s=;
	h=To:Subject:From:Date:From;
	b=eT+S1ZYWrNCVOwpodhiv9tPQiX+uH581Tc75KMyPciTAoKkjR7MMheM2MiOVyo3gW
	 YkJsNvS3ZkSvSYbUvAb+NZr71y0JX4cbtL+dDoeTJSHHWrwfG+l8f28aHHErB5Fp5C
	 2+rzcRZDvceYrIlSQZMYAvm4guBg/UyCsNFuOnkP+2fr7RjtsjT7FP43ixgxZa4hI1
	 FXRyTORbbBAMm5ZgzkMPxO0zZNTYjiBgr7C4OEEwsr59PfjsHikJPJ/3NMwiNo2+sJ
	 IMtM+xOckZySwv9fTd9DmZsmJeKLYhMv7ohlL2CEPwjEgTTuc0fQbOrwjOO+ZsWAGc
	 kYMcRf/jkZQ6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE623C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 23:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171789044276.7204.15758138002388777542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a029fe44c47cfe83fce77c71abbbf3aa5b8582d018533e342a66ce946221182
Date: Sat, 08 Jun 2024 23:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717890442
