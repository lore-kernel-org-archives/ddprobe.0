Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B484370AFD
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 13:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780926874; cv=none; b=lHpE0I74GS12f4ko52rpwVk+vwH7chYaoxZ299OUUOPot69M1A8IK3/s/NttWEpsOVq75k9BPbQgiLe/SYqCLeMz5iy5+/4046l8+pBQek5zUF8Dev2eGcakBQJZ1VLyCWZj1WHN3ijr3t7ygKdAVI6QdL5c2wabB0Px3YhqIQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780926874; c=relaxed/simple;
	bh=C7dPVYHVmwKKaHuJEhbXK6NJbJxnTwKiLwPtlz7dOog=;
	h=To:Subject:From:Message-Id:Date; b=Yz56ZkxRL51ZHziZC4AFenMwpGKdrj1cAo7SxqDpXSjMPhnzGaH8pxjSZ/Gnwy4vO+D4uWWzA7eqZmIZzG8a+dZ7pjao8Q0n/iRyxZR3sbpxX6bXNXe2WGHeCn5sSsQLsT91NTcjq6Ejje7ptnf9W0iyoRucQI/Itjh024cmoTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V3x7/ZCH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V3x7/ZCH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDC6AC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 13:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780926873;
	bh=C7dPVYHVmwKKaHuJEhbXK6NJbJxnTwKiLwPtlz7dOog=;
	h=To:Subject:From:Date:From;
	b=V3x7/ZCHAUFUz4SV1L02ppe+EwREecnpVhnYmOF92MA1UmE0oFGg6cY/eNONyA/Xs
	 hhDtAgqtmpKdiL3n4b3fl3vWuRYuurnqIdsbwFsvkAEiUZ1kN7JqGR+VWLhO0VGh1E
	 HCRkZ9DL54ZOBUIuEwuspz1P3yNN8YwltwTvxG9oYXNdoeuNwOxh8FbmJYiHMFhXJj
	 YWB4wOz2Cnf1YHiJuOjXUmoQoNW9v10eLu2BXSyWwZkWag8f4t2AgjG7SnJfhJvTdi
	 7jJWIVpkGtpMoRjKyk/xNQTGSxQJs+2qanv+WC/gZUznBweSbT/M6t7bdvVExrF/jf
	 T3MRWaOoaKxow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B46A3CD8C92
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 13:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178092687372.1513.4977456853257541774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b496c1547caf52751429cb2e151d541b993f7739b3006750f217a574aa8dea6
Date: Mon, 08 Jun 2026 13:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780926873
