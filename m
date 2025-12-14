Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28EC21E5B68
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 21:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765749174; cv=none; b=CTh2hn3MFfQVCFCmzJbPUNLtJJwZz693zNMgY97FymdKWeMMlHs8lyvSHIdMES7lIraHUdJFF2w+JNZkc4yo7Him5/EvAvS49ohHm3FKK8xJHs663cw3seCh6fTXgfibZWZss+WG+/dNgKxXrqqTG5TTGV9RfhBAR7vsFZ1tW04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765749174; c=relaxed/simple;
	bh=EOWHmsExhSmaiv72qCqOt6w04KwH1SNXOFTF/XrugkM=;
	h=To:Subject:From:Message-Id:Date; b=GhmFKshl2Bt/SwTqrwsobyDbR9ZsFRehmzr1VHA0f8pi+xeGKN3xI00NysDFhMN3sG28Yk5mP5zDeYa5h2IzYTRXHTPX+YWkrA7HVhnjgJHPkr1nFRV3IMjoR5giOkzwmoo8V2OdHU3kwQZNQmAQvzSeH3DzUdSor4AetQK9TJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bzTm7dg2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bzTm7dg2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7355C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 21:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765749173;
	bh=EOWHmsExhSmaiv72qCqOt6w04KwH1SNXOFTF/XrugkM=;
	h=To:Subject:From:Date:From;
	b=bzTm7dg2YrONOlSXqtSAGARYLLxULsE32wlJjlPazbNA2ZqCBbvEsCa3SGoiBIZMR
	 c9JzrFOpy9JhrdZ9HqEoHwgy3VTOvOe9OHqqkIzxfWEtvAd1tE3uzDRHjqfK4dX4k9
	 F/KRRsvzscJ+vWjNC5vHCywYuW+h8L9PGZoMlIB7y1EQiaEO0Y0jtXj6ZJ4jxup9P0
	 CNrhV+0Ya2TuRUAwMUkBvhgQFokVZxfqvSztOsdixd9CML8KIRjpG3oKS/fc8hx5ZH
	 lDy8CZ0vwr5UGvixQwXL1YAbyhhwHfcLvUL6ALmZzpgJF+5VXf0TjIGCSbHv5ncapz
	 rQ8m0fNfom5eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9180DD59D99
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 21:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176574917358.24929.6351771631262151041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7543c491a78ba5f445db686c39ae6c6eb409323ae307269a130820553f389cd9
Date: Sun, 14 Dec 2025 21:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765749173
