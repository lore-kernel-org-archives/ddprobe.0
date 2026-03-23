Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B9DD3AF662
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 16:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774282494; cv=none; b=aCh8BKF3nKfgmGSl42VPjkJvmChbefKmvLyLDyF01R4gx5ICSIUeflnG+D+zE8UEiPsT+3/4NLxQd6nHUGY2zBnhEgjUf+iRW8mMFe9yWxsYgCUhOaPj3bZA8TUaPfLiB/nzzYJsJAu3CKVcLpls51ZaFXmASiGuhQ5FaeDsuY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774282494; c=relaxed/simple;
	bh=y4zoYQ6MN2nEshJ3wjZrKuvKKrwBXDjfiyKblv+JPzo=;
	h=To:Subject:From:Message-Id:Date; b=pVVQmt+BwpjxUUK1n/7O+Fn0bUMvsTAmyNvX4weT+bJxWqFvzbeVCtVzK49jiWJvHQ9D5HbAfLDh/SMysT5mhX018OoohQ8/uqmuJYFJqbtyKGKjtwKKT6klnOhRIRJQmDwIdrNQ5YS0Xe1NcCsw22AeU/5Fd9HpHM8pn+Ys8nQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qkgGrNFY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qkgGrNFY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70B5C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 16:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774282493;
	bh=y4zoYQ6MN2nEshJ3wjZrKuvKKrwBXDjfiyKblv+JPzo=;
	h=To:Subject:From:Date:From;
	b=qkgGrNFYOQM1Voxo8UcpW9gZKrXs9f5/4hCAbqeI/YcLGMj1UhPDbmxSX8HTGTqHI
	 prU1geGXDWlo4OyPCosOgkEMFNEuSEcnKggzsg6GQQuu5t/GZSF3UNaF2Hz3b/qyJK
	 HK4Wu0SSwaACPiDCxiZgI9Zm7unhGMnGZmIvOQCeAWk2NQiDYnIqW/RpPdRWFMY68G
	 0oBd/GUdJTMw5dpX+tcIY8JjGnVbviiQvuCdDsDbs9YNpwHjy1cK41i0SQ/aZI14Wh
	 8e1v7/zmFau4a98B7tPRB2//FE9noC/u5hr504Ytk/q2rZGOgMgOll1ARPUYJmPWZo
	 w4i52tD7XLxjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961A6F483C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 16:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177428249360.22034.16064036823371371910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 318aeaf189e2c9a9c52d1ad5a2c7036dc7ef4c6bc2976e7dc7ff98aac3655ca6
Date: Mon, 23 Mar 2026 16:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774282493
