Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08757535DE
	for <ddprobe@lists.linux.dev>; Fri,  1 Mar 2024 21:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709327297; cv=none; b=NL99Z8p5T6BMNKcWxULeaGKSd3RQBMhiyxtWBjnVaYnIE/Nf8tt41fU6a0FUUq+/nZYUob0JG8JGfEt0/pQfwmNFrZ/gANvwO/2DN/n/Gf8/w3NEMAWNXtxKs2FB5G37Rtu5rquTODSiu1KRcr/b1C3anDjo+RK0d3IPnkhcC9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709327297; c=relaxed/simple;
	bh=jyZUuwL8SGDm2vqYe3vZMrXfHUjiyd90TpWjB7EpPjU=;
	h=To:Subject:From:Message-Id:Date; b=BDno68nMYfRM4oglhz8TKLBPtpXBtRwiG4KU/jCndUr/Neh25xuWdq9ynFS35mvdPbc6rCGul8yXcaAXDDKxGjC6Kw2eB2XDEgGB6wPWco+3vdpHXo0CL2SDRFuxBO60+hLDQ0VuKV72/tj6JAfftT71c0EbWl0TkOjNmaGkmyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bos+40Hg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bos+40Hg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8EA05C433C7
	for <ddprobe@lists.linux.dev>; Fri,  1 Mar 2024 21:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709327296;
	bh=jyZUuwL8SGDm2vqYe3vZMrXfHUjiyd90TpWjB7EpPjU=;
	h=To:Subject:From:Date:From;
	b=bos+40HgnDF34p2U3u7dK/Hj3s4m47xMSJn2q+r3wDxPHb91tnd0nQuxWL27V4Ymd
	 b2CDe6GZv2zYl+7TSGpdNSZaGiTdI8YwTtNyNAdcp0veUP8YpNwgch9iYMt7KFgRcw
	 x25F55XSI0f27Nyt90wIpJl3OqbIoaD2/XqbkK3yuQ/XgghxMy92HKzIWDIQndfjsm
	 UE3YEBO+9sYivUgfhx/r0JSqkR7rxu2pF3jwZQJ1DViNC33bx0TnGnpuBAfbPbEt7v
	 /G6wsAu504TZYTk0GC7XXNGua2Rb2cZNqcZUPjN7NTfkVm3F2gsxxqdT3jCHj0acvh
	 8PoAlkTDs3n0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E004C5478C
	for <ddprobe@lists.linux.dev>; Fri,  1 Mar 2024 21:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170932729639.1179.10765158896371294727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b91b9b90ce0a5620ba839431728c93e8c11ae9b9842dea065af4b7d8a1a239fd
Date: Fri, 01 Mar 2024 21:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709327296
