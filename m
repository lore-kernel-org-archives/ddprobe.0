Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01A702DEA86
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 16:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767891234; cv=none; b=HSZUjIhZGzYxHCxXExQgTuotSysrQTmAu/CunHNGTW7tIhiQqf+f8RXoatVJnJhB9pTPaF/rGZ2kRJI5cAEhiTKCmVJ4lRhw5GgcDvFdqBpBKOgi/MrcSsz586Lsy+Q8iUDsln0tLLqb8ndnvNvCe8rJIq2GLuLoWOpgoDOB2Xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767891234; c=relaxed/simple;
	bh=+wwLKMrT9lUKZLQjORFlePFZe4A3tOfcA7iCleJLWss=;
	h=To:Subject:From:Message-Id:Date; b=iERbD6EMBrymM0jlCOQzSPwLo8HRnH2XJ16QSY1KspcKg0+wZYoxA11YrYYMac1tEVBkJL48y05JgwA99QxwpPDcktXPFKJ6XTt4+EsKYx3mWQZtHQWRnPKic7RZvHtja26GKhT1Z/OrON0cck2mjT2/2oTRMJxAakYLbQk0kSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m9C6EmvB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m9C6EmvB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D5D9C116D0
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 16:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767891233;
	bh=+wwLKMrT9lUKZLQjORFlePFZe4A3tOfcA7iCleJLWss=;
	h=To:Subject:From:Date:From;
	b=m9C6EmvBMfRdoZn97775SoiCFfn+4mjfeOcCw3ek3rxbKH35uDOERAO3WI4U6WXZK
	 LiFr8WweOkr37QZ6+or9BY5kA74vcRKuDAneSGDMsvne2oU0H6DTxAyJPnrdMERBCb
	 Z543nZcU70lyIYxwBzErmREV51ShxJZ+IPilQ8KK1SAprR0IB+sa/O2nuHaoMmdaIB
	 BD1mxqgMVDefhzPSfoosfMeenf2i4YDsHGSQHP/1ZCZKkIME7r21PpWm/M+7DpNIm7
	 0B+bZX1KFGsjOVjyWfa/25cUCpU1lHIMhZeUqa9zRvx0AiKZJEP3IrdyBxzoV6xTtX
	 G7HnYsyaHtvyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD32D1D480
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 16:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176789123358.9954.13953364881713847345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6ec691d15e3580a15155539aeb8a95bca3ed55e17e4054d5466ab16fbf6c857
Date: Thu, 08 Jan 2026 16:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767891233
