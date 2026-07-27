Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4373B3BB4A
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785153034; cv=none; b=o2pGaTt6IdopJS7Cog1d4Iu9+icScvlD2RIAtMpxMi5P6e5I/ZDn5IijnJT5tzA+z0a1AILqvkuGi5mdYuxkEtjVlq2CT8hzo9Z33CNi2dDaaBnpOsh1dKwb+Gx4i+45r3ocoWPxIDaoJ0clnZSkh6geAHWOgsIyZGLL3qpap/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785153034; c=relaxed/simple;
	bh=z1JK/r4AX8klJJlgpnSqya4S8bw8NWOATusSHLLUe3A=;
	h=To:Subject:From:Message-Id:Date; b=n5p1MDjASMM5iZhQCLC8dZywspEl5VKH6xkvySW3ca5LY23940Jj4rEa/m+1rSlCEsPfytWlRxSSU6E+m8B2NJKqHtbgHSqLl1iDKLuOF5asdkb900f7rtDUSz1KSeWmQx4cbznLqxhS87laVuQV0UZ3nn3eVhq4vHxL8jpNFYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GnovkCRB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GnovkCRB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF6BC2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785153033;
	bh=z1JK/r4AX8klJJlgpnSqya4S8bw8NWOATusSHLLUe3A=;
	h=To:Subject:From:Date:From;
	b=GnovkCRBJYG3eWyfIjFRQrpWmbET0vHJWKFLWoFZvJhVonqfILPicgc9pFl+fb/si
	 6bI2ctv5dhu+e94xNe3ZsbLGIXJGOWy+rYiOhur0cUfZ+xTyzpb6b9AHF6hHJtl41e
	 l4a66yWJK/+0HeGYuLx7G5x4h0GER6xthjA/ubLm3PrCojhYKBSci2BRZnrmpMllCQ
	 aUAo6qVwQShkHBGtogtUZzHyqS+iUKnStOE+hVaqP3r8bc9il6ngOVV9sk66eg2H2E
	 sr3MC0k4Ox+UySOmUAuOd+vqZgoslbNKEDx3hOw4swf0z5+2zVUN/zS5kMqA/GJ8YG
	 BUgUw1q00qwRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEC3C53219
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178515303369.28799.12188222054538034852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a258abf4ab93e7da90ce2620ab92ac230993db0c39e8cc6bcbf93f2c46a20c24
Date: Mon, 27 Jul 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785153033
