Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC0B645
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753744794; cv=none; b=ZAc/6UOLRQMJ00nPyclEdHrVcYOnZvgtpghO1PfG83B8kt9af2R5hrkvrSM4almhLAuKztw67nZ/J9DP1+RMUXzdLwrznvwvgYF8Lx5goG5NlpAA0T48P3g5DvK/L2Wrk7XSK65gC4g4UJtExR4sUUTyRmV4xRjIKi2C7sn5XCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753744794; c=relaxed/simple;
	bh=FXYYnI4/fxlGl0rTfpGFStim31/hnRhKWZAPbPIFcXA=;
	h=To:Subject:From:Message-Id:Date; b=BbiZ8YldDRFLWdZLisoD6NzbrBLsDFzN1iTjeCuwN3DJGLKXiKmDgyBsju/FDUq0tCIWq6wi8gUhmbjuypGwGA/L9oeeioTVB3ZPyMt7wtJnZsawhiVHNhGzCg1jHcxyFQZqUzknZSgCMxthUaJJTOIzyPnOPOjSjwqeODf+y/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NvP7rgDH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NvP7rgDH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD6BC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753744793;
	bh=FXYYnI4/fxlGl0rTfpGFStim31/hnRhKWZAPbPIFcXA=;
	h=To:Subject:From:Date:From;
	b=NvP7rgDH1q3u4i2CEcjH8h4T9+r+UXmUWghdxXLa68Jxc2VvtCvqRCRNW4vqsd5vK
	 b7eCP8fHkCc6Hk2x0dsNYXtDJKaPH5LR/5mUf6yjYxzUegWYTSsTdlHoHY5LWa5bXL
	 pkZwHpGL+oRiWfRMjfxzZDMMiZVJiDPXgH2VqBPppmQqbjRCiYiKRUj3rIzJEngkOt
	 2jBnLbniGkRJ6GuBLnJcm31pWah/ThgMZM4L7Y5BSgdKd1AqkS85gRhptn5w1wSmQr
	 KzynJTh+BVv4PBkXiEGgL3A5Da++qO+y3kSIyGSewbdv2Au5/JwxcXT4gB6VDPOEf4
	 tarujoT/iIq6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E80CC83F17
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175374479357.18947.4958735374274957336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32515ac17e6e8e0e7633eace0a4b3439860f8bf19a5ea2ae7f826e658e0e63aa
Date: Mon, 28 Jul 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753744793
