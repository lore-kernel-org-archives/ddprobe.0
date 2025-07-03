Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6AAC29550F
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751525993; cv=none; b=qRW+be9iVw6onyK+P3xx0af0LVaUK1Sn4qsKpv6GvAXxJ2eUAP0SygwfK9sFDQI/4cyD7rHDS/XOsx8PWH78VlhZiTtX/onBfgDJAUgaImHL/Ll3qnRVuEi+gbtgQNGsCaU6ATyTA9MqJOTLKPXyQkQOuGNBZe2aGTz5FdWzB7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751525993; c=relaxed/simple;
	bh=K0MieNfXQnxCUnSfI29yt2y66tKxwW0tyMzJHbvhE98=;
	h=To:Subject:From:Message-Id:Date; b=QrWMkNRIl+/gjhvcEP88WOQJjFxRER49SyOU4L0gC0s6wV30sDDBdFNcugLCXOKX3REqbmJqZItoJcCpoww97XTU2uMoTssgf/1JcfWL/zeIPyO8PnXnyBxeKJCdm3jharL1UCT6VWMsVkYiNP+13J3JaiwWfKPYT1LKo9Arxys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IDzmJiB7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IDzmJiB7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95B3DC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751525993;
	bh=K0MieNfXQnxCUnSfI29yt2y66tKxwW0tyMzJHbvhE98=;
	h=To:Subject:From:Date:From;
	b=IDzmJiB7ZGqxSSQ9ELcXkbn2LGcJbwscpJZo1+XfjiQ6NU24Y6esNTaKnVKJKVLBS
	 xYiMWqjpyp/VLvqIHagQNMbowIcUUUfXqiNtLA7ouE1Q8nNjugSNhVWHGmxWDiH6PL
	 hLyYjtuNZwSDyrrQYXfdLcwAaAoh5KgetKaDnt0b36pWvn952laUpsDN092PKhcY+Y
	 1aThcBKsevPMz8/FA4jXMt2FzV//brQ2UeJbNgw90u7x8C7O4LDn9Oh0a0mZn+mNtt
	 T6a89O1j5BfaAEUWgEMDg60cYygJNJbbUGCJ73Vf553pVI9YiEWIMCa4n0VjvWKhxk
	 yeHz9c8qLiNbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E56EC77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175152599357.7159.11139682269814022681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e446348de10a4c7169255fee6d3da115c1d44837d86aeb4535b377c9cbce853f
Date: Thu, 03 Jul 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751525993
