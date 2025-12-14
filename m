Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE023B8D6D
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 13:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765717374; cv=none; b=YGVI6QOHr5Z8ud6WYCsqw4FmAEPYFTcdfbZJWFoT13dB2hY+2ccrDXGLgJGHmoNhA5QBefI0rvTO5YyN9VdDRwpr214JZI81NL3r7K6U6nnwJgw1rNk9EwR++YE4aeKD7Qi6nFgi2q4qPo9+ZIX6rHlpDHiQMu7qAVDxTAASn7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765717374; c=relaxed/simple;
	bh=rY3HZK7fZl6duTukw8Rkt3n6EfteK05Mg6M8lVdJ5HI=;
	h=To:Subject:From:Message-Id:Date; b=LzX63vjKWQiIffTQ4kxwstBDn8uJ9mEe65oON542mmcI/7mOi1jchBY36Equ4DfnWNhItHaZjgDZ9d5RtOXsP1JK3Pxt11MPJgs4LnWLwvea0alaDRzIGJir1chjmvU9doQxnAo7Vg/eHLOzFhk6giIoCqPrrID0VYEI20eof+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V+ajtao2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V+ajtao2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F27C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 13:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765717373;
	bh=rY3HZK7fZl6duTukw8Rkt3n6EfteK05Mg6M8lVdJ5HI=;
	h=To:Subject:From:Date:From;
	b=V+ajtao29Tmz4g4XoDhjCUHWrDNZlAuk6u0QSsAOCbVqT4oinIrZ2NzLSyC1SWiA2
	 OXpFCQ4vHUSd1GvpX7pe7tQUkycVtz8+jfXyYVGqT3JIvJGeHS5m9IetROHSgp5E87
	 Cfz9o/2h43X45nuySuHaDFDLABx7H8/+QZn97d3yriMbddVInXbMlP9tVfY4zen+AW
	 YKPTcpEXx9IrmoL1G0zuSCwZDAWbfweYeZXaDfGhAc5n1joLQ/U5JMo/M0EMzWhrby
	 Y/+0S1jVMOaZpXtokVvuGYXElCD0EZj56svGi2spBMEWdAdP3CpXqPCw7YOXT7bvfC
	 Ty1i101HDHi5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91100D59D99
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 13:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176571737358.6354.16202102024578341223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1fc2d521a1a42304b4b2d1fc9df1798e7a769029b2f397838dc9a7798691aec
Date: Sun, 14 Dec 2025 13:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765717373
