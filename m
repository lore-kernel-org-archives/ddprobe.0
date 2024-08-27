Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EFC177117
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724786154; cv=none; b=iShOuZ6GKVt4ejO+u26xPPoyOdTiXXetvNX7j1vyHvi7muka6QTKPZHn2y4JYj22rcFQ6zzTFVCR8mr0rxfB9kH8dWxybgyf0npjHCZgRugynDlzzVWSceOAB4Q9as9bWsUzp6g4Ff/W1rC6RtIPppCYfFRHL2xSPyV0MfrReCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724786154; c=relaxed/simple;
	bh=I6WSWgLQLeok99dbcoYuiHV5MrBsut+EgVcL7bCafrE=;
	h=To:Subject:From:Message-Id:Date; b=K7rVMlQI7duLO0TMMJTMlVT57p+khHx/iRjBB78/lGLoQEJT2cUZY8bEQi5j3eRbOQ8YbzO09NkaZYPQM8wx/OQdmoJhtVLjsUgKR6Wqq+Y4GcXXT4OIWn9RqEmq/Cu7Oj02Ma2U0gALgESh5Whd8zpulrZmYj2deu7ZvE8i6DA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ITi9iCjT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ITi9iCjT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB3BDC4AF0E
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724786153;
	bh=I6WSWgLQLeok99dbcoYuiHV5MrBsut+EgVcL7bCafrE=;
	h=To:Subject:From:Date:From;
	b=ITi9iCjTBn319NsrD7a1Z21ITnvMU9eiIDXuSYyI6JedDloOUrViYOXBQlFoRroIc
	 SdSTXKO+MnFyXtzXngpzoHQPRmQy83lHuNWRFNbnYmWWn3zwQTId5gEau5BJlzQtcr
	 mxdu3c8PLX1Pfkn4RUYeQGhd+YzcUAohFfADKIOyQ0XP9JgVZui58UqchDR8FrCFbD
	 qnjcYYhqwpy3hF8vczhLQXVYz7Hgr62r2kUYUyiwuWoP9rczmWWyR5/Z6dVuCxSOwv
	 qoLKtOEOXbufjjyQEC4/d5VUq4VwHYKWX8aIkmBkPaqiQOPGZSFPf4aBkhN5Q7eic+
	 rrNotcmjEvHAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96603C54731
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172478615358.16772.1985024595203330761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8188d00f56efa65176fde43138150aa8e101825408c5fe7f2955726a59f86dea
Date: Tue, 27 Aug 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724786153
