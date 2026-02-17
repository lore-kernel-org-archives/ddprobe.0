Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4BB12857F0
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 18:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771352093; cv=none; b=hNfTiXDM0gE5xSPaqpWWVQBWncjAUUPWObAL3rLfSo8YuSozaQJp6UTweIMxLZ3iJFZBOMiucwCjbFGQ3MKjOCiDrPrkP54fC0fL2Jarc8uHc5IiRxK1MlIzbBjSSvyPYDCxqGqVMawuMsEDTt5Ym9iuEVfXxIubjNEkrrqe8bY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771352093; c=relaxed/simple;
	bh=g6pJrX3IzX1LXmtfgSjAWp523DyR7ozy5V7F94XrHo0=;
	h=To:Subject:From:Message-Id:Date; b=joI4AV+zq073PIdwrsRL2kX0O3Q0fdHQjD5GnXmz0vM7HpClnD3doBII/Bm0pMUyeoS64cHXe9BXeQQ/P9vK7AIZdBHFXGHSmWUuXqkwzsw0LrA+YlFF1qQkHVPgAS0X454aGJ6OQWvN8jUKhemfT+o8T2wK5lqZ3p2Y8cWr1bo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KShFyEca; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KShFyEca"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A24C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 18:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771352093;
	bh=g6pJrX3IzX1LXmtfgSjAWp523DyR7ozy5V7F94XrHo0=;
	h=To:Subject:From:Date:From;
	b=KShFyEcawCdJiZIO9tblCqytzNdMJHcn48rj5hZ5XQ/9gMo0fL6s58uMcZpOxS6Fd
	 vqXwWGt8S9fgj4xPKGbUq7DUCzZZ5g50rNRQILSyS1iYsM/Q1PGsvRMmD/DNH7Qggb
	 E4EFW7nIv5++EmYwi/TyC38Ed6yzC6O+yyzdk6tQNlvEerilVSXFJQYQv1ts+Wxu8K
	 bjObCPl0BhFl5lXWt74HkOtfmvt6n3fNg7HqsBeLph/kJCzIaN+8EnsfDJEtpMJvnO
	 dpmtQS2W7iN41DFruwfKHaQoDmtlVbeS4/M+PhuslOK0CsRbEF7VH3O119NCZe9IR6
	 wl8/c6k4YL0Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CCFE9A02D
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 18:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177135209360.22229.3270068571758268759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2387f44225cf9b94f71d2bafa9fc6663f5939563e67f3097a7de1dfb9ec89444
Date: Tue, 17 Feb 2026 18:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771352093
