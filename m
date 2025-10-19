Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23AD8433B3
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760864994; cv=none; b=sjFTwziiqQfPrDlIV4bIC2zg1n3A6rJLeYLyrMAVPERiCmjoAGFMe1ls2O7jawMchFClnU5KG9t1RyZczLPTnOj+ak8W9qSCjCSb0vyQXTQnPeCU9ejwA1LDU/LXBvzFFyeQp6NI4b2+WWsNRTCf/V+s+rJZmBej3Py649BNwFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760864994; c=relaxed/simple;
	bh=LIxnoHZel+CILhDt962uERDAgaBMiskK3HN7/EE6OkI=;
	h=To:Subject:From:Message-Id:Date; b=A9aJtnSlZ1KaloAKmv4tKT4FHHo/WJf70rtBQ89YJFF5aBEM7twbvun7ZjAqGcal+shIvAAlRw/SnxgAlaIxzFWYny5aY2RJAEB3zw90ss6AR6ycEZZsRVLOhaZyAXq+oyc6Q/lx0EbKtb1U+lcuqPbRbU/KXtqfbmVoUJ4tokk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PdWdolAa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PdWdolAa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A782BC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760864993;
	bh=LIxnoHZel+CILhDt962uERDAgaBMiskK3HN7/EE6OkI=;
	h=To:Subject:From:Date:From;
	b=PdWdolAay1d+XWSdNrPvb4LmMRKtF6NsRcGTNg8KAfnjETHfU9Gt6xLtf3NGQA/Sw
	 W8NZL3TWfv0CgWgJ++2G5XqUBbmiak9pnr8PP7vnP4bQESXS+HQ9tcU9o3CNJl9H9S
	 qLYCVn9RVtEjHIVKpXg+X28vDbz6G3xVvZpOuWqYA6Sj2AOWTtpA6BVQ1XX93PmXlh
	 0JlE6dQW8nO4WRrVnxCQLHv/YK6XXNruzz75ruEwymqSNpej3S9P+QqUVvM3bqcoZt
	 N/Xl9cL7hDMqzcEYIsiZ4TelLqnOazCwvglRIdSRAsBTEqCMT2O5kalkroJGB3yXbS
	 +ET278GcuKZ4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953EBCCD195
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176086499357.1928.9294580452946381238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33e87c6ecb8da72fcc26b9a64dcfefc47f7f902f0ff7304444878489f8d6cd99
Date: Sun, 19 Oct 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760864993
