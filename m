Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3778E2BAF7
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746942594; cv=none; b=ckQuLNzKkxUd9aayW0zc7xBoeIZTiczo0YtHJ3d62T+TQEMpOGmOom2sc1QGsgsWZuagiGcgMlkaOJVQ151BiQPKHvUNRbi52PMVYqIW/6xxIwTdlxELpZd9ASn/M7IQRMMRdtlINsg+pOv/DK686XFf0M5YhgWldx/UB76Ec+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746942594; c=relaxed/simple;
	bh=4XC73Ffwadtxm9nyuZbLkYo+ltMTVtQsIX3gJEz03pQ=;
	h=To:Subject:From:Message-Id:Date; b=t/wezbESSUicrZZuvpuJouRuu/Az7QCRYFmKJAIF/bvxnsbRCBnaPnKNyWseVFb44OX04osSuhkeWOT13x09hvwFTF/I/zbYH+yi8/Q5fD49XY3Nx4CUSs3IwhUk4YVDgDQMJzCxCRbaKxvHsmFJLE03x9mQLT5Li8fCTheu5ow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VkFO3A5u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VkFO3A5u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A638EC4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746942593;
	bh=4XC73Ffwadtxm9nyuZbLkYo+ltMTVtQsIX3gJEz03pQ=;
	h=To:Subject:From:Date:From;
	b=VkFO3A5u2P+JvhdgdxzWR9cg1nrNWDVlpLsXMQco6vmWGs24/pfmvQ9Oylgp6FCmg
	 qgi4jH4W3HKykhi8vcF3aZ908uUSwuh/0CremVkcftqZ+AO8dNWETHnIRfzU0s3P3t
	 odzYWhmXwWFduawiID1gv/LA3pXbDdj8aXyQeD98WaIfygJQ9MiRmSq885L4YQtyKj
	 aAZ1oIbYVFpVGDPNhEtFYo7nzDinA/ZWXzkDKOBhsLjBgJ+Ek5+PmbfnmSg3Y2Oj2a
	 vIXwog6vnrKIYHf3ljysR9FrDm198dIOBBUIgwDZRG6MPzT/6URk4ryjY5P5jRitH+
	 qBh5hEwX/T0KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945CFC3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174694259357.5547.11844379017221896875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6571a96be83ffb5f37bce1addd30c453a6c9224a79564208bdc0b70957f9f40d
Date: Sun, 11 May 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746942593
