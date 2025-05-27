Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378202F2F
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748312994; cv=none; b=q9ih0Mo7E/XbtmosrbqPsKeKQopqNROwzQQNr5ewnUhfW7QZswF+vtkObUWklzBCKaf1ahqSXf7lGFmIcJlkvePpvvoOPaXgBHt/NOKNUWYXxRK/B9q7JLUPiZe+u0mdn4AH60Gw15LGEdsCFU8whX2PJjciVs6RPvawU9h+HTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748312994; c=relaxed/simple;
	bh=3JwvhqFjMjLrthWOrwpc2fxu1S4ceJzJuPjEEY2OuiA=;
	h=To:Subject:From:Message-Id:Date; b=kAe3OLkgiwc7KSsprGHwCgZW0KcFbP+C8mZM2qh6Pa0p3V6jdFLxp0AdSDJp4Iq3ApXrlili+tgwoUnEww2QQjQ//JQL1LEBqfxa2dGADhFDHV8I3FWT8bgkWkv6p2k0mA2kEfu934MxU0B+teNoORSCvZ4GUBUOhcgH4vA7724=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A8cSmrMB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A8cSmrMB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05F9C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748312993;
	bh=3JwvhqFjMjLrthWOrwpc2fxu1S4ceJzJuPjEEY2OuiA=;
	h=To:Subject:From:Date:From;
	b=A8cSmrMBEi+xyqr4MXDSgBxpZLodCSx+sfv0JOi0h8enFlDYv9TQfjwFn7JqTgtY3
	 ZjOaycvJq1dHaPd/yplZpdImYOHaJUqH1FKdEObOa+DAkwFNhDkzbi0uobicLjxdbO
	 52NqfiqRcyqMrHfQCm9kyi2rvs+cT0Er5joxz1H6qEdGtLpfdM17l8UMR2BQJA1Fo/
	 WJM6OIltT3IiacgLoUsUux+dv6pjSw3vmPhLR9vVIc5Hl0WB9eStGbIrX5Ug9Oximi
	 LVGrYNAkT5892j8OQ7JY0atzSnMzMrhbNTp/t9kcrJgW/zRLPzAOLxmg0colwxoEK2
	 GpqTiiN2Uy9Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E84BC54FB3
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174831299357.4598.12361816159850255913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af0bc1882dec37a0eaf95aeb881f0b541b5147b91e431aed5c6547330be90712
Date: Tue, 27 May 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748312993
