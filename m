Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253D91D618A
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 15:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772898894; cv=none; b=Df97JjKSnI4jR+fKiY0AEAaeGl2IZRv4PTazoBXDqfvrIkKHq6ikynV76TpocOZCAz9+aYM1HNf1XIHEwu66sCCAn/9wz5gRfam102BekBl7P4LKCAagWRWeB0uEwQYtUqNgsHNahM933SXXNu/IjRiDvkmXcEuj7iqSkAGXeY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772898894; c=relaxed/simple;
	bh=Qtsjqr86nvGcn6IkV1WpMkDYy4giN6ooOrBuRRC8IVY=;
	h=To:Subject:From:Message-Id:Date; b=iJBzISsiriPqIYdNsW8+tY2UDTeQHNHYQD7sQM5g5gXW/qep18TpHaPZhQUjaEYtGddjL1sdIc7MygRI+uoHwAtslc0qeaMY0FiDjf3U05t2fN1VWBmbzQYK6BcgH965rNduBXzYSoxRSKwicBP2ipsFguJynlgbzLwkLc/RNCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ezFTzvD+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ezFTzvD+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACAE8C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 15:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772898893;
	bh=Qtsjqr86nvGcn6IkV1WpMkDYy4giN6ooOrBuRRC8IVY=;
	h=To:Subject:From:Date:From;
	b=ezFTzvD+FXE6hZ2zFJXcHmnsx5CTg47tMSOXk8WV60BfxSYKhwea0Cf1VQQbBfnTn
	 wUW8VvWC8zp6udbRWKb/fZym5INSwkcQ69F1Xwz4gDtPmkWgr/4u/nHI/hvzrRX/tc
	 JFBVG3JmmLwmToFYOVsJJliQG6+wvRKR8zCigIPTN5lEh76ZJ59Nn9AIY0kaNXNz24
	 QNgw2Co49qR/V+J0JUQDrqQediR9ZKVWUJtweji2Dpq9muvRQ7qNw9VVcIkAH0MQUC
	 nsbsKoCMogn0EidOdFT0qJEBglgvgRw3uPVHHw5XUIVrRZlLStBw27TNZMjvvBIFG6
	 UYDkPcRcLrWIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93156FCB602
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 15:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177289889359.15024.5968740718001556841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 277353c2b21b8f556226dc154a5393f717a0aac4cc1b21a620b54ce8a51c7a54
Date: Sat, 07 Mar 2026 15:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772898893
