Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F68F3A1E60
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 08:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766306634; cv=none; b=VzxzK7wGInJCRJBBISfFDV6SXdDI21l4RJTs283anmx5yGLanHdEGwwz1x6xkxZrb2capegtkLvajfULAxGPzreDwM8UosM7UayAS6APXHRdDjpeuzs8mOkEg534F7DILqnVruVi7/75SOznWafz8vDlXPpVdN9RmTmav4OBBfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766306634; c=relaxed/simple;
	bh=t2eHpKPGhbiw9TGx5RyiSxcRahlq0fJWt+Kz31pKbCA=;
	h=To:Subject:From:Message-Id:Date; b=kLsh6MLP5XTcujoasxnEC7lP9dm3xDHRm7hugc6VT7Qz6ab44Wib9yH2/pnsuwAyxPVqDJQKoZj/bJY6Vbnyc251hUegnCWKTwiZ1IpaCcH2ZZ0KaWd7sAZLNV6VFZOe1SveYsoYqzTpPvQ4PGf723oiVF0n9kywLwPU4JukLpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NtadUSX0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NtadUSX0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC8C3C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766306633;
	bh=t2eHpKPGhbiw9TGx5RyiSxcRahlq0fJWt+Kz31pKbCA=;
	h=To:Subject:From:Date:From;
	b=NtadUSX0Ky1atHWDhY4tYVlSWN9VwHQ1ZT99PlEiAGgzMxN016zrJIPq+9w/xK/f2
	 lWfW5VlAT/Mx9ky4GSjQSPG8ZdWuu/z3VN69HNuaX7CmIuIpm9E0y1nW/RehTG3sqW
	 UW70McjoxdPvKPySvuHji88XTAC+265RhmzOGm8q7BS/g5Az0r5OFUE4TinXCjF5bu
	 iETtGY8HfOm4DrhwfT39Q6ZHmObc/IywG97WIukG/Gn98aTMeO84wLfaXzPQXgYOf7
	 hvJWBiSUE3PZPpH98yuCu8DhLDhwN0+0ykG5KPrnUARYsHvoSoTfWOhBfu8jxMrY5+
	 BMmVFpuBiMBUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956F5D68BD5
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 08:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176630663357.13777.15908660277100860006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02bd03765c6aac661c59eff0fc392e15c61c9c640ba3f1b5091200ad29843a7a
Date: Sun, 21 Dec 2025 08:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766306633
