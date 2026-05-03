Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18B8A392C3D
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 15:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777823254; cv=none; b=ojpZVU4gAB+9xSH7GbAmf8upYR8h8vwsSMO+AKgnApMK4IqfWwyS3+jeqmQ8e0onU7kaUERHXXgooBqcGM1YN3QkeLXkMfCJ8eJpXZ8mXwJZxkioJzQ+jLKa7MuPY20RfrZQpdTaIkMc+MO7sLP3S1E0TKZaEvpeVr2+Tjaq/Cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777823254; c=relaxed/simple;
	bh=cpsCl4TIqTLOLFtNebgRqxJp1ukKehXLYti+yzQ+M5A=;
	h=To:Subject:From:Message-Id:Date; b=YvTZg7RXJK2WpsD4uLiZe01CegywF0x+CkiwIa7fYsv2dT132ldBiWC97N6cLPjctYE2sZltdBt/g8Y4xCyZQwqFzXK+b+LaI58UkxiuYRQKHpcHoT51tMhcbnG2z3SLbFkCB0upxzdpYHEV8YrWzOYi8iHEKUK5+gokA0wNZz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ctCiLx3w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ctCiLx3w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7F6AC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 15:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777823253;
	bh=cpsCl4TIqTLOLFtNebgRqxJp1ukKehXLYti+yzQ+M5A=;
	h=To:Subject:From:Date:From;
	b=ctCiLx3wdqCeZbvxguavaDn9oKe50XheB3FYzCIKE7Q1vHD7e/fEXL0qQw8WSniV3
	 xpNt7bRGg8m+Ldso/K/+lkgZ0sPjfkzxkGCWs58Y8Qb56wrZrt0d02NnDhyUkCZN5V
	 8h68BeWjlhQlGZuyZT+Xq4/DUIGIvJf55PJs0CqaG/S+H7KeN4bXDXsSBvWoIQ05Ey
	 pKEC0p9dACKDZgbgwdaDViLg1LGnZd/4X8NrgKBWFs7lTaOlOQ0UomZ/5pJLpwDEFl
	 me4kbTHoeVrciptAdecZcu4hFZtl7oZA+xVyphkrKsOHFyBxz9dusx5gHGPi2xNNc1
	 RbxPNiki3FC+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DE5FF886F
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 15:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177782325368.17874.3804529901283560331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce90a8060545f392dc6cac018d4aba6fdf7f93f0347866dd7b983a320b7d9d72
Date: Sun, 03 May 2026 15:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777823253
