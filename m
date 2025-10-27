Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0831E1DFC
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761559794; cv=none; b=ZxTwwFZlFTpUI//c3aO8N175iERzrs1/bHxi9qYZU2w9/G4c7DrYPol0gw+G0zwnTcVL5vjRuElpI0cV13ZOKiPvkltPUD0U1GG59Q8Sixf8dvmnXnZT5/XBxeyI/Uw2pRCM5Y0B1U2jq5CBqLhD11Fb9LEvgGyIjUDeefjYuMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761559794; c=relaxed/simple;
	bh=rnll8eL8V8OM0KHJfB9DBeb779PigbaPkk65lq/Geig=;
	h=To:Subject:From:Message-Id:Date; b=SXHcJy1r2iOMgtOgwSPXrP2gVHjVUyhNVLldbE2I0lT/eR6lk3uz84re2yRq2UtdRAQikRKquBLFqAQkkhr1TzmgdKhonCkg6N3z9MtVYZsPGt27urFm42DAKXFellpaYGpJTJ6+SbHgL2dFd1x+y1sVDPTbeKzQ7aEYuPPIhj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QFxoiEft; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QFxoiEft"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A196CC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761559793;
	bh=rnll8eL8V8OM0KHJfB9DBeb779PigbaPkk65lq/Geig=;
	h=To:Subject:From:Date:From;
	b=QFxoiEft/KHa+UxBP+BI1PjOGkIQV6zLsLyurHDOSUBjAzz4ZUItY8s68DKD9HJ8k
	 kNWB59JjBGBzMjBfncvn6zA8qNtg3XAQ73Eek7ID/u2h7xTnjdzqHYQfxPWwHiWWtE
	 1FNnZya4M77dQii2Hr/5Mkp0++3G5SvAOEB0ZFX36CJWBSQAGWvCxamXIwC6ofgwVU
	 9QI3+We0psDwlTxZKELz6TPbOAr7823zOrZNedRXt10VhG0FZI4tz1ygjlSEC4IDCW
	 x09KQUwBOEwExkHOTeLw5PNqrjzNqrpJw/O0bOst5ExAbY/5T+uCQeo+3kf14cXs2k
	 1pQQgJ8xwY2zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905E6CCF9E0
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176155979358.13041.11585690802387480324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c97134496bf9a08485238ffd82405393460d9a5b83f5a73104687675508bbc9
Date: Mon, 27 Oct 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761559793
