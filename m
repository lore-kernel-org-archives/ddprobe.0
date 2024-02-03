Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05EA010A18
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 10:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706955497; cv=none; b=B5X16hQnmNDCxkmXybfK+uJ8RPmltSmRc4TZIrz8/v5xnhwXlMe0IvJIHGezcbQKxKlj5jp1WtU6TWzTEhD9UyDN7+rcuUg+vv+I4mXBE7IiNJMltrdHWcgiCdXlV0bLWsGjyy8A3cHBkwdvklr1oJEx3ZED7VCQfJZa2u2j3KE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706955497; c=relaxed/simple;
	bh=Qd6RUQOitL//1cpSOqI2fcdhTNqjfdlCH+Dj71RfJso=;
	h=To:Subject:From:Message-Id:Date; b=Ps3FBMNTESLHlNXiyupqmoaPRATTGdGsFb9AVfi/xMi+Nh+814UXCgcTakYbc34GUv52bFPMU4C2Xn410L3NSxEicxPnTYlmBEjdQLYDSv8DSJKNuktHYVJW4Pbdb85dh4pgyLFX1MMq/CcNKIoTdOxfgJuu4CfINvkqzKyj9N0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OprT3gut; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OprT3gut"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 818B9C433F1
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 10:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706955496;
	bh=Qd6RUQOitL//1cpSOqI2fcdhTNqjfdlCH+Dj71RfJso=;
	h=To:Subject:From:Date:From;
	b=OprT3gutLTS7STGZ/TmkHMYJPUDgzy1r5LKm4gykeo6D0uuVflKX4zGaNTry9q0UC
	 f62ZFS/fkbVZZGHvXI9Ib2XGNhwz/urqKDXeQF0FN+sJISKvaA1zT1P7XCnHk5u2bj
	 cKabB5Ce0B94UGdmV2MYLt9j83sAPzwxbG3kOmZ1dAyReCPdp19nPGeVDzSAgCQVrW
	 2F57ftdxNC6kJy/d3Vdc5DkVQpU38IUtl1Ng8uCq//7VaKB1/hTliLzOpa6V9kGiwv
	 lNF75MmObD7DtjwE/JPt93TQB3PEkf4CrnV/+FQk/Rstc9rZOUgHnIpQXdiGM6G9ue
	 sDLR+6Cel+Dag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61128C4828D
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 10:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170695549637.31285.9424288591461030844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc41f1c7cf5c7165494b631018fe0bdeb08d138bea187a6a10d7104f3e8bc0ec
Date: Sat, 03 Feb 2024 10:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706955496
