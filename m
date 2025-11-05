Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6D42C0292
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762335594; cv=none; b=dBPpjsNl7COTis2U1zCY6rM9mDcB8JeBEBZH3qALm8Wt+VC6GI+ddHrFJdgHfUqvFPt4+kPcKKQN9R3AjjQdGupQH3A/ODXz/yDGpxDzGYYUcuB1fkFeKjIjuB2d+U4ith5QfqfTUqE4OXTaqWgI3DKbyA2D6p/4N+GoPTmoerQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762335594; c=relaxed/simple;
	bh=owiXa1cIkiwa1Np0Fbbx/ZwgGmJ06TY4YB8oNjYJoYA=;
	h=To:Subject:From:Message-Id:Date; b=hJy0XiDYEiEuERbl45zId4j9qUGL1IyGj13vJQEQU6cfCmy/TMob2pYm2xO6gxSRrCXm/l4ahLpbv/Pw6KovEPermWRI1AsKpXDRbMXgmQ1p6pHybikVmdnnvgqU9kKWzCGXn53YUdfW2pII8C4wtiRkfwz6/SrCAfCilLfgWO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JpMZ3ouc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JpMZ3ouc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B065CC4CEF8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762335593;
	bh=owiXa1cIkiwa1Np0Fbbx/ZwgGmJ06TY4YB8oNjYJoYA=;
	h=To:Subject:From:Date:From;
	b=JpMZ3oucAvkuRtLxApdcpC0vNarmVRfKDPJNflW4NFf8brN2Va+km3Um5a4Jr2yM+
	 LDizstcBhMhzSK0tNd2TwuSu4X/z6Iuehjl2Q5qHvnTY4ELrMMtbDuRSC+pwcMZr0y
	 cktO2Z5XJlx/n0+JvBaII5pRGgmebW3W0YfGscVK78xH6NsH359rFjKFV1HTonUDRx
	 AeGx91DgeC8NalmrEsazXEIR2xdOzWbmZsaNIRpcKRhHuesLaD6mLFphNtqI9o+U0i
	 C+FOtlbQq1T2zQ7OQbVkTB2CU4o/Qzl0hOB/JaSzDJteYiEtWnKB4YPvD28FOVqcaH
	 /D6XWZVefjtLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D9EECCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176233559363.20572.12136905672013438149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b64a32816ca5a6b314d134b92a5cf60a5ede779c156ad3485873244fe00809d
Date: Wed, 05 Nov 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762335593
