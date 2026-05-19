Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274DA2E7F2C
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 20:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779222034; cv=none; b=Ek6SsZ6wIN18OubDDK4tI3D7SiZcphoqBHlhn22Y2BaCOfTAC7Knf98eY4+9HXG9zi/678akHStIuUrzBxlFq6tefFKaN7FjQcI/CmGpPmiOxxEKzeg4G3jaoqnahUm9P9psvkZw80DuqL3+/zFhflferPOnXyW9xU70budkyP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779222034; c=relaxed/simple;
	bh=zy/oHJ3vBUd5PlA5T9UO2SUoCDYBghplAw+pqngd4+k=;
	h=To:Subject:From:Message-Id:Date; b=LWHpfiEs9H8CHpckqhuuEzq1iIWqzO65ohzF6OFijod+y/16r7BonnYRKsQ20joCF4v9CYUTQikLaVpvduHLgFP+rGZwAlT1rWOBbA3BLwlUDLlCkEmfVx6nF6mGEenKJTgZx0iRWkXE04JgRKBZxVdqPDfF9so9H2TOje22jyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ohm2aEvH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ohm2aEvH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C49D1C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779222033;
	bh=zy/oHJ3vBUd5PlA5T9UO2SUoCDYBghplAw+pqngd4+k=;
	h=To:Subject:From:Date:From;
	b=Ohm2aEvHIDaRmgDplOsQUlzCNPP277RPUDZw9nHt+swtp9oAK7qkz3zDlmQtDvf0k
	 UqkipzUtVkleJbVO5jLnL2cicdvajiqltuFUGZoFsSTIqBkJwRRAv3sfIlRECInkNU
	 xfVr7A9HKzTkBgoIPhBDPyd8+DNLDxFT07aMW34jgNwNp7KXA2GKZEhlYQrwcYdZbv
	 eHN7AunYo0k0+8UHrB2efcRf+DO8Mrp/x40TS15vZDHAmj/VczvCqKDp6dr4g7OX93
	 jJOwHOFt2s9QdgJ4XYcEddMa+z3SsQdQuCIA1uxD7GtIMRILVfMOvkV2CKCu6Pp/tH
	 +NIzUUg9D4Tug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92D1CD4F54
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177922203368.21848.2516074384824036429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c53d1e2cf7b8851269799472f52ea3f65409d4b849298fa4163e2110185a3e74
Date: Tue, 19 May 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779222033
