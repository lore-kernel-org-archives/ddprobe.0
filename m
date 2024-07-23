Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 533CA13049E
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721698554; cv=none; b=XjloOo2ZdhfEqLG7+NYl2USj0dt39+/jG7nvbC66eh6rUmcNynVibCy33KiMwfnFVAf69rvQncxQRM7dQzMjBbn2zin6gb+vJUGxpy1D1XTiEwd5uw8CfrMUH2V3ckXgv+UJWRqhnY4rem6veYUSxIPpkVtSvAfwxoZi44rnaJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721698554; c=relaxed/simple;
	bh=5CvxBxfiKduebRuM2/73OYqrjtFXMKkujkWS0TABbSM=;
	h=To:Subject:From:Message-Id:Date; b=LRO5L3uX1iygxQU0/O83NesXJoyU2V1tRDfto/yKGNBzcJ9B3H3VrdLTyIikh4hO2v2OrCiIlXI+iTIfmo8V4c5wTNugClz+ZTXexjhoM5iYUefxFPWqwB40PWFckJ6GF7Njzzxf0zukEWp3LZTX2wHEZ0NLPhGQlR0uUdUV+3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oQzQe4SF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oQzQe4SF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD059C116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721698553;
	bh=5CvxBxfiKduebRuM2/73OYqrjtFXMKkujkWS0TABbSM=;
	h=To:Subject:From:Date:From;
	b=oQzQe4SFFCzoIsVYfs0ocRpxLZWIrlOce1mSd3zU4iTxSf2zS68WJlAwU71LUqlad
	 3zHpLFZm73QNX6Ewp/lqRNbrjUVkA3fNppjtB2MQX97FgbRP6yk0QEm1rpJuRBDOfb
	 nOF7XPwR69o3cIFA4hOZKz0fFtW6ZzKIDua1/BQVGk4Lz3h4PhkzP+qJSrnso/zBz9
	 CmVKj5oqGkdYJ4ZyTrNhIIomMWHSZb3zIIYKfCV8/Lkki7nQjqhJS4pWy3tbO3da63
	 d2Eiu8Rd7OhZsl5XzKrSn7AyPfb5mx+Hfsmu3tiQt72MDPymYC+1jK7p4/f1tg0BJi
	 Vo6xoRCMss7ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7611C3DA70
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172169855364.22341.9521859147283186373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a88eefaa035be6fff4eaa21ef43c3a42b02e407cee48d0933891956d81ce46b3
Date: Tue, 23 Jul 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721698553
