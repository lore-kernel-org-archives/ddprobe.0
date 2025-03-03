Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DD0278F3A
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 21:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741038534; cv=none; b=CGErU4IHkY/8c49xEbAK6wP8JIM1Xu7YEn9H+2F85j8yrpMepMwaoMHyFhyq5zO70mfR0wvlVHx7l1+asbZ7LYqJrYLTYnQgTUmSYkfzyGzNu1m1MhxXO14e7n+e/itHtsZq6ukQqGcOFwiFqJeF4OySfoyDe6wCrlcdC/DvUyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741038534; c=relaxed/simple;
	bh=S6JY3q/ZhOd/Nx3Km2OJTyxxJKF8kqB3lFhmATCXovE=;
	h=To:Subject:From:Message-Id:Date; b=Fk6wVwHbWIMFJF5kToYMkpHl70QWYZ6YgFdptXkHufGiNZad3RDselH4w4366Idk0x5cfTmioC03nSglE0aMYth7+V5KpVjgq5puJoUgGnqWHm4eY+kIIhAYLQ9GZYCUZROIGiNlUx9HqrFAAUwAU3dw7KmO4sbnWhPL/Gl/6ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rt1B8TR9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rt1B8TR9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF6BBC4CED6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 21:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741038533;
	bh=S6JY3q/ZhOd/Nx3Km2OJTyxxJKF8kqB3lFhmATCXovE=;
	h=To:Subject:From:Date:From;
	b=rt1B8TR9emuRpPNVvoBNQvaAsNzWR/WH1hAjSNRIyTebi6LPUUTx2TLZbXfEH6kJM
	 8EyKI4k2sA0+gR7spw5ecQXhFcgfMpqDgHwHoQMv+5UaCKCMGFm2b5NyJ3Xu8b8JjE
	 +MNygqBjeW9lAxGiQr6o5kVd8TQw25JhEnZYyyWv3SWAQtB0yI2VHD7AmwWQgD5McI
	 uhJDTGFN/GdqsnaIZHxXvGWyeHHxiaeWrYTBJebUQPJflX8LLEo+BsXBVJc+VJFmyA
	 CCf8L1IRzuU3EzfyMCTuZd2yeTKeWV96fTZb+KnR+lAfVp5DU8u/YafUQYBbhXhriD
	 Lf31gUdlxSA2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FB2C282D0
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 21:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174103853360.13521.8568801138971660329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dee99833c71134d9713f9cc1238d9db983c39aca217caf8f00af9cf97f725780
Date: Mon, 03 Mar 2025 21:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741038533
