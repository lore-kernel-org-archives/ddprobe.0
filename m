Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34CED22E3E7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 02:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765421574; cv=none; b=VgxJDqOS6jLEU/eBvDlmeequ8KIZZPAeRAb4/VNmpnN8RkbUTZzDU2bRnhOwDymEwRBHajqZdT8qH6fMOqsFGSxFZUHL84EqwJY8QalMryhQtHz0eBL4JelxmEf958znenNj0ZTOZRa8UWi4R4/+Tzq5JnGlclCe6ICw4OEH318=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765421574; c=relaxed/simple;
	bh=Ulogn9RYUOb7bZX4NHWHPcimEEFvl9dBFvz3DHcPa/0=;
	h=To:Subject:From:Message-Id:Date; b=eupiDMgfSGK5wJLlarBo5BJ/5j8upN7jNXd1fyxw2NM9oqeFw6OCr15ulm/I+N337L176W6ZTs1+ZmThGBqAfG6siEgi0kd79WwLmcym5cRaAHhuvJIYQHeJ6LqRItMNzNu7GIz2emOj3wX1cSV/IvCkbwXi4rpdHhL2LAxZ804=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PW2c3C4m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PW2c3C4m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A983DC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 02:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765421573;
	bh=Ulogn9RYUOb7bZX4NHWHPcimEEFvl9dBFvz3DHcPa/0=;
	h=To:Subject:From:Date:From;
	b=PW2c3C4mk8lWDtgIN9hRKtHsYRWiQjjdxyTJlWb9c00Pw3UTAdyucYOmLypF1x7Hx
	 sYIUnshrcU4aSOBh/0u66u80qw8blkKptQlWc1ufDu6q1meKu8cy4A6w8y+I8Bs9wk
	 oRts3pXWv/Mio2Iay06agtF+mgbrj4I3yVVyngHnY/KdD/uRA5fqUIktXn42MoT52K
	 y02KMZCf33CcYRasZ0NymvE1IwFtpNE5EI87PMKcfY1JKpboAfDjwoDemtDF3srwQ3
	 bpafJ28mnezAyQARIC+YdWfRp6WTeqcE1MGNq78sO4t0W1LiPWlxMi+z5AdzgHJKc0
	 Zmc1zeXZFBytw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D50D3E788
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 02:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176542157359.25305.17067134329716070734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6b24e0dc16b9335fc0b0d3c8929e34e4c343e8b6335d9d3473df51119bd5342
Date: Thu, 11 Dec 2025 02:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765421573
