Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C317C33FE0E
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 12:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764852173; cv=none; b=Hmxci/mqj3lUw+vbzkIcOif8Hna0SPH2D0uUR11feWYmokZfoOuZ5ljM+r/PTYlNdDy+6J1OMRrPLOIQsBuDOu4qZLUjCMEDr0SJWexoe20DJhPhKg14ZjYNoBybNXVu41+edTVrzZIr9fqYAYLbmlapHxzIkoSXjuNqPRW2pCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764852173; c=relaxed/simple;
	bh=zJdmh3rk8dukatWE/untBbSaFyDJ/QdXShq1mgvcofY=;
	h=To:Subject:From:Message-Id:Date; b=Z/SaOZWMWRBfyKZt8ccwxuc7yaa7iRdO94gxyQ7W4zoOYsfBwNNLaXtBTYvI0lGKvx4aIhl31I4FmYtx8nbfZBdL5ADxA0/Cumd9VoHEzokNVnDMP7cdK6JlSdjobWH8lM++NeD2w6B13XLdwriIBQLrXK3V4ueZx9sLYFsiEpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ODFqbpNH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ODFqbpNH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45D4C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 12:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764852173;
	bh=zJdmh3rk8dukatWE/untBbSaFyDJ/QdXShq1mgvcofY=;
	h=To:Subject:From:Date:From;
	b=ODFqbpNHZaiBztVSk4YtAMbPN/fYpbUpgPOrPpS5QoXxHnLvY7JrYEkM/5IYuVwZl
	 zeypRYuq48lYru778b601mN6qPkxsQMtYouJkQGMFf4hV23sUY/PdnHgbMh+E5AKP0
	 bBYr/Cl7tdK9yagR2drNLKFOgYfugk/XIr12urQf8PLBQZTe68weCcEg9xroyhcYTR
	 kbdJBEkiceIyGpfmZLVyMKx6z+Ili+ma6MXyL/lYX8atV4zOyMfs24S9C0Z2sSoty4
	 I+AOKWAgf6SSXMtYSois4L7tTYHKkjTp3ULH+OQE5RitBgIlMPioZypZT+YQ+Faryd
	 Qm46/sOHUeeyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939A3D1F9D5
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 12:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176485217359.19082.16163331112558726101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ecc2a3177cce95e1f3544618861f40066e24c875546282e09c5c80773762088
Date: Thu, 04 Dec 2025 12:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764852173
