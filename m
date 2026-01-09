Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 107EB190473
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 00:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767918234; cv=none; b=r9mx72EewqQnFnM6yTQUKVtohBGSuEcivo5XLyZYCfzMegGrSuaBPiRGYi9Z4+X+6FsvK3FRqPhBaPM234FKgC7yz5P2cPp5Vwuzjk7CR+9cQ5lmL3yQwhA0sj7jGzjQuKT38oMasefk4eX7mX8CuBohhYNAioKUTi9X+Qn8ZEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767918234; c=relaxed/simple;
	bh=TVzv/1L7mzfyDacaPRvZlENpGTuxlebYCMLPjprmALs=;
	h=To:Subject:From:Message-Id:Date; b=YkjF74lwmjnJvbO8gPf13dh9eTAbAXTf5PHpq/nG7SDKSPmRdLXafM0crDhM3htJT/MXyutmNK0bVLvxd1wONfxMh/D2iPpZ4JLph6ZCRr94V74PT4QiXJgZQCQ5yVStQsMWodIxAqhiGF65VWAPeCTVtcbG7bCiIJOkvTP1CFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KQzwS/Sd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KQzwS/Sd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16EDC116C6
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 00:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767918233;
	bh=TVzv/1L7mzfyDacaPRvZlENpGTuxlebYCMLPjprmALs=;
	h=To:Subject:From:Date:From;
	b=KQzwS/Sd4ceUQI40awWMFaJhkwk+krnRyXw42fP1UuLGNWE6uDIROugx6h4u/d6Ku
	 dtwMe02mWXbXi4U0G41k6y+cFZNb+yBzQbz3IX559jadV3X5DjMbMud1k4Fafy3LL7
	 JjXDlEhUtJ4ghZOqtJoLQDJxHqMvltmjVJ0WGHkFQt6pZU2AW6pUjuzuauLS7Swmtv
	 YZuQV442pUChWFcT/gGx4UaCK+zz7WMUYJNOJJylf7OB8K4swasgOeH3cCi5xyUYVt
	 PJ1MIeVZwzA8itOZ8EbR1RfiUfgBgroSJyq1dCd6TDUcD8BQiQ2XkSFupll1zgk+IN
	 lTqh+N/NSPL6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9014DD232C6
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 00:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176791823358.10810.17848048218568945515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7fd81a90ac50b1d2d6e0b0bc746f587fad48af7897ad4881d73fa552c2f6234
Date: Fri, 09 Jan 2026 00:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767918233
