Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4DE1B0F19
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 11:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771674294; cv=none; b=tWd9I5gloO+vUJ0ESiUJo4oGL23MjCnq6DplUbs12Sd9sMNYkhdGLz1mKVMqBhHSaxDWPF0omJLSqXylGJdTfo5CW/YLk+pu4r57tBtinGNugTyY1qm0CRp6/zaHO/U46FeaHFiICyUmqPOXeaIolyPG2rHS6Nll0XABsl+b6yY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771674294; c=relaxed/simple;
	bh=/hJZjNHmbL0BqtHaJHuGRemzT9D35xJocIawPr9tejQ=;
	h=To:Subject:From:Message-Id:Date; b=Gt3C/lz8N/IDIhcqlD5ddJEg+nre7XZpddNJyV6gHAZlCsj76rPH31k9ugui1WIKEYDc52tDvh9LaaQMWT0dsyVt7X4+fh268ZlqFUrHI7ijtznOuuCARugccNlRC206jS+d9sD2AXPRqg0zhis7Kioe/P9m/G4QNArWtn6kEz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nRg7s5kY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nRg7s5kY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7798C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 11:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771674293;
	bh=/hJZjNHmbL0BqtHaJHuGRemzT9D35xJocIawPr9tejQ=;
	h=To:Subject:From:Date:From;
	b=nRg7s5kY+trIu9f6vP3GoSg3DKlEJPfIsGM3abqqKB6NxcXc9Dv4Atk/lj15IypQD
	 1sKsdvwi6SDgTrm7iZst/BSauY7KimOyPH3I9EY8bnvdC75hit6WLEU9ddWMJRe+n9
	 8bSauQfUZvZzFTp9nmGH5HpYMF3tGAv5elCj3VLlk7Ow4V4iIosGwJA01rT9ZSppFd
	 eM0fUD+LpOeVemd9QvhIQne6uLtWuZNUDL8yt4alSuFLPIq+R5JhSniTrGa0sDGPuF
	 /AK/KhggPSG6dcggGTIgTY6KMBjdpYYhnn9uzuv3h63XJTHfd7wHKDwUuPPhmA2tQI
	 3Z77DYSJRVokw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E18C61DE5
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 11:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177167429358.17867.18365908288230135348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abc041e4e7a79df2dd62fb79af8f20e0c427ec38462ea8be56925dc1fa820b9b
Date: Sat, 21 Feb 2026 11:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771674293
