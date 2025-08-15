Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2282D20E31B
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755229195; cv=none; b=B44+2ovUhLA39DEaq0RCG6NklfzdZV1QbJc+GxNtydcGp1RwiialI8XXPsVDRJz5y0o5VbyGYAH+liortjzP2EP8N6bnUWRR5hobYcbLmVDbgHj8uuGwLKWbL++hQ2dp9V71DUG4of9EntmS9Utw1IcdC/uZ3KcTCCp558jUuUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755229195; c=relaxed/simple;
	bh=GHYG9ut4nVSe4O3CGxjyC24wZonab9NWXNJkia+rupo=;
	h=To:Subject:From:Message-Id:Date; b=iNUwlGBtspQ4mcxvCNqn9+3xfE7EOfoIGTIg2XS+cuft/6N5rJ/rO3VLgTbZDrFJkSlnCMQt6sw1vmEP3EZPtVXrfvfmmHQ6v5rOr5W2zReSAn5QtlG5AoARUUsyYw4hTn4LuQH+rPuqsT+gPrnF/fF24D1qOppivN2NN5muKHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WHX0Ru0m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WHX0Ru0m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0491C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755229193;
	bh=GHYG9ut4nVSe4O3CGxjyC24wZonab9NWXNJkia+rupo=;
	h=To:Subject:From:Date:From;
	b=WHX0Ru0m9J+8wE+BVtJ9tEnZiCbQVWe6IpExkrnFQR/gEmjCbXORZkzNyAmW8xgpO
	 sS0GK3VnOFidlg79bFSFZ6C9Ae/s5EnTgETkWLVEKKFBKIhARctyhu0uU8e6G/TAA2
	 mpW4GafZq/87lI5C+7y/dAmwA+u7b+943+3O6Py72AdGmA1V4EzlDMuCzIWi9hisb9
	 oov8q1RKWE1JwpkR3Q1ccFymtEYpoRtaZ00+ofX/V1bszolAxH46PPQi1dQiTpD4aa
	 F2cfox7PuDM93KW5gUXmjvzkhLYqXd1dgRH8DOcEHethGidoGDD6Nr4MM7TMTbfYcq
	 8QgmrKahq8NXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90921CA0EE0
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175522919358.8633.8848810725924140391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c721a1f123e32dce648f999dcc48d08ea730e597237ad9f16058e2a080c97258
Date: Fri, 15 Aug 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755229193
