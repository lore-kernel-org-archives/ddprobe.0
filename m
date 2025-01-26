Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F5517603F
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737887154; cv=none; b=uhj/X3tkTpCCWW2fNUR/P4ATwxuktPlHj2eILiw4SZROMBEEzqfLJHcO6+zxrKApgRcbdr9uyTvkNbgOpaWOSLi7HyQrc1iqHKEbTISkCAY5kiylorvBNPbH/DZq+XWbNofPv8Ko/UAwvnJHrucCxrkYa90/UKnSwCFpEtApo8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737887154; c=relaxed/simple;
	bh=WhZbD0PLrZdGyJjP0P+N7/iLye5g4q6pwc15YLk/6qw=;
	h=To:Subject:From:Message-Id:Date; b=m9LsdKFHlbmcLMSttqt+avdn+z8o3vrKrE5XPcxM01FF4/GcmWe5B1/LkwMjveczKx3zlHONppIwvZ3xRLGEBlgSAGl+VzutUU/BSUF1Q8oEEsewkOf+mndVHqcpcLXBijWrrQSuDJEycH//nLmFGjn+x9DT79n3W7yholmkgi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bXi8+MBV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bXi8+MBV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E421C4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737887153;
	bh=WhZbD0PLrZdGyJjP0P+N7/iLye5g4q6pwc15YLk/6qw=;
	h=To:Subject:From:Date:From;
	b=bXi8+MBVFbUd3GF/yJHi7NAgy2ozJysCCBzwBi8ZkrqCY8g5EKnNFmd7t5O6TA7qA
	 7U5huXYoRWY7I+ZOC6dCq3yGWT6dU73CeXH5G8zUNoXNJKjOfqU4860C7VBWXiZOea
	 lWNpbU6F+7QxOBWnOU//YM0bYVrLj03LEn0rtFUmMSSokgp2QOWPCzY+DJDcpfPKnk
	 4xjoQYmtguSy9z5uQLJyO6pP7aRuyPHZV3j9G+sZMSA6uqAoa5/yXHi5J62Bk3DhIn
	 hGDQjDTjMLBwxwmzkffFypY1sCz0PZXt2uGbzUCORyUgr1kfNuU/YyPkmj2ca1xoTm
	 P/2ZrtUAU/iiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEE1C02181
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173788715357.17889.16141639597748550849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2aa929f41da804e514283b5c60a223b5ec82744f5b8eb0ac1f8498023f31b061
Date: Sun, 26 Jan 2025 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737887153
