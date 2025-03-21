Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC6022FF2D
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742588994; cv=none; b=LFxfSnABo975fWoqfmg8cRR7I5maaxA7S4prSJfFaVVOPdtj/VIHv6qKJyEpjXeyegJh62hFn0ZrGQzLXVWsDtEG9KgHaa4kp13zhdyq2rj1nUHqYD3dilSan96WUeqXF3atuFJ4mJMxH1ak40+M9Y9QDBPuuFG7wAZH2untF3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742588994; c=relaxed/simple;
	bh=a39wJNJcidmo6epqXB66dvKWoBf2SYXwckoJBkVfj14=;
	h=To:Subject:From:Message-Id:Date; b=hiVAqwjsxCtAeIcXoDJ7Z5JeVe+9wqPpum4zXKmCYpKlrJy/WuyKBFmuCtyazNdqV3yJBKWiq/YIlIpM2Gq3rkYyPkC1sxs/nqg6PbUf5XiZ2AuyGsaq8jzfE2pkoSuYdOsMWft5HyDKZttGaWtgCAoNZFyAHFh99VHMvF8rOEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kIe7qvly; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kIe7qvly"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B11AEC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742588993;
	bh=a39wJNJcidmo6epqXB66dvKWoBf2SYXwckoJBkVfj14=;
	h=To:Subject:From:Date:From;
	b=kIe7qvlyQFGNMDnTzgM4HtNlbK+1XmRXuZ4P2HcXqFlxrENw3t8MKPhSWE5Por14k
	 dZlqLhoTCQaQWpB911xM0pfdUHqs//wSx77/YYHukjb+YU42pZSX3Rbl8fXmSULQSO
	 wU1oFoGVNxT1cckAGYhtuMjcsg6vtpOui3L5a6JEs0HYfZFE4e/zqlufOePY5K1s5N
	 IBHg2KHZ30iaFN0e7bqLiO4AkYLBybsTmPiyBnYrUegJpBdgl/VZ3uj10ziR64gQLU
	 rY9ld4VNgWOhpzJf4plgIT0/qVXdrUIakAZ/0y1jkBxe8j54zMp69OLjSjxcRMr+Z0
	 1zTcNGtDdQ2ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D1A5C36000
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174258899362.2674.12567605798639261200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d9f47ed57e188f00ee3db71b010669184fa8500ac33ebc426311ec5afd4971f
Date: Fri, 21 Mar 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742588993
