Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D891414DEA
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 15:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783091315; cv=none; b=GAwkRTnnK8qwUxSTkuCrFn+Yf1wRrFbo2trnaEeN7MpLPsYDtejVuputs6vRps+PPTKJdIQv5lU63xD9WLi10U5m6aPHnnKC38iB6O9mF0H9cpwjBA8P++9Gm/uLXaepa0qEd2GpgSUKKGoQwqt5NADB+3kUbRwISox9NH8YEhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783091315; c=relaxed/simple;
	bh=4XbW8rFgOgnvZt6FaJfSRg7FsUR6APauoiIBmg6MdDw=;
	h=To:Subject:From:Message-Id:Date; b=fQpKId62ygw/OxKbmCZ4tKfFoqBIKy3ve8H1/qerkfD/VP+jPXYdT39FPPR806zh3MgM8XNwDN/n94pu2FCinjBtRqaMtqApwBNQHysByuPsBf4VhcOXsu7tlcXMsgFHGmUmxD4P6HhzS6brZJ/6zbpN6dukOK0r+PboEnZXkBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=byFcEv7K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="byFcEv7K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDEC0C2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 15:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783091313;
	bh=4XbW8rFgOgnvZt6FaJfSRg7FsUR6APauoiIBmg6MdDw=;
	h=To:Subject:From:Date:From;
	b=byFcEv7K0dOS+lO+lgtn84T5tQLKk0MwEOo9KA+1lKQq+Hsy79pDwB+0Py3DTXpPF
	 6nsgTJYiRiyDPnFisx7GOkAujR7kLiIYsfbTyDwMJPPzxGR2GbSZUBNmAoCg2rg/ee
	 Jm/fq3ap0bDp8e8hcnx10Haswwk7oKdK5euM4zT2NUgkf9OOM/NiLNYcaMqHC1e6pP
	 z+XabmYt4yQS96NWBDH8Wb1dSXAVUiSLo4k471VhvKFvBxRmRYe0JSbZJ4KAQAa8Rq
	 BZi4zf+l/jNj2a4W5JV6yN/P+TWqhEfBCnOh/LxgDp7ybdwnIQcIaEoihevAFbR7F3
	 fteqIkClecDzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DD8C43602
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 15:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178309131368.26820.14357081161078907234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53963ad7e883aa7b376cf4adddf0d1caa85f6613c0121691adc9514191856fe6
Date: Fri, 03 Jul 2026 15:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783091313
