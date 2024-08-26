Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285CB198E61
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724693154; cv=none; b=j3Erdq+M0MVHjjFZ5QNb2C789DfU5NurfhBcGNc8UyDgKN37JqU5/kK5GqvGmGum5XKs//taBkPj+TO3pvl4mVnqHXgJMx9Z75BP5jOyvbJHY/70BRjX8dmPflRfUKTNX48y8qeWfk6R7n8+mnTLjLnLmNnb6jmSOmrEHDVgND8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724693154; c=relaxed/simple;
	bh=za0iT6P9Ox4yfrck8OZl4ujsJ7g2Td2D7HAd6Yi1/iY=;
	h=To:Subject:From:Message-Id:Date; b=EbceXAyQwJIU2mxDA9bas8A41BfsmR86a3nilJF48xkJsjiJdwVzfZikz0e0amEUdS84FifCzLTc1zZvILRFV56UY5raU3z54/pL+CVAOT4OETItWxLs1LFp6bBVb6tVESHrshrRfu3lwgduMhtX3pqZQ1ttx8N1NKU0f5WvgL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AbzsPWGp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AbzsPWGp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F5CC8B7A2
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724693153;
	bh=za0iT6P9Ox4yfrck8OZl4ujsJ7g2Td2D7HAd6Yi1/iY=;
	h=To:Subject:From:Date:From;
	b=AbzsPWGpO+zunOuAEeiH+FkoscJbZSWg+gLh9r50TumqvMf6mrOoHXd9NVxenANN0
	 HANRUNkaEynucJUQjptJS6GBnz5UlPp3LsqccffFKNn07k3sAExwGzksDtCG9qOLuq
	 kt315XEWuuuRWm7Yx0FUHP9iQ/rfAWAK0x+rgJ8XrX7/hD+W9Q0aVXu7nMLBBoMa8z
	 kVcosjUgq7ffMY2fKU1GX6p86IBUbUEh905g6fPUB1aUnJYNYiS7RWi4WBssfVkSX8
	 M5UKf3F42m9nXD0IuLudQeQqOtw1rMjhAHnhg2OxVQbAIauJ7tR2Uebcvld+ane/SX
	 VuDo4s4fuZImQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98424C5321D
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172469315361.15425.6728370429724663763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05a68cf75887f5a3dc2f2eb2797dc55fb62e998ca736bb7b7854f75a75c499ac
Date: Mon, 26 Aug 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724693153
