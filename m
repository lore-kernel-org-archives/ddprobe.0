Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D02931E822
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786495834; cv=none; b=rNlFnvqb1UWQcQx6ZmCGE76EAvIrl+wM95bglTblR+6S7zGZ4WBBT9ZYHSlOcsBeBUSg36dj2Ul6CWW1w34Zaf96kfEYeDY7jG0mBuLivWGN5VnYNVMs8lTY6rqcRlb3m2pHpCwc0XFmbvfRX+NZQlLK2iFFzKjHaGccLYTj9Ws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786495834; c=relaxed/simple;
	bh=PMeXZd68ObvRf0JjWKxvztcPDeiiEAADB4ChbSk/bqw=;
	h=To:Subject:From:Message-Id:Date; b=F9ngnYXJ+P+OUrFarFqbNClGU9iZ9ER5Wrl+nSUYvbnQWOK+kCmA0bMhXxpZAcgGnaYZ6sjYTVlqa56tEK6V3x87Hmzc5LfBxhcCv7ums4ol/n02ZTj5+1c1fWxSx6hWUgEslwflM6w4MPTH7ApfyAGHaM38JfbeQK4T4/KQdqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cg2CpArH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cg2CpArH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F4CC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786495833;
	bh=PMeXZd68ObvRf0JjWKxvztcPDeiiEAADB4ChbSk/bqw=;
	h=To:Subject:From:Date:From;
	b=Cg2CpArHYHwvK5SUl7IptSlWCJojGH8mM1nqZiHiAeuuPAs4vrLBdyu/cn1BZztmQ
	 JjNPdXevpPP/Y5vu1UsluvfSBwmgRr7S7aK2or6s+yqF2id/5WL+Z2Mw6+oft6Rv4S
	 fsMnSKo/8nVXpg9IucrVlsCbNgzOSkMjQKH2s0tOmjCugtU9iwgvfz4fVN4wSh6Q/U
	 RZNunzshKQ6We5qkb6fL9jYrztCipQzJN19I9vt9Zzu4ayoe2rlxJptC7G5mtbQtnA
	 zSaOD59AoZlQEKFpglj/iVB6R3vdRRDHd2WeTH+HcXx5sVHhe3WqigqfcFzrhwmYL8
	 lDWAnWV9XelSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF155C5CFCF
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178649583368.6384.3299657690383109712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 763999fee49d9637ad0653cd842e126643c694acdf61c8adec59f017e8c301ab
Date: Wed, 12 Aug 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786495833
