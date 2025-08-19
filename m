Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF54279351
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755615594; cv=none; b=XgVIrCiaac42YHi9/xbBSGYgA4rqTstxT93jkdJdRQHOVfrMxFBJEWQ+/1mpiCDs4cgK/lRXbIJkXe9HBtAcNF4FwUCtkec3EXDcftBtxtWg5bqSJ7JQnfmOw/Fdbjk31s08V2PCYLZgEEBmYDbgJQHeqKcMuVUgySqkmpKw1qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755615594; c=relaxed/simple;
	bh=4kkPjU09oChmK8ufDO16vuwPRPJUSFPIv5qPjhqYGe4=;
	h=To:Subject:From:Message-Id:Date; b=H2lQUh7hCyh9cZANLAxSnCjFDpOXKfg7G/5QiLiKZYiWoQaJ7vOfr4hCBtbGoBxmfk0YYR+TT6+m+hVjotOjqO+Dxt15jPVxOsh9Kp29ZqLp7Osx/fJjG/gDDaYI+ohwkgVl2+b9RWjpZML8kGB0W5Z4EI4Iae/V1D2MnF60XMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BK+vSx1b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BK+vSx1b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32EBC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755615593;
	bh=4kkPjU09oChmK8ufDO16vuwPRPJUSFPIv5qPjhqYGe4=;
	h=To:Subject:From:Date:From;
	b=BK+vSx1bCvo54LD7KrdkjyLEyibUjQE9y1il7zNBg7b3p0nKgCd0dKkW4ISHR1ZQb
	 cMXmjE0Kt32o5AQSrRbaxZmnWYLPHJ7JMa1eNNoMgz1Z+ZVkur+9K5gERd5sVdvNiz
	 OK7GTpysnNNtFkRPxCmz7iw9PQkLRE0bLsAnZpn9dYBmg+uFO0K0DBAG2f/4WLkKR3
	 ciQHs5SlwA+UORw5V8qmqCViPrLbYWnX+R6rBAecw3ytv8+Uf3WXVi0SWoH+i7hlf8
	 R2yPaXEaQUqzNAwdKK5InqvXjuQS0DL+lYjB0KYyzGtovaPQfRW42L6NWSHRtuOHl6
	 TSxKY+UwpYYHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD3ACA0EEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175561559358.19335.2463293683106228515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57d452fde007d576fd45e12732e7e3049cbdf6e32cc9bea1fb34501a4e83cd07
Date: Tue, 19 Aug 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755615593
