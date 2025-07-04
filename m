Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23D992E3715
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751660994; cv=none; b=GU4KRsdAIMSWYzbKSlqS3D2gGL/4pzBBgIS6NClxg2XUZeEtqYzwsGa0G9J0OUG5blPgM/Aa5aXiDseIXX9Pxho3ULwjEqwJR/TOjGKOi0gJXLMsFbEWbiOCJNGS5ZeQ1DMSfaHiz8YZ1jiwOkXqhje4sWda5/hzHR5rcoW5sqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751660994; c=relaxed/simple;
	bh=ZILpJcIQCneftM3Xvw1JQfaXD4gBLyNqlOUrdJxCaF8=;
	h=To:Subject:From:Message-Id:Date; b=foQucfMzniUpIW1rdvytnRWI4DVvHVpvyXHmMJ/3+37rOFdEn/y8U+TYpuN+xLtsMtN2aeuGbt3n7ZL2h7VaCcfjF7/eY3ZbtDZoOoF0FxwBcMlxfc3Ggl40Sl7Zk8yBvOc62bbrd4pJlkHGt8Z9L1PWojQFDAo/IVyHGUsXkGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F7S+kv9t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F7S+kv9t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEF6C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751660993;
	bh=ZILpJcIQCneftM3Xvw1JQfaXD4gBLyNqlOUrdJxCaF8=;
	h=To:Subject:From:Date:From;
	b=F7S+kv9tSGRV54UkpZdY7U9lxPacK5M2SDgCYV84pu61KRA7dZymleh4FOuiSTzPW
	 /LPVcIN9KIUuuXR4JEWrycGtMkT3MsaK4xU89RjwHqz+N6hQWBIvwn8M4UbPXvjH0N
	 j+XUrBhdBkSgOlX3pMSBz/6bKv0FatAaajy74t0cy3HmdjiEJgB6CSAYIJrOP/24fN
	 PIVo2VPzAhC3ncso7oNWogblXB6DA3T7HSOOjRDboSLHIBglU6PkrvnFm1ot66SzY/
	 ZHFA3N8GN1hFIlytYzVPFIHIjuRufzfyGMVZEE7unt+kRVaSXB8M4ohjZLHc/Cwb5D
	 JC4b3AkLv2pkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCEBC8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175166099358.22669.17987855238277359437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b328fa458f4a4013f2cc38518e483637ca410797576a00ea69e3623ec5292ca
Date: Fri, 04 Jul 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751660993
