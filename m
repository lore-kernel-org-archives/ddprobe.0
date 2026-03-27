Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A82B3D1710
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 08:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774601694; cv=none; b=pFj66CR1kQfcdjckTsadkxIyV8UKFudZWrqgnEzp3+D5WR4AAxIDnbEJAAm+Wmm3vqajO6b77PWrDoNpJrsRCYRAScD124Xhu5XuULAGPdziIlFQl0TiAc+mFZmJmR9xILqSIv3KXchB573irjh/EWx7o8SSZeMXHohjg57UB+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774601694; c=relaxed/simple;
	bh=jQMr/WKQx3FxEuDb7X0qFeNzSVV3E6ThIir5yMQPfMs=;
	h=To:Subject:From:Message-Id:Date; b=Tp2P+khqMUJNZHSsQxB9HHxCotNkH2xMifabwepzLvARU0RISrXb6Uh/aTKr1qy14mUqxaVARpISlNnyUelgkRceclE3IZQu8hi6aqkL5ZCJga5h0qcvKH2RVwDypUFTyNQt2h2exAgoAiX63fh3nLI6NCu3TliR4bzKa/Q19/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cZJjkMQ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cZJjkMQ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA06AC19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 08:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774601693;
	bh=jQMr/WKQx3FxEuDb7X0qFeNzSVV3E6ThIir5yMQPfMs=;
	h=To:Subject:From:Date:From;
	b=cZJjkMQ30alcZr+pwc8F0WzNY8A0dOZfh1qZPw4i1wq44AQW48eN0uHdmOEVWzcw5
	 nU39cTLTxr3gzlIkTgEpOwDtwpNCnCYtdoT12ZmFuFm4AX3NzspSRyiAhdiNww7AXt
	 z4BjOz6QBTtHAahsAejqJUAllOjDZL9epNbz+MvdLnQKCvciOY9YhAEVKok889gfgf
	 5X5GrFw13yOz5jsUCikW5QU1RF9Ql6NrZssotM/bhSHm+6JdDatvAU716tuuXNzN+2
	 HFqB1Nnkakzv0n+rBfAt7lnoKALNa2/YsqyD9H8ki2Eyz554WSlAVqcciae0Dmai5H
	 Xz42NGDTg5Vug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ADA310BA43D
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 08:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177460169359.11326.11561040538175518507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 435533c86ad7254df771d0193dc6ca3f6a0fc4ba79ad819d1666820bee8f1b26
Date: Fri, 27 Mar 2026 08:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774601693
