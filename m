Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16327248F57
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759300794; cv=none; b=rPppzm90oZ3rEIjilWT1uFKBWRxgXNjrAGlaInW1eLtfLHrBMeecZC3WK1z6g51tzt/c+sBTFjNQIYhsheT0QQSkIqajRf/SGrkFq+PLlZdNGViolLUnfy78j8g/sJtltD+S59PFSsLtagpQ7LDHNNnGHryZT0hAf3ybpxibnNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759300794; c=relaxed/simple;
	bh=SjRivNmZ4OKbqJ9ykESRZ+0LFPTurLoO3DLiTy5dbeA=;
	h=To:Subject:From:Message-Id:Date; b=l+poPX9zQh6KpPJxnkwS4V+1RexrZR1PNFkDVHOllsZzsBtyr8BePOfOVupp8qnGUhQUlZGGey0sF2BAqFZTCWRLa7/7D3btpQq3sM5qrqohQ4EKgr0fM2vVDGGYI3/inO4ODYwy+GYPLNtFuLZh4JAEh1vffVdi9cYKJ/iFMdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BH93jJG7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BH93jJG7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F21C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759300793;
	bh=SjRivNmZ4OKbqJ9ykESRZ+0LFPTurLoO3DLiTy5dbeA=;
	h=To:Subject:From:Date:From;
	b=BH93jJG7U9wTGatdBQjsoCNhzMAup/ynd1i8+fmkFGIlRx/n3kSUK+Ys+voS/zyUw
	 qRdV3KkGIbMQ0UTWbQDJl4Ay2y5uKrFtM0+m4wBLBw/7nGgDjN85dTP6mV5GGK1D0z
	 mIa77b9MvzbWeSrgEiapSlk0vujadkOjsYWAOXmZFCc3PTbI/iBhDLVpbSZsJjkTUW
	 +v8Zj4nA4kHCqSUKBcpk4lFgsCMsRFxl9YuKwL3CzAEaFv8jFL0Xeu42axs8g8jrui
	 JgWkywtxHN/Z7kQl2P867Du3Y3N+HipuFktaRt29wXgSs/BnIq0Iedb/hsD/y2bET+
	 WsEnJt9z/5P8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91048CCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175930079358.918.8135011567241510421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e439c11688aa9e5e5b072b745b5d4580056e7400ced7c8a92f170d33147c427
Date: Wed, 01 Oct 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759300793
