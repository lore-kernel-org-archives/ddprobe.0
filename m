Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2431822097
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 02:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767839034; cv=none; b=RGichEpHXOFijjPnlUaN7Q2M4K0nhTHLyit5/Acv2GJOpPgnxXHHQQmElHzZQYA6yuwP5TELgbLzJAscMm60t7kUvTPwbR+OtvsKCijGDNnEXihX3JUBVRcMbHmxBNEhqzVwc/c/RYfmG1I3bpYr43SnutxQ0BcI+w386sOSRVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767839034; c=relaxed/simple;
	bh=V0HBuwWRWvXpfuiTNwUi+UaCwWVdA99JbJgCip3BMTE=;
	h=To:Subject:From:Message-Id:Date; b=BLoER1FZAGyK7lLIv5kfc4gIdaAyvq/7Thdy71pS+kG7bQS1ClUymnhX678TJMPFzbBZHVN1dFl8tpYucAu65P0O5PBQ1nPpzaqNI7s0VrlJ20eQTRrcBHLKovt/+bqGeuACTNCuzMX5/HNUyYc2RaKgpolhKL/mhTfo2CUDdUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fVv5IpUP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fVv5IpUP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E33C19424
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767839033;
	bh=V0HBuwWRWvXpfuiTNwUi+UaCwWVdA99JbJgCip3BMTE=;
	h=To:Subject:From:Date:From;
	b=fVv5IpUP98lbMjhhrcCdllNzwNhPSip3Iw+lDkW6XWUSqiNqmeUglqd8vdMwMTprZ
	 5JVTwOWi8paUHt9lCROTW8xLs7mJ38iXfNT6zr+nA2SClMv+EVtU04SL9WjJCeLWlM
	 ZO/Kv/xTsei8jMNKZXYmXPKp2F6uN83295Ir/w2B7M9GlnuXkpEzYt1oJcQSbh/ACn
	 r8Cr4YBgX5fpWzRRS7pIQZley+MtnOYqOQ+yYs4qhttxUsVEJSPTH8K7C59GRNSJYT
	 5j28dlDTUYpzHJekplOaFpgzSWfjNQ6sgL70CgC+/23PZzVmhjEzUREbFVLeY6QHA0
	 RHW3dddIYxxFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9389ED14893
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 02:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176783903359.32541.17523923433140470615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 049ad935c3caf79cf0adbfed8053e200587a72d1b11d465a5532a412eeb89f7e
Date: Thu, 08 Jan 2026 02:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767839033
