Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D9061D540
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753066794; cv=none; b=FwlkOXwqsikZhJB4s18atsMBoF8PKm7RSpPyUWQeoA6ZIBkmtauUb4CS/ZR30WQ1LJHaoK5D3FAgIta/qtU1SmZuHT0izwzW546FsOE9ixMpIHD/Vins18Dy3XDFcQVk9mnpH0vvzWCibEmlTDw7pFuz4phj/l0FcqXQGgJZvfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753066794; c=relaxed/simple;
	bh=B3tZN/rRiQXLrWaItZLZlwzgTTm4MWQ/Ty11+UOFbv8=;
	h=To:Subject:From:Message-Id:Date; b=GM/eH9RGdYXZSY8YndRA140ra/mLlxhWfNLWshJ8vnLabu4uCKBfkX7yKa6bFaoSVci6LooFuRvHT9AnVcKpXM4+uvX9dl0h609Vro026J5yh7BHx2MhoJu6TwuJjEV//Ka0BxMNGGhTAQcEqQCmDSF7Z8uOGIFgWJ8/ywry4w4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kjTkHnCN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kjTkHnCN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2AA7C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753066793;
	bh=B3tZN/rRiQXLrWaItZLZlwzgTTm4MWQ/Ty11+UOFbv8=;
	h=To:Subject:From:Date:From;
	b=kjTkHnCN4slJPy0R1d+PENCp+8VvRvGF9sYirWPQazyfamLXIlbfut4R5u4DQIg++
	 u1XhZ76sZC6+mIUwd6UIsZ0/2ygWJ4/sbtvqzrHRSlBtl29pfesQnexNLOmxTKKRO8
	 Q+FSU2LAlPKofInSsDh9Cu4vmUYv35ZyGJXukxAZXWPZ5XeSNx7WCIm4/W7yCJK+je
	 WKAF0Pa+NfjUf67sxW+BmPtZ5sQWTl8C3YJCTNrPG9cRjaeRRMR184WS7B6ZhYC7Kp
	 6QFbQObWJira3oLUgI3SMH1CuusZVKDGDDDRF9984hoRoT7XGrLZCBRvleGnvBL0M5
	 jpbRQWsis/vww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F94FC83F17
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175306679358.5087.15350052057757037530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c643fe3f78db5536a75935477cb2df8f661d29cb0a47de585298858c14c9e00a
Date: Mon, 21 Jul 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753066793
