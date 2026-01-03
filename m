Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E88262BD
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 10:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767435834; cv=none; b=FpAeEDSIDqxTmxBOC7gDUU7WP24nM7i8qZxv+hX629h17bJb9of81u5Qa3nTzaQWTzh3v/Rtgp+Blz/RWhwLZlaqXQ/o3D4gvT0HZK+a0GpdIjzA17wO0vVzcAO+M7OZEV4u2Yl+tlQo7A7E1iPBigNavcVsRMiFxFvoDWlwhiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767435834; c=relaxed/simple;
	bh=X5y/QMeJCawxnZeLcg37aNA0Mf4Jow85nKnwlKGpwHc=;
	h=To:Subject:From:Message-Id:Date; b=fpV87NgII4Mz86dE8G99Vjl5pjCm44+Q/lSOo3iSgcAVdfq/VHdcbwOZRii/Qp32j6L/Ta0FDrq9lwQCzAjnDj0IjZGGmOhY25PJ1hhayPnYLeRcoHJ4eZHjX4f3kIsZ8J69GtBXJum5G9stPeQNIUvXuXhpQmORJZQOKt0HkLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kxjkNIIh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kxjkNIIh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A454DC113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767435833;
	bh=X5y/QMeJCawxnZeLcg37aNA0Mf4Jow85nKnwlKGpwHc=;
	h=To:Subject:From:Date:From;
	b=kxjkNIIhRiKXYk6QbqX3cuSWPjvsKMbERuiLw/ERuPHDKmFyfWAhqXcLmONNq3AbJ
	 Qic4COFkEE8O41g7hSjTi3ieiV+J2JLVjUF7yyLDgyvjLmn7euldK678epAhdTr8km
	 i/9oGGkI6Cc6umHbXRfe3kuaqcHu/KsrYdBrZ2MINd/zxyCXEV+3MCjWD1vj5QZ7iI
	 k5ukT5E3nbIjp17LkMBdxpisHTg5PgyJ8pEwv28C5LQdi856Fzi4y96CBLjYTnrakZ
	 3eYwbcYETgzGkm7GCXzrAx2gBhmjee2bLzPhPNEypTNXtaxPF76CgL2de1zSRtuTbx
	 UI7RLBegE4SOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93953FC6179
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 10:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176743583358.2032.5880461278197746759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e916e010e51cc2bed38af23c5fd2a4c2711ec6fa3457ebf8a5e0c1f673728e27
Date: Sat, 03 Jan 2026 10:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767435833
