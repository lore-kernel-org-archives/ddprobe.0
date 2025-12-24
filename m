Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3165E28FFF6
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 16:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766592834; cv=none; b=efk0+wEgaV/9VuhnvE9qYmT4FSnQfYJr/VmrQpXgM0bUugdq0WshP+0JC+DP5DJLx+ac1REqvOCQgUH+De942L3drVDdpJaG5/GKgo7Ffc63VZyDifmcfEAQ3c1okkHz0QRbFSWuCYv7Cg2nyGJ8lk3gMQFqaPTGZGWiz0HbFC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766592834; c=relaxed/simple;
	bh=c4JxA9E1mzBXJ7ZZJy3/eGmr8v4RogpYuq+hqthGoHc=;
	h=To:Subject:From:Message-Id:Date; b=DgfQJCkBaUm5W02IuwXhhk+ljLgjtqLUw6ln0ZzKMm4xySovn9iSIs7iTsK4tzKlXJdhd/Oaid3s32bEJLGreAd7exsxWFkMpfDSUSjusku2Iv9ZXl4DWqa1Rm8Cv0eplnjZa9uFh5/4w/xWj7U4NADl4fRQ1PF9jxyl2y/oJkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ksmNFV9o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ksmNFV9o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3038C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766592833;
	bh=c4JxA9E1mzBXJ7ZZJy3/eGmr8v4RogpYuq+hqthGoHc=;
	h=To:Subject:From:Date:From;
	b=ksmNFV9oJV26s36yuiBdjTprJzg0uP2kuxqmZzOP2ijRU34gjLcvNSY4HUNCT5svP
	 2ZWkRleW5db0fPn6EoQbiTfsBgTdjmKn0aOpPgRf3JHzsBjK4cwbM1Ve2Lzv6Va4zK
	 rW/zv5ZjvECg3+b3lcDTdK+EBYmUnU5wWh7TmiihmPdJY+Iswv0z1PQvgGazVbiRoM
	 IP0p14ARzHFJ8cQDsr+o6lXKxPUv5KK7CjleDam6Fzm/ah7uBSXfYrpSYRRZ1nYkct
	 68bG36v5AsZcnwEr+deNzmFi/15rCAbBwmQhqbMms+Z8XzDyw59cH2Ju6ZYeoZnDld
	 fOk29iQ0daXxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90659E776C0
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 16:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176659283358.14411.11276235609616503346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a707f465319cbe6ec8010549816908746609163111dbee7aa16b85468969267
Date: Wed, 24 Dec 2025 16:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766592833
