Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 477923B19B4
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 22:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791153634; cv=none; b=fC9K9hR9XABXNXIPDWVUYmvPQyemegUxtMPVfhUikv6UGBxkvmvfcIZzLBxyYAbVxFNh/HNf5inTqYSnyZ5tBQrrP6tDIWKR9W0WXMt22eJ8NcUZMk2AQ8IXFJfRcK3MAKBG5IWLJLKEYucSCwVNgzaAt2YYPSgQPP0gU5ajYTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791153634; c=relaxed/simple;
	bh=QEbNucQVgolAPHRwayD6NcYpIxCFMXuHW06R1/S4om4=;
	h=To:Subject:From:Message-Id:Date; b=UkeX2+4XQjvnUVhdsPqrGwuehAcb0V/fihieBKaXMlCcZ2R8rIGWSfGo//+mReUD0rWysmYapsslp6xyvIcmAGcFxB0np1mPyrQAOkEo8fLecwddNzEbalxhMWlypKG/ncSINGuMc7owmT/Kr7tD1FwdHj3MTB5gxnVmzeea9Qk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=myN9E1p4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="myN9E1p4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC53AC2BCC7
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791153633;
	bh=QEbNucQVgolAPHRwayD6NcYpIxCFMXuHW06R1/S4om4=;
	h=To:Subject:From:Date:From;
	b=myN9E1p4Y8JSSaSZkdQPi9ndkks2wMoCKIJLErb6mCwADUQklaaqY8hN5+ZPmPUqx
	 l4rHomzMMw06cEtiTQirqKqwifHNamZhkt33Hzgd87kPoy/bp41l3kDqSw37s9qZtg
	 gSH6FbHbfhIKcEC7OrDffpDcZ4Lx+CE2Slm6L2ieTolp5Yi4T5ITVDhc8zsDw2tRTf
	 0ZNJfx547AXmkKgwp4iw8r26wDBRwtfCKBiQWknDD7uuD2mr0wm1jIcxtJ4KCTwQbm
	 i8JYsJL2DpJaBel8UP51Nw05oHui4WC47QDLE4wAbk8AYxGoHLJpURmQ3vy8NjFeaL
	 QNElPh50qGUyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F13CA5FF0
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179115363368.21528.15956829992384405386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7a52ce7f2e3ebe9ab91d3568b4fd946777fc2730a64a9a3778696c7fa8661e6
Date: Sun, 04 Oct 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791153633
