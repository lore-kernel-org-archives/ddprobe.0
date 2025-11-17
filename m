Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA0A4C9D
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 06:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763359314; cv=none; b=VN+WnhBzW2wuQIuuK6cYH36DxwkkoheLPB/ZCYh3hC8/Ph2is5JBX+A2gJCNONhfYxYF1uc4r8vMERkPCXrvjixJIsbm2v8iLbA5UkkdBA4V2AGt6rw7MOnn6idVjv7UK7p97UFlaChQBhXPSZeYXyduzftP4OVara1W1LAS9yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763359314; c=relaxed/simple;
	bh=ptsXEnL2eRU4TaPC62hIliYK2mA/ulIWHGHymz9X2ac=;
	h=To:Subject:From:Message-Id:Date; b=iBq2b1Zn7wvFxmipuvZChXKUmZ9BM6jTwsnvMFjqy+56ApuvpUPx6hYOu2fhkkovSp4CvAZvDGTesu+gmfk5tVhh8GLdQiKENjzK3FLX8fg3czxd1gcjXsobQLajmhOrZbAuKl5u6MNYpQZaM8RE/eg9JPOK9p5frTAK56uCzr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BgvMDsTb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BgvMDsTb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE7BC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 06:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763359313;
	bh=ptsXEnL2eRU4TaPC62hIliYK2mA/ulIWHGHymz9X2ac=;
	h=To:Subject:From:Date:From;
	b=BgvMDsTbW4SL072ZEotVUKgOPRGyT2mervUn/XFTVZz5ltZZ1JR4rPPhq5Yh9Yozo
	 KSw3GN7kmIJiJHEYFR+LFDRnAngkpnUw+GUBaQMW0jsM2YzQ5l3ecevM0OQREvILmC
	 fWDRLmmrzZ9ymN0c42N4yr0ll1tEqcTh8wDLV5JR1BIvAmVLYY0LzQyxGca2ncrwsT
	 aGRtSG7CN+mZUZgHRqVGhZLVs3jMmxuCY30xmXfB+Wqj6i8Ucmqc4RIxyOzYe5q87/
	 g3hf3tuoyVcdCRnGHAzwY+ALTnfA8EKmwwjvy9D+/vkd5ijhAAxAW3BDvQ+ctoDOOH
	 mFlRJOzPcsFrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F1FDCE8D6B
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 06:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176335931360.6211.1794962419432985561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b45b225cb3357ada7c1aa793ee4bf70af7ff2c74b7f864ebf54aa07896ebff64
Date: Mon, 17 Nov 2025 06:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763359313
