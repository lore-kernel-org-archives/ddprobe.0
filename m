Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0051E253B58
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 04:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773117894; cv=none; b=j0di8hgvWsL+OGIU43NCfK6NGmDIKzen8gdDDhGMy728ECW0Z+iekRUdjEnvI+Fm5X1EzzhAT9reYw06YT6p6WMKoyzXTu6FvEQDVNRSewsXapsWIldqX6hd3q2VOSHw/O+jfYvMwxEX5j2d2fLr2/2bs/nhgo6uPd4TsXtqC70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773117894; c=relaxed/simple;
	bh=vjqATiY4Q6LpQ5M3mWALoxI/M6t8BXghnUrNOUkxhZY=;
	h=To:Subject:From:Message-Id:Date; b=SyYTguWMO4cSDnBBDiLtJJFS7/I4cRjZaFPhXys+cdjpoSzfrrge/0MgeDiH8hGqaRBLCUx8wXeIdNT9hdMOdwK+MeOzpb2dnFMcUA3t8Qqr/rtSV3oYJubVN0zebXzTavYyzL3Pve2duejeFa8wcAI2bU+IeXQ/1jAPSiYCygY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DecQvxqr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DecQvxqr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19BBC19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 04:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773117893;
	bh=vjqATiY4Q6LpQ5M3mWALoxI/M6t8BXghnUrNOUkxhZY=;
	h=To:Subject:From:Date:From;
	b=DecQvxqr+nmu+oROgzzBkR5yWUYlsLlf0APnp7BCZpqMCPBW7mdSjArTFZLe697+Y
	 xdQCd1nqySDIyhEWZ5j/OG3FL9riicRlZitUyOMhvzpqpHT7wpxz6IKlpjQInbhCMm
	 ucXU+2LB2RxMYMqxKnxBCqtXkeGBLkD+zGJrjTaFcjA0nJiv5alKbOCy1rwHJMbpaD
	 Q8Q/Jz/6p1uC/SkW4bbvmhpaZ9wCyWm0MJP6syqNYxe26s+aYS4UKKSO+eRAX8a217
	 ClprauHjVfdirBw0+sKWfm7JNT5RxdG1GNJY0Na1um/wS7TcjpK64i4F6wwghYUQFJ
	 zJC35BqRNhg6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA4EFCC9BC
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 04:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177311789357.5623.13257375725755603630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ece651e219d31e0d6b988d85a5b433c09b2bc558d288934b670ef42e0fa54172
Date: Tue, 10 Mar 2026 04:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773117893
