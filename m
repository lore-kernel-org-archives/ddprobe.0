Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CEE0598C0B
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792098034; cv=none; b=pBTAgbYNqLNmCfzpII7t35EBWWXEp7mKQE0zv+YS/40g/R2bEzCicODeNEksQ1OCQv9iC3wPynJkuIkyxvxCV48VpaHRD8ynIsprjD+93l5Aux2+FxrL8PoKELOKVvBbY0dLapqn3+M2GM7hqob1HIz0n0JBTqvqsXYb/SYuKKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792098034; c=relaxed/simple;
	bh=Fy6wopcGQmPURujAEKUPEe8PeOM9ds2sQbZVsoAY7oM=;
	h=To:Subject:From:Message-Id:Date; b=jGsQPkRvEBcW4j9bnZohlzGazi9goDKwOL/m5Jzwmh46wdOcxmsML17lZAgrIkbJ1MckwaYO5Ko0fLccXqlA4RfZneL5nkXv90ES3wH+Sf7bbxd+HutZDpn4niiAD/NxVVxG+43WRV6aBpL+O1EkE4cBTT4lE7iSOrkVoH1j8WI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KjV+pOuM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KjV+pOuM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC746C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792098033;
	bh=Fy6wopcGQmPURujAEKUPEe8PeOM9ds2sQbZVsoAY7oM=;
	h=To:Subject:From:Date:From;
	b=KjV+pOuMd1EIhroXMkCDqbmCGvP25NkilOzoNV4uPYTr01tujy34VSw3A2N6TQST5
	 c9OZhM7+5r2ZqMCI9PzSBP/YefTkU/7Yb6A6lS04egAZWGRMwvOiHS5+P4GYWWNkVS
	 ZRJuxO+yETy0YDb9g+CbVBPQrg4rCNWUxIJdkMyOEhkBxZ8zmvBgwaQ4ZAms73U+X0
	 nA9JfOivMOttFfDxfZxZyI1W33WUa7fH1RDQ/AbyKYwuhdIHHPTHkoiTeHb344USnd
	 3p2JbNj9hvdq709sdPRFlO8AsTazhQsSF0d9ucnbZV+ezyBjxev0tZPNOM7+3IJDlQ
	 0/XN4g6Aesigg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FFBCC6B38
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179209803368.26322.9046134140457843527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eab68275e60651442c273d32fea5b52f7737858028b765112c7e278bfa359024
Date: Thu, 15 Oct 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792098033
