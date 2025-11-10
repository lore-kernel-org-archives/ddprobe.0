Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6190334D395
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762740594; cv=none; b=HyunLeHyfeyG+bKVzw3d+8gAClm17mh9v1RIUtcifoxIhQxsMcJI6C9l1P+aet4DtAUwK8e4KFRcGwVGwS5yILLO3KK5DapYIkYtk3Ovq/1BNIsOhjlqgWa2PlK9r/fAuuCit8oIpcPH6s8qNqQQfdyIACKx0sVUZph+wzSZT0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762740594; c=relaxed/simple;
	bh=MqQy0mrP1ld0YA108vlq/ixc3rV+hdVmssOaiYjbkUI=;
	h=To:Subject:From:Message-Id:Date; b=syG0LphzQBDK7aKYkWYuANCcacFtKwgUTzk6cZl/p5YJw1P3RFpFSE4qv7/O5tYJY4N0Ml14PDD/g57JpAZLSx7EHiDBFmsCfzvx/dK5MLS3vRoFo+ROuTKlCXpfIwgK1lDhgJyuTbjx670Gz6r1MPBfxugX/6CkwzjqSy3XmF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hMNXTzRS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hMNXTzRS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B84AAC19421
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762740593;
	bh=MqQy0mrP1ld0YA108vlq/ixc3rV+hdVmssOaiYjbkUI=;
	h=To:Subject:From:Date:From;
	b=hMNXTzRSSjOJKvUXga2GF6+xO7yfLJcqTRVQqNdnIGJ7xQcibb+bB24n3F4hnJVNk
	 YlupoTUe/zQUv8jSZkjC28C7/N73t7x39bqIl3DKoOCScercnullmgergy/n6e6L6V
	 pNlU64sf5Zl8H8toYF+OUPdoxT5w+iPEtEVfyvNWyvrbF5mTz+QH6tFbQv3KVSkCdI
	 2CIkCBEnjrvOmsLEUBxQRVh8Y3+TlRqE03DuIMGFHkNS14utUjGTqlPBbd4Inwo7Cy
	 Mo9B6BQausAmo9dpso1IQeC30PjPXyH4ssSg/Qf9803rujmTdqNkgYKGuPfZza3GAT
	 ZNOCybcCuJ9iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8ED7CCFA1A
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176274059366.21199.4578800366891813517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75c6cbc3983c03f18d767728c54daf910921aa84fdc675ce684c8c2cf42576ec
Date: Mon, 10 Nov 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762740593
