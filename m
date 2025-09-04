Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A779280312
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757018394; cv=none; b=FEEPgEBjCebLs+TvphohgC8vUNttoD6CuTWr+NE+Vxyx0L5/QEC2wO5BhvOvjUWr1ECpQiMjLtq/hsrDNFEj/Jse9SzUzzxnLCCNXX0g7VxUif/BL256GfV8ELqX5pLWqihhLG0upysdJOuO6NmA6g0M15+LEXuOdqkrS4Lq4I8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757018394; c=relaxed/simple;
	bh=bulxeriR9Mm69TjSvvJSJ7NydvfFHpGjvTFvxVruNnc=;
	h=To:Subject:From:Message-Id:Date; b=sZZmkoXTZe9za3PIMjZbMfVa671+zhyV4eK5Uu6GZUTmQ7TeoIa+KyO/iJyd01W/1MXZ8F8zJINFjVHkR7DtpMXSpfRm+YAuHFDb+W9Y33WYg5cPoBlXxIShnq5qAf3kCC+TmvP3NN9uCMUbnlHFIhDjmBNycCJaUj7TsLUd5A0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DciUOZt/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DciUOZt/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C8CC4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757018393;
	bh=bulxeriR9Mm69TjSvvJSJ7NydvfFHpGjvTFvxVruNnc=;
	h=To:Subject:From:Date:From;
	b=DciUOZt/ZYRPNIpLCrKIjPcEzXx+Zu/tb/tt0TCJfwkaBicrD8s34O0OY7w3lNM8s
	 O8zO5RX/F5PVjyosGX81rNepOuG1xCAv1gQCSIyCHmtXs4RgnFYE30BCTm5oJgUW3Z
	 o0Me+cDhvrbvec4Ziq2XiWI0oIG0y8/l6B+LHdPH6kuYpsXZcR171sgAPqWxcUWuxN
	 EE09zDX6ZZYRh8sonVAE5pv+Sl7/Ql0tw7oC8BOeuHIN/lPHffmAGW4Tcv11Tz2otQ
	 ly3EZKTBotcTdDEycm1SDU883X/r9uVdUaswfcV2dD//RS34WfO1VHvRQ+/h2gsi/r
	 WM5RMPUpjEBmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90163CA1012
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175701839358.8705.14885371097043391546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 191a0d8eea51f1910420f418f46eee18d1e733be83dcdff9e79fc79878cc36f7
Date: Thu, 04 Sep 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757018393
