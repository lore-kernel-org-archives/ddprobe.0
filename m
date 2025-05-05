Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3170B18DB2B
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746427794; cv=none; b=evqO4qy4RdXcE+qr5c4mzx547V2WUPl238wUNdhAjZOrhEeZOEaFpUeWr5mCWYhx7xY43q3vc7qsdsEvciwL1YFi0vAOtaSrk4Lvp32yDUfFHChvKja0STND/6nhzuy3SmUnCozHbvajlRXWlT1SzwPirMgI3/J9K2SvVzHNmDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746427794; c=relaxed/simple;
	bh=jWW7LVOIWuFlVevpLuZx6FefJRXTBPlRm/i6cWZUS4s=;
	h=To:Subject:From:Message-Id:Date; b=mGa7W5FiT0WkG8MMDsDck4kJ4gsqlE5xdHUv682XUZMToTohRZe3CFHXZv26hx6QHNFFQfnL386/McYHu9SnhoXBoDcs2dC3dFAj1BWs76ewCtp5ZgjfeBoXvQGfC7vTmCTn49Fn4nHrxTDT6QPcwt7y4qk0oJgriDUZdXkJNa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KUuNj+gU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KUuNj+gU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BBFC4CEEE
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746427793;
	bh=jWW7LVOIWuFlVevpLuZx6FefJRXTBPlRm/i6cWZUS4s=;
	h=To:Subject:From:Date:From;
	b=KUuNj+gUfG0EOcaCTArgByLSskWdozTU2VTy1Gulpgw4u389iOCdTQ/3YgP4mA5Yy
	 e8o1NmUYPTEsmZQTWmvRwNeUKgFsUJilPnk5voXH7dtZv6FPBYH48bITlFRjcHhdmy
	 YmUUmqbovArjh8nXAp+JzCFuEXLipc/fIVGSUdglXV2rgF0PyZ02l7JNdQr63c9PI9
	 TCmvdtOsX6ceWs7U0Fv4+WHEmeSIPSRlCWD5LXq9Q9GLzr3ZastxizuJcObfV65iKF
	 g4hJdt5i7qMR59z0MiSFdSnbeSb+TopcAvwzpxKUnYiJOSj4rl1Lc5RYF3oTJkDzhe
	 c8ieRjB7kWzTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903D1C3ABB6
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174642779357.21290.1780929786017252556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 602525ccf60dde39a7d3cf04f99b50076e429bd3d6865dc9830e18ea23a858d1
Date: Mon, 05 May 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746427793
