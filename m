Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 153AD350283
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763038794; cv=none; b=J/QZjkht190FoJp575cLztGSEhbmP3fur8PxWBVQ0RWRaTIE0Zg/3Q2nDOpkPggig6PzV5r5A8XwgPPz20Z5Nr1MmU/pZ8GUDCpa9yDOcbCwL4KzGiGuGW6jSm3feTFCSfJ1T2lxT1lz9XWGs/gwsnDEJ6gII41osu3vcF2PAr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763038794; c=relaxed/simple;
	bh=RpNUzS0GL0rg20c5kXW6JNmtOhkY1sq4nIQ0dJjBuBM=;
	h=To:Subject:From:Message-Id:Date; b=YyyeceX8W8BC1pJaSRszeEIWQAxMAkqyRjhuTbc+Q8EbmP/NUng4BB/VEXt1gzjM6ZS/78JE3b4Qi4tDZ5rar4Mt7Sm1VSaDdkw3HQeB5EpGP2IH7606zZrQAkmKX0pQCFLczzTydH7BdObZr9A7srkrv5AzuVrWdDpTczb62qY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aXR1KzJK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aXR1KzJK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A070C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763038793;
	bh=RpNUzS0GL0rg20c5kXW6JNmtOhkY1sq4nIQ0dJjBuBM=;
	h=To:Subject:From:Date:From;
	b=aXR1KzJKbE6K71FDUDx2WjpGXM254DOPF3d6CVVsOdy0kpdqCWHGWdeW1dbc20ias
	 5GV2hwwaqF1AGdV5hv9nwqxG+YoiNOZZGuLs+f/y5JcJjsNmP+2S4DSQyN1xmu5r84
	 i9j1lTnSHbKq0ciSJXYuABeFgndQsgrkvATqKD4LDNnrqK8OCDxR0Q0MYvTbJEpxaO
	 Oept1EMJz8KK9maelRS/anmnFetb3EWU5aCAp4EaSsaK+bWSf81Xn7K40EWTaZH+lC
	 m3pKQHIYHBoEsJHofPuHopngu1OC8TIrnjSpjFm7eEWRdhWlAfzO0UugjP0LXif7N6
	 iC5OW861+wXKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2C2CD6E51
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176303879357.26119.12600637615511615064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d236c095223ee5fb2d212a550b7d8a7c51d4ae8c05151e86c5eb193f1d27ef96
Date: Thu, 13 Nov 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763038793
