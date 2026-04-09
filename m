Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18A211A682F
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 17:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775756254; cv=none; b=HwC3RW0HfmkcH754YYX5qRpPlV+UI7O001vkEUt9TisAmaf4su6PiG3fdWJI++ka/lykCSXewlTAetbT5R8e4QGFmsI382EVJKDQvJAFvCK7Qp1B/cCPU4I4U9y077U70kJDiEjzekAutDu0jatkviWLoT/gVp8gvpb7050eB7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775756254; c=relaxed/simple;
	bh=sm7CYzrjhMK1h08+rx9UEAbGi39lvdLV+YhhszH+FE8=;
	h=To:Subject:From:Message-Id:Date; b=UDPnu6axublq044zA1KkO+fbNY852Gr1w+92PN1hmg9GJeHLcJ3rWo5GbVXG62YPBZ/iiKBHp+CXrjdHTJnG9pjhwSExHmcSlF7ry5Kmp0zKo5aEVyiYSitOS8yTm4bjdAoun0z88IzAOq69KA76GFZNNvjngz1iMmVencVx0AQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L4ChvW+F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L4ChvW+F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C261EC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 17:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775756253;
	bh=sm7CYzrjhMK1h08+rx9UEAbGi39lvdLV+YhhszH+FE8=;
	h=To:Subject:From:Date:From;
	b=L4ChvW+F1/KcAQ+2X3HKornxLP6eSX691NUfLSGZs/xwg3uOC/vMljvNJjFBwG0po
	 pCSZfuRizGHqQl/6t4ZBfjzk0QFk8BWz+f+ADTzKGGMgq1cuJp7Xg8AKtZxW0xqJe2
	 sSt+07SWCGZY9qE6GmajddF+6E77nMD+KGf5stCw8d3JzKNcbBmT97/0bGmy0U3Mtv
	 ZjqkQwgmrVKNiWwjN4p+77oIPXJyZ6C8ZjCRfar/a2s8712xtO2P4RudJiAWSvAIN7
	 rRudJtVfgKG16PxGWkvfed+yOkM5g9k9EbOZLrgHMITDUBkG8Gpzr86rREPhKVKMXC
	 AGfKjeE1udQKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B13B3F364A9
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 17:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177575625371.19455.2715421385144708758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd86fd0c43c07fdf295a36cd604125efd086fa0eae665203ea01f47c32a4e357
Date: Thu, 09 Apr 2026 17:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775756253
