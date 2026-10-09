Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 565B12609C5
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791515434; cv=none; b=YGuuWhgWmNcKmnFZ4BEFdmmlTYp5N4P6d2VG1cqQTjX2Uu/YhtdEZA4uuQBmr4kBY2NP2jlBwfFN0mJ6/FDZ2ZnvXMKkytVbvryfgraKFNXElYT1A6tRzW2VlKQm2f4g5516R8uPebnnGjswlzKl8zoRiyhND8YfzplljPTXXQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791515434; c=relaxed/simple;
	bh=7ip5aUM9BB148rk+MV8/mftxbKGz/wvDZgfrUjISlwI=;
	h=To:Subject:From:Message-Id:Date; b=CrsO4iFocgBnXWYXcRDWPzJ9E80nwz6aP+fY6Abbf94FB6OtTJgyVPSb638aLIXfgArsvP+cSK38JaAUXuOO8wty9RGlDVs+WDfBGbwFJLLUobThwuTiAejjgAGOT6h4CxsnvbEgjq0y3lYm1ts9ct3Qq2d35TzQUJhWlyPesVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oNpBOWcr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oNpBOWcr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D174CC2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791515433;
	bh=7ip5aUM9BB148rk+MV8/mftxbKGz/wvDZgfrUjISlwI=;
	h=To:Subject:From:Date:From;
	b=oNpBOWcrEC/xh2WdBzrrfkw/g7BjVHZFL68bU9ItdsUAHtqxx/ryTEb1Vfmi53JXy
	 PssJs7GKmbuetCwr+KBthyKWyAVD+Zm3WuvVFEJadOLwnGRCwLTsYi/HY63V59ESva
	 8AuRE6oNeWyueSoeNK11pRO0TRrNXPsNBcVg7+H9lQmN/p3nm/CNoYvpqiEtwAVoi9
	 RwQ0dXrTOqO8QxcMmRtZ1QIogA4opseQyV9DO4EHc0BmIrIHH/OtdHRdJ6rQ5j6QbE
	 /BWQ9TwAtGEazFQXbJXKETrfbGn5bKSc5CcS+XiDX6BaOWuCZeO/CrdEKF6dlfk0Aj
	 GxRPG+yGUHVzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBACCA6018
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179151543370.15486.9591693485258874879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2d2451205e45c77c7b0ed079e17e7e9e822cf617a3e3596847909f5fd4e7273
Date: Fri, 09 Oct 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791515433
