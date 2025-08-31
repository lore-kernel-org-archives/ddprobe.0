Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1A21428E7
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756616394; cv=none; b=hP+XUVT+NMttbnmFtaIdptKW6YIJGfhULqoHXf2SSHl4/upeOthYHgz8Y6HA141TWP41H2YRV+FjCqFSz6rIhg1c1NalWGQIb5koaZVCz+1Z75ZsQ+m/UPdod/Unnr7kTAg2nCANp/NM9KJ4VpRwjyIK1gk+Zb+viRxuvoOq0VU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756616394; c=relaxed/simple;
	bh=6nl7iYfhgBviuyD8sfHwIwTQVu8v5B7fQOf22r3EddE=;
	h=To:Subject:From:Message-Id:Date; b=GyB0bI8oWGeUElAGVpQaPKxLLZMfMqZN9cEBp2xl6SqTr85pMog9lxWZRVU1vtvfJ5RJ63LviX5TrEY6PBciTpvMLGLP5WvW06mBBoZ6WunZ2LgCcSLEN0rZaS171wB4G6jHTrXD2qub0rcUemyGyN/6+6NwHNKaw2W2SES+Ndo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JOHNmYiL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JOHNmYiL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2513C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756616393;
	bh=6nl7iYfhgBviuyD8sfHwIwTQVu8v5B7fQOf22r3EddE=;
	h=To:Subject:From:Date:From;
	b=JOHNmYiLDbwXqmPRMef43dUeL3lbPbGNwhrigSvgnSlBZ1xZVfmy9Vc/LaTAiGw72
	 bxvkUfsKq1USgqsTlkpUvFsb4nFBLbNxKH9a5UXohaOR6v8WY/LWIgOP72R4SJWHPc
	 Im0I3enhXaC+xzzt3ZGFs8SvkWJuc5pP7lDIHhxtwYb/ETWyrGKhX8weZQA46bFciE
	 p/VWP7Vg4bGlhFOEQ4IVMrNC440cOoefiLbn6m0PhLRZp17wQTOlA7N0Q8IJqA9Um9
	 m5Yefwh33So6+0dzzssYnfT+y6e4fkklWxn8hNxAWg7eSEt5lBHPTE+4XyAVoQ568U
	 8UDZYRGfOFtsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91387CA0EFF
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175661639357.20860.5426935687948019281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e376a1bdcf29e976011123ed3781144f7d21554264a068b78dfe7eea31ba2036
Date: Sun, 31 Aug 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756616393
