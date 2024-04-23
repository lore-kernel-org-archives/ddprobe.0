Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64BBB641
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 00:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713832223; cv=none; b=mI0c3tQ9lIak5gWSeVhsyyk3wAEKrK935DCsupEtWA/KdNieEhY61lbTt+6N7I6q1pePqENMLzfLhKfiB/iyWIfRJHBqXLtRR1uxfrgratchw9PixchY9aAWSuJePURRTBRDNGnLWrIb3cIRjE9N4ugPLI7beKs6MnBGwYqXEPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713832223; c=relaxed/simple;
	bh=rg8d5yRrlvPXr8QBJhtx/GiZpZiTtM42PlT4rOONODE=;
	h=To:Subject:From:Message-Id:Date; b=mL+scPClSDe8VcLnfLlCupW5oNzMUCjBE0Ait4po60i5As+bbalEbYyCJNgqeujSL7680Qb4kZfFG2t3D2mUDPB9G4gpIA0cnKWZ1FFkC1dL3Em5zB748sxxQcyu8Lwxrcy+ypmDbrYOO/qIwbX20Eo4sPlqsxpDRHSiAyPpZmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iivLM12L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iivLM12L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D97E3C2BD11
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 00:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713832222;
	bh=rg8d5yRrlvPXr8QBJhtx/GiZpZiTtM42PlT4rOONODE=;
	h=To:Subject:From:Date:From;
	b=iivLM12LYuLhHb3/sHJxQwE0gpl+uXrUaV1ypuXTNhCrGnUeooJOLcBXHS5PvscBW
	 O+W8lAN+CDV09h+3WaUjUUTYUwCOs+r+XDPCLDBjKVYHsH5wUaK6bHTco6cyBFuZ2k
	 ovSlrsbiYeAYZucDb7e3u44l8bOdU6ggNvGPXsoGaFmLpedIV/u1pVecjzXmYJFSMd
	 dQp3yVe1poqz4tciLeqfFPMYs+QjRWUWfaGOLe8xt4g5bkwgI71A0UW7Jd0YyOzFL6
	 RasSNKTdm3noJP8yRFvsq6zjxlubWWTARH499GahNaC2g5ugVH16ajhW2AIOjCrOFx
	 plya0X/CwSUuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFDB8C4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 00:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171383222277.27755.16709341724813400184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d89ae6977c8e0001ff156f21e39be43ff936cf8461245a68ef5da0f0d727e14
Date: Tue, 23 Apr 2024 00:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713832222
