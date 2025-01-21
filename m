Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E89CD1B85D3
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737449754; cv=none; b=hhgXJbPid0KqQ12SRRfWsu88G4wUemRA9A2RilOsVHTj6cKbq8ldMMDSgLymT/sKlofCC8K2h48VlUyurOoaGN+f/PA2QWJ0qkgfmkPASw+MqSHGx+xO0nOBw9zHKjU9BlqzPGxFnXBHtOPDjGaxTaqCfyvUt1yiK0gpuf06Gt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737449754; c=relaxed/simple;
	bh=3NcZ1dpzCuX6zdiM/82UwRH4JOnrKiMEcMR+NtU7W74=;
	h=To:Subject:From:Message-Id:Date; b=quu9Xo1FdD3Awwtv4fy6g3EK5opb8+Iuk+T82twhrKBS+sSd9ofl6wIn3bxmDXRDJX4iOdypkmmLpMtxO/3Lb3jMWNaLLBblQy59kG3fv2ljKrc284xzdq14M+jc8uGO/OnOZfhyTNGikVXGpD+wesQCVqAXRlwu/GWh8Dsw1RY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QL+gqjUH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QL+gqjUH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD820C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737449753;
	bh=3NcZ1dpzCuX6zdiM/82UwRH4JOnrKiMEcMR+NtU7W74=;
	h=To:Subject:From:Date:From;
	b=QL+gqjUHxsHHJq1dE/rdFYYz8AgYlKlTXzh9w7XF+rJMqC7wpJFXzCbxs5XWFtLZ1
	 d7PVbUXH/+SWyIV5ozqwjcnSgEF0qHBc3IX6tAuHdFy64o0OsJbOWZFCWxEDSX7Meb
	 wVCLyfIOhDriCGs39EV+2f6NQTLO1yRrsJ5UZz8K/b/g9ql6SgOPAe2/T4w+BHq03J
	 EYa8ZXRrLoOsn7gMoxogQopsCpLrU8kV+DryH7+rJPppDDBzS18zu5Z2/xzkqzls8i
	 w2+XxfS6ytgXxcyS1EY2zDUw3krafRRppeZEapgNC2SaG4VZ8BGXg722D2u+Ec42KC
	 +DFo0eucBsdVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A116C02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173744975362.31067.3892528566105470643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e2999a4f201edf66c5e3517a958263a487fa8b7a07df0f6a2f39bab09cae7ac
Date: Tue, 21 Jan 2025 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737449753
