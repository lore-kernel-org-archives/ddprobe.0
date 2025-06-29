Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA8F13BC3F
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751210394; cv=none; b=E4emgTaau8ULUVyjt7jQqe/y79JweXdSbukmUF5bByni6ehqIYn2AmBzXTGN+46pW1X67WA2zzJR4ijYiqeHR1RkELGMSLbjnwngjFi6EB/b0t/mGvbrVVK+tUwi+OnkCPxzliHVXZx/u2zQChZlFQ/GWp/oojfPRTdxai3FE9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751210394; c=relaxed/simple;
	bh=z4OUHEYV7o/hA9naeojnkvjdZQLyJo7lBjlDnp7ymV8=;
	h=To:Subject:From:Message-Id:Date; b=R8WESJb3055G8bUJQWTqa9AZ5cX1scZrLbHANyQoG8BYtj1lwNvMFqnbNF4Macg1GWCgbct1c/UhVARQVjN72/cWPzvMJ758gD4mztvY47pky+BVKmSPlkx3P8fmLUhzT7/B0lObYUn8oHhrMBy+dxiHmbhghuuOpbPARXJ4V9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gcemIgRf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gcemIgRf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DF6C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751210393;
	bh=z4OUHEYV7o/hA9naeojnkvjdZQLyJo7lBjlDnp7ymV8=;
	h=To:Subject:From:Date:From;
	b=gcemIgRfUA8l5pWXP00L20vvcFHxlfN9Tb5uRbzGDU6twAEkDJmWJ0Vs2r+oCalVZ
	 X9gN5J8MjOUEQ65DgXbMwAJp0NFkQaVcEum4kPWKL21tQGMgbqcpvUfOXkdqU6eEBu
	 T7ycCS/JvyAFF+jZwRkup0GmYhLkbScNSH00UrU0XmOjy0ZgOISw85psHLyEGnPnF6
	 I9uEbC+IDNZfb8vzlItTuijkJszxWxEOjV/U9wQD60DnAwaNvoNLzKYS4GxYxMv5nl
	 1fyDKv66ILK9pncKyhsBq/bS+CDCt+rNepsKGCaiVWtiX2KfOHN7zkHqvXMiIrVGL6
	 E96zjJZYfGc9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B5AC7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175121039357.27752.14648188917948402356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99add14a4eabba99b4318bb0503753d68e951b6bf023c14d60719abcc7c52df8
Date: Sun, 29 Jun 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751210393
