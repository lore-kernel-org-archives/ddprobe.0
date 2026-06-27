Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5941EE555
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 04:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782533914; cv=none; b=L19w6dhpPuqrC2iwDdGN6LN20/69lLlRC9cZRq3liveJmOjzimHpYC53MA9K+VszX6bIu/sSHRFK1V/H4ttMFQOEvLbPgjAou4E8JK6vEoji3TmAHk3gSrYmKGk3Zo3hAPnVqtyfo1MeV0Bh6a1c7BQCRUQuU4Xfdl7mzl65hP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782533914; c=relaxed/simple;
	bh=vVLm2RQX8Pokb74mBdWdJvrj9f/uK/2bfxMadVM/wqI=;
	h=To:Subject:From:Message-Id:Date; b=foITMkRpQKstjySK41eZghDsFaFJ8OzqWxRBpeRAIm1emYAm8GJcnZfzSzvMoBAswOt6QyVwx6tbS/+4H52armc+52EAbLzTTf/A87k9IlpKqmaZHSEloKgkRIh++bBKQInvF3Es40d94nPLdj/ydMT58I4n681BPLU3EDK0MZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QcQ75a+S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QcQ75a+S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB381C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 04:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782533913;
	bh=vVLm2RQX8Pokb74mBdWdJvrj9f/uK/2bfxMadVM/wqI=;
	h=To:Subject:From:Date:From;
	b=QcQ75a+S1uW+ZT/wYBYhRRZSdq3YS8VTtzSetKdetdCuJmi0H+pInLKv6oe+wqmF0
	 ookNycQmrJRCXseVfJBKsMi0J+O8QAkOPIQqtHkKTaD4mzqagjbgO9LzposqC2TRCn
	 w7IGvSz6NEq6n36VXzVtU3kypP68+4z5O8jfK1WP9SsX7EBtBwPcz+D510Bs3cWKKS
	 psTdMSr8pDbGCP1qDJ2z8VnWXlNuH9bYHztYpO84EZW6hy/WYdCPJsGYQfNivax1F0
	 0qhg1IFv5p3H01b6V8PfHzHa6e7SMpEYXtQc6KrcLoZ0QGUJgibNgqme9uBaPidztV
	 vdSRfEYTByzxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCB6EC43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 04:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178253391376.1901.6661340086237300789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df00b8990d80cde2893a06489be0971ab561fdf292c5d6ab106f85b6f0efb208
Date: Sat, 27 Jun 2026 04:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782533913
