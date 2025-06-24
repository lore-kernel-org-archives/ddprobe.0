Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FE1C2E6D2B
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750790394; cv=none; b=jUVdUowl5VMgza/iXCke87r0uyJE/rGvP+TPmMFSPQYrgqP1XqmsfpoqxO+lGb2ZlTEsY5HOB61aDlaW98qWRmP8/NYCboOoBcnJKmU0GAjspzpkXjcBkklsmJY+1UUcBo9YKbm2CQ/JfkHqR5DfB247FP3UNnbvM8glWeJRI+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750790394; c=relaxed/simple;
	bh=SGQ6dfPm/N6cYFOqDqVGo9i+AYONlJiyxUtZYavZ2B0=;
	h=To:Subject:From:Message-Id:Date; b=JSeZc+rEX+S2rJxsyvi2cdmoQO7xA43fOozTJufjrciiBgM+P9AkCuii6AxXa4dfTtefkca4NdQaqVIzVgLIUpLwRKwDWZcahhqOCSl3TkL4+S9ckZJhKIjgGkxbnUBpeQQ3ogmJnc6kd+YFHAlSSjmVaSzjT1elqEyEtQr8Ms4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bSPS6pPQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bSPS6pPQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F24BC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750790393;
	bh=SGQ6dfPm/N6cYFOqDqVGo9i+AYONlJiyxUtZYavZ2B0=;
	h=To:Subject:From:Date:From;
	b=bSPS6pPQSSo7ojSQLZXlExDgZ3i7PkJfPlMZC81gGcAkus0OzL2VPcLjqCjV0Uuu3
	 gY2WzbunrSjFw7iY97pBOgWOItKDfRCK2Ej2vr0vDWD4uvG02BrZs1bYD9EBH1FJTU
	 6DtldG9FWTW7sMvjHgAM2jwtX4/AX9DW4JxhQXtk9PBr2eIgqMFygb6feNc+5KyQwJ
	 OGI3wWY2D9aFeWEeW488DXdlP1JIvK3tYaFfSGm/ZJ9FVg2Kcb/JJEYfZEIGfe5dU4
	 0uyFD+Z9fCPN3Ms/K2tqo46mRPifqXP9jzp8mh8af+s5mVVtpWQm1nQ102KY4AdCgu
	 PdA9Nn/NyDR5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B56C77B7F
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175079039358.23833.13330441320923755574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87f6ff05f910acb4060e6d41c5c30671aba009cab4a6afe5db707c9a11167708
Date: Tue, 24 Jun 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750790393
