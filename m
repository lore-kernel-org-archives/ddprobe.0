Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 638043195FE
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792373434; cv=none; b=jhbS/GbV+Uz5/m0WnZYHkHzAyBi0ijWQ+FdmMtDf3lCTjT15gmtgP793FRWXanHaEQxIx78i+7WS4hvBR0w+2CNadd/hki93UDVY6cMCoAgM4nNdsd7wwAIQjeKalY4MfZO2Ea2zHc7nIcNsBkPSLlUjtVYXBZKkdLeW3xF8F7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792373434; c=relaxed/simple;
	bh=yRoMNqtuSm2EIwMN1SAGRJ523r6usEQHjYrHmihN9xA=;
	h=To:Subject:From:Message-Id:Date; b=i9+BK72i1aCVUovgOwbXT9w4n9AXi3oXZLORKVZw3zAuAoZdwTR6y5q48mboJ3bxDGwx0eazj6p+CyF0Z3lBqqgDnzQgOZrfcc5SPt1wABrrbMj/bKtPGPqRPLq4E/4NQCPDr+aAGIHjVes3SnTHCixPyrFXAMlTsg7x/XvwJs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HjUDEXk1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HjUDEXk1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D507EC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792373433;
	bh=yRoMNqtuSm2EIwMN1SAGRJ523r6usEQHjYrHmihN9xA=;
	h=To:Subject:From:Date:From;
	b=HjUDEXk1Wan8iYrGPBDkt+94bsIolTmhDkrKxQV15WfyjLKO7Z3bbHRxCsuc3s3Xp
	 ZlNDdC3zfvZTOhM5aCBlHe2xxEn2TE4oFmEbUp9APpx7NQKN1CSs9idUf+ySKYuRkJ
	 ZzkMPMo/ICGUhRIba6bshSWD7Fee2RA8bhgaXXQRCdP39WmCHvEuIUWMf/dSbtks+g
	 BMTjIQbmJVanZ2ra/rIOAYzuD0TUZnCKkOZFJwLcijpOKJzuHNdU5yH8huC/YtIj5o
	 fZxGqNW3bdIPntBcuuQd8d286lCkA6o/myQ7CEprvUrkUE7e0m+gyli8a2B4GAXjJr
	 L1pyu4ONeooNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB52CCF2D4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179237343368.942.17030161675263968891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 825f07a4ad81f60f9977bf82f51f6649d698bce1b2b511bfa331fc04e8cd0186
Date: Mon, 19 Oct 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792373433
