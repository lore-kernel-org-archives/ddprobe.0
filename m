Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10B5318E057
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736133354; cv=none; b=EY7eZ/CMrYl4dUCj55zqPRegUktswAemHHmRL3gB2N+YGpUMuSzzhn3d2Vk3ZRO5MyIdhcnjildB3MTuQM1CPQ9SsLTIP6Gy2pthdSDPtpgOk89XkxkhmCvf3bkrdKf314eqdWljsnPTCGBLuCNJmr5p9uaJFgLJzV64F2iNDtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736133354; c=relaxed/simple;
	bh=O7y0jGxGggbQ2xDoM0ySyRfVuy0QSGYCVX1wwHjzfio=;
	h=To:Subject:From:Message-Id:Date; b=qCr+fnBa5qG/w0Z0f8a9FENPZKaPw8ZeYPmp+YvfAOJAn3GgzAVTkfzWNezApOCXZN3Upct1bVct9JQ2keGpPsK48ku+k5+5hedacLkqm/dCgd7i6iYN/6gZ+jDJ+sPuvlS/w8+L8YnBxRj4QwBcdW3e8FBtD4rN7raSl6+e+9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nWFaJNvT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nWFaJNvT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4162C4CED0
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736133353;
	bh=O7y0jGxGggbQ2xDoM0ySyRfVuy0QSGYCVX1wwHjzfio=;
	h=To:Subject:From:Date:From;
	b=nWFaJNvTY7q2hwIe+88BhH9XtitW1YVenu/aJeS7s2O2AgnEHtbdTH72Nv2mA8cm1
	 JO/slBB+StoPOACLD/e4yfnuzVYkrXrBQqUb23jilwAplBszrIZEonsmIsLIXnhybv
	 Y5cWQST0msoZcIQlcvBfyK6l/OFdOw9nBLGlQLVYZ9KtNnAQ0gECr9/O+VLCk2Gd+F
	 jOIofILz81DQzvlq5Sv0HTJat7TRoQgtsj5rkZHF60Xw02WzhKMD7Iv28UzB7NBTZC
	 VFaWh99ZV/D0Heg8i00T6B51btpYppHCSmZDappaB4Acq9dZ3hIXiZAjFajCkuzjaK
	 U0OGbpjatremw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E63E77197
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173613335358.7239.11395599182797883721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1a33201cad2c6d0038f5a8ab124b3afa4c124b2a1cd530c8fd047cd7028dbaa
Date: Mon, 06 Jan 2025 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736133353
