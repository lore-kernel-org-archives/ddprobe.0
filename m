Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73A421DFFB
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790463034; cv=none; b=krlp7wYt/DAu66xyRbDjdSJH/jC0HZ0acY3i8Z8er5yBEsJfxhtwJm6cy2S8g5PzSMBVM7hOAptrppd+hnhTqyugdE+zoywmTNhW5hWTLnhimwqjlH39tRJdeyKWuNEKvgdto0+A1XKEky+ZcFFQCU4SnnplN//fYwc+KglwIfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790463034; c=relaxed/simple;
	bh=WGZ6YQe/8g/3ZjKxvjw+sDvYyqTFihtmEe5zXTqZrHU=;
	h=To:Subject:From:Message-Id:Date; b=UbuuFJylYqur9Csxm6vOberaWw7YdeWBlw7a9tyg4tQst30P4xjimMAjIpoqcHciLQlbFHCBdOM0d6/pCOI41L97DRdZlc1xsqBAZjUUeP/Z/cOIDx5xiHQO4kI6t/gVRgVbaQsnQQQAn01+4TJ2n/2h6Icf0V/xGZoxwmyiFzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KBkx73sU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KBkx73sU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D27D4C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790463033;
	bh=WGZ6YQe/8g/3ZjKxvjw+sDvYyqTFihtmEe5zXTqZrHU=;
	h=To:Subject:From:Date:From;
	b=KBkx73sUZh9QFH/0KY7XZ0R9fzuh8kZEDpnqZx9VvrTtcgX9/tD6x7Bt5URBx+K5/
	 l99VA9N7+u/xFOPpctZmiFuzvQ4//XcykoF7F+9d+T65zkaX2dozyHO3A8Cir6k31A
	 o4HLcNhHD5Ibd97egZZjVz5ntCJNON/hrdN3czUfpN3Kgy/BdQLJg0iXvH1RHKO/pW
	 gGSSBbLhV9XCPqOvK0Z73paQDhunqMdjxDDlO67Djy2GyTJ8BWi3pvT4uj7SKQonDY
	 DNq/QomKOjLJf4YzdtZgptMt2NBVMVTTAYfSUpU5Q4UeV4WHyusDf3Pk70y9a7eCF8
	 QC+fKAQVHR2sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8C5C9832A
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179046303368.23563.4750690180640399584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8bc720a519de05f90ecbb4e424c1b9f1f8b8dd019211eab4e2e92d785271ac8
Date: Sat, 26 Sep 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790463033
