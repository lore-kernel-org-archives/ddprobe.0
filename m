Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20D0B2DEA67
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 09:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769850834; cv=none; b=NjyrLYAG+q34XGkMnX3y7mO9Pxf2ShpPBfOvW2SoRFgRcLtR6/YIf612DwwVF1+D/RbBffT6qXz8hAWlg1FYyrdRuYG9nuRsGa+vuXUfdM/FRxChwvMjeIwtCTlIJ4OE/OI127EFuGqhon0XSEX7yCryJLBpJa/GOZSm8XaoFek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769850834; c=relaxed/simple;
	bh=2xnyFkT4HvejxAGFIYnr9qriBPCJAvEXSNfzR/du2AE=;
	h=To:Subject:From:Message-Id:Date; b=WfGUEiB3pHam1ZQ0quVoOGdA+GBHxh+vHZGN9sMku0BLNQOSHjkn58McZdJT79kx0lcrK6NZ0hOGHUrb8/CLKv/wSqekwt33/6C87A13h4vmBLZ4Kl2tvqJ8XQXF15FGOk3pjazPHvUF525byM/IMfAiPBgzck7o+QhyxZDPh7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gWoXmY7j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gWoXmY7j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A146BC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769850833;
	bh=2xnyFkT4HvejxAGFIYnr9qriBPCJAvEXSNfzR/du2AE=;
	h=To:Subject:From:Date:From;
	b=gWoXmY7j4Lhh0Z2w9H8A6AHMTi6WGDeiiyi3Toc0dcbsyRlxkTPBlvkjR9dgtq5sA
	 ryT2HSzobWfTcGU+FgKneOYGL7uSqYrn10zfyWyh1tTrqy90eKf3p1s3AgXS8fv8oo
	 TT5DVQgYGmRPNK+Zw/SLWrvZTf+fInVCSg7SmTniDNJYcU2Z7BHF3vUMzXojcVfTPt
	 2rMAkhNJlRBR0s2SRFQVV2Mnns5wdv7FtcffranWgTlO3VkYr4tOfAJIWUXRfRm2kC
	 +3qXWmyW+/NBWZCkaG+1hS/svsk+PSOS59HkXpRnVJIctIxN2Xd1cQckr5NhIovj//
	 e+wAsv4xcwcwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0B7D79759
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 09:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176985083357.7446.9290223378339971345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef77c083dc0979bc8d914caf7511c8dbe5f7ea7efee0acfc62c82857940bd316
Date: Sat, 31 Jan 2026 09:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769850833
