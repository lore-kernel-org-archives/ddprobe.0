Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2068841B36E
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 15:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774971894; cv=none; b=t4R7wGv9IbRrUlyflmTZU/TxJbY+58gj0kGUPCMCnJBjmMosJPTz+d5w1id90XNbFTak6hrwia/WDA6ogiBATn4JvbhZwlwJmFxD+dKnq7M8XwDI9ZVSTP9+ygd+vhskOoC9FgmTiurLQE2PBb9OWspOv+FhvfK5c0Rxd8MNDzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774971894; c=relaxed/simple;
	bh=Se276eZ5MKUvUCmG4udtO1iHqhSIsmZjJDzmLnS0Cs0=;
	h=To:Subject:From:Message-Id:Date; b=W5fXXqePKH1MdY02ObSYPV8Zom8DgkEzbCCP5pq6WxSkx3PjOjMWJpDaCJIbm5nU6dBCwwvLaJPqWd08bfJ3RreLknt/yZQ2L7U5jSl28bhl9alt8yiBoC78YG7KgjMwt68G1KXXefl1XetQ1NQJIFbEm7mluNsaRYbfptdFfzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j8xGkM4K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j8xGkM4K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7C97C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 15:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774971893;
	bh=Se276eZ5MKUvUCmG4udtO1iHqhSIsmZjJDzmLnS0Cs0=;
	h=To:Subject:From:Date:From;
	b=j8xGkM4KPIft2UKhSuNXWFIoQXehFeF5vVP+6XYsO43YXOj0AM0YTh5KGH47GLylF
	 zhoe615iiPoKB/Hq9+MCN5zU7ubq29y35JPBg0XzMfua7rOXYwf9Y/0jl+XT37oFiX
	 H/KyfYfLDw1ov096r+OIp8BnnH2PwZby6u/ttRXL4uIIYpSnHCOZwKC4CpXXdXE4ju
	 rGggz3TNyrvDidq5WfIuLWW9c73IyipI90Za7euxKEkEf+IdB4ODAyFMCC6ikLqt81
	 YZpdGGkGyc46AO9kkDRdvtF6oXmDYI4KXVFK5XArpvAsHkTTAT97oTp8cKUtKTT9/5
	 FVAP16UZ5rwTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5E84109B493
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 15:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177497189365.10088.2443908262752791076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 273aa28a5d475e75b4c1c7ac663cea3b03326673604b7c837779249edd4a5c4f
Date: Tue, 31 Mar 2026 15:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774971893
