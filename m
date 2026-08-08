Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50A02DF6C
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786186834; cv=none; b=VVBwFfOLx+PZihq10IcX99XAAVWF5TTTqe/5tG1vaUOvfZH5Fs29UPCDDsjuyObVV4SixWGDqREZksf0Iq8gPDg4FSmYlnqBBQGn7oYy8vCC94x1ND3zqX2LRJNgBNvgI96FRR6k6TJHMRaIyCl1lWBg7VTaztERwfXxjTogUbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786186834; c=relaxed/simple;
	bh=5o70Ae9x9sstkBxYwNJUzujJQ+Z9Nvz6Uzy9Ek66z5U=;
	h=To:Subject:From:Message-Id:Date; b=aSlhwnxPlCC+f/RHb8N3Po3VqllbOYyNh5civT03+cl9SfgJbTV36AoCnrYDSLVhx7uXytaqOV4Y49s3wXmSXaGv+cKZxjyEmklKqPTR1JlLUaGr99RYIZcwBvekEBlXGfOEDprQ9XwKEaZL8o7tOJyYPDwG/vB0S0K59ivqV5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BEsUx38K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BEsUx38K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2FD7C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786186833;
	bh=5o70Ae9x9sstkBxYwNJUzujJQ+Z9Nvz6Uzy9Ek66z5U=;
	h=To:Subject:From:Date:From;
	b=BEsUx38KZHBbFKSMdHFnI7/dsvwxfeqEA+LBM59gsMKiMaeVJ8m7jUIwWe59QCH4j
	 9+hNIFCsKwZIkIYq5f3eDDHNgYCfhZgXcKDS9vbPaHelnfM/TPkOTT5k4I/Jze0Xw7
	 0IoJTPAfCih5rEQbmDidFVMF2rPBT2J+knzh8xwzsYL+0ynNfwMhmqi6ic2Ng28WH5
	 sUE0iXi+LGdrc/AQfAXQ3c/EZXUpezb7Npl8hlCre5oR2FagOGW3EVeYAelOPKQsEt
	 jPTM1LgLyz3+FHntQeALoA8N07CjykXHwhv07X7Tpt+qqLslnSWK2/EME+SNSZt/98
	 mE8UFnAAcGWkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF692C5AC67
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178618683369.12890.14626183175026516795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cfa50b86fd2c222c50720595097afc4f6ac094d71c4875a285c398e6960fe5f
Date: Sat, 08 Aug 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786186833
