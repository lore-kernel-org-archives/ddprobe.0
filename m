Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B7A93D76
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760233194; cv=none; b=ewDjYxMwuu+TVzkKKDU9pwRpa/eV+Sy06Xx1jbzMJm41c1W/299LLTPDN94PSMf5FTGO0TtL3VNneJRnZZzgEwhHYx5/mlz25gfoZe6wt2NU6Wg/Wz4XoVh27Uf/BRDJmL2yipe/Q9JhWPYaBAvVgmvrlOBoxrUv6fifuhecnNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760233194; c=relaxed/simple;
	bh=Y8aTTx1TK99Zuu13LHoPorqgbWP3w0dzCojFRAdcWOE=;
	h=To:Subject:From:Message-Id:Date; b=lRSMiaIgOzxfxXLLT8v7uq2e14RUE89jUk6kme2ubZFenipgCWNtTSOvEsQch7TKUHzi6Rl8RRoerHHx1/8qZBDoZZBu97zj5SqghjdcqMvRfqS6PRo94kp/L6ghFZMu2f1iir5iBYK7gGeylB0sBvwH6NZIl480haR15YJEw+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PKr4OIdK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PKr4OIdK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22FBC4CEF4
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760233193;
	bh=Y8aTTx1TK99Zuu13LHoPorqgbWP3w0dzCojFRAdcWOE=;
	h=To:Subject:From:Date:From;
	b=PKr4OIdKCaBt0N1t7Oy7V+gONuiBV906To1hjzAQPn70nZCigRyTSb2ea1C9c0TRS
	 oY5Xz4vOtmEFwu80zEskipxcIVDkR0LypT0p30WuK2oux6vGxDhzv3O1Ocvhf1U7+2
	 uPsgjUaXrcGtjaUwMr44+hajm1FLAdL7fN477dWsB+G3BytS+HTZWA6DF3mwBGYxvQ
	 92Ls/eec5qR4FbUEC65KOP9cWTrYQIaGOmLw8Lsal37UTLQCC8W8llzelvOTXyvLvk
	 kd6gnkgkyZ+h7JXMXdpQWdzGIUEjkznp+FsRWPNJwJmEkkB4ZGmgkt0Yu4hq3BvYp2
	 FN6mGVQjQWmyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9546FCCA476
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176023319358.28116.5770255129921903965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9794ac2305a4bb052b214104461e3fbd98ef9604c4669ce5a06df273960c0f01
Date: Sun, 12 Oct 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760233193
