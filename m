Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1023A25E469
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757014794; cv=none; b=ZKQOAQJCF2U4YcC6zEFpNrGkTJ8Z4NjG2BjTSYIk9A+URen3pwlYFmU0+3q5LB9NnIrFxr7DPKKsv0ytydRAanQlTL6sW99V7Iu7u7pUQfeG//5ASPPvGzJZ3JIDJcqYxcoF7NpwRnYETx9xWHDksZ0agybRB0nlNjFLI+4N4Vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757014794; c=relaxed/simple;
	bh=B2F8kh6g6//OUhynbz4XGQ/Tv5NIwSUhShrEavmOUqI=;
	h=To:Subject:From:Message-Id:Date; b=m+dcfVX2w8VkhcCL3AoYa/wK/3bZ6oWAZuJI3LifLSYXwVwP7xJ+qSDDYk6yUQl/QVp0FZHb/0OJHAjscOQ1hEPwDlpl0MOm/G925aabGr3osTwTqgoWmrgN6HI6upz1JKhfEpJJMLVc5JjKvpEtgisR2atCbjJdlpEOnjHOscM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H+mIDsz1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H+mIDsz1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26B2C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757014793;
	bh=B2F8kh6g6//OUhynbz4XGQ/Tv5NIwSUhShrEavmOUqI=;
	h=To:Subject:From:Date:From;
	b=H+mIDsz1ZQlEt14CwATrgW5s+KJZCkBIajtikui6Fc1cwIBPLtxWg8SeeDOm+yBLA
	 3T9DtZT1hOGZzw7qUObhgukqGVIkB+k5NgDnLYVZubCRpHQRotCxUnBxK6PibEGV+T
	 lwm63CAVFqSruKaNhAxgecE/FKFpELN7XEm0ii1LpLiQXQLwdu+IRSWR3t3A+FtUeO
	 2GuDBMPkJJldqbrCnSK50cK+EO+m3g5kKcrWhY0+J2IFCAaMaGy7Kgc1HjarpT12q5
	 8aJJVQQOx1V5gWwhEF4TJAcTUouYco/5QONXB0ohnRLYeLd2ejcR71awLbQrXixQ9b
	 nnLPNKklVbLKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E78FCA1012
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175701479357.4637.6419092039119234214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9d4c7c5687c6270c35dd6bef8c61c7a6eb071f71e8ba56bea47d4bb02c26d1e
Date: Thu, 04 Sep 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757014793
