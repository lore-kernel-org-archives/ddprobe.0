Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147BC235041
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750933794; cv=none; b=K+a3wZS8QVbDt3io6GI+X95DRRrhezu+LoQ5nZnFZxqWiyh/771plc4grJdcOSdIC0fRUw9+RJm4wcMHVXMJJvrOaUc1WHvtPGTIuhAxOwk4knGb90MxbzKXxPkZK23Ij2VcMUof8HskrSf5C0m22MUdGWck6Ep3rq+eAO43aMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750933794; c=relaxed/simple;
	bh=YGiDAuDDZIEr67q45JhR8WiTwmBgGDQUVsZEXWlgSmM=;
	h=To:Subject:From:Message-Id:Date; b=P1GbiPwfGJgt6zFRnjdDVBfnUUfuqL3lyXnDR6MO0nV15DIt/m2Ip2Wp5pXbnfao9Fb7TmtEY3Fxq9OqXq/VQzsomTA3F9uOuXG7nyqTW7x5etFhnLdQyaAZc9dXjxCeHMfeO5V5xMVSIiTk9UhatYFw5fKRy3EckHjkOnHg0IU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X0zHXDYd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X0zHXDYd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A921DC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750933793;
	bh=YGiDAuDDZIEr67q45JhR8WiTwmBgGDQUVsZEXWlgSmM=;
	h=To:Subject:From:Date:From;
	b=X0zHXDYdjJCAuHGJU/4UFi0+HMela8ZPd8rwLsfRGxbdbZHy7I0fldYeCzqL3Gj4K
	 EVwoMrsFDwcJ7MFGAWSQM5NQRE9ROXaydRMpGv2GNwCtfgdcgk0gXyVq8kfVQwstgp
	 kBbNl0ec7SxRzeEsYHDuc27jf3ogkPIY031lhoiAnzan5ZxzTVhnrAMdAHSfGoKbz/
	 6Fs50zJFB/si+i3ksLZmO7MJQKgSSCO72TD8Q6ndXsp5zljriMHuSNUcga1k6nJfBu
	 tBznN1jr4xFkmacZJ1hDmBtxt9w3kCcvucENMAkJLFFb0seZpTxw8YDgs/8fCk6lgx
	 VFeT0v/i3Eu5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9742AC7EE30
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175093379361.12324.17814300680612810955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0faba620cab13da169eb9f254475bf74f5689895bbbce0705c28fc109bf86fd1
Date: Thu, 26 Jun 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750933793
