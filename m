Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378A2D2EE
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 20:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716150143; cv=none; b=QDwiIV1UuJrVX78twWqU1ESSD2qk3It8Vzei4PGp15XX7H9P5ggOgzHlebUMHcdksnKLzv1dj9C9JYuXxzqZPiBj4NvUcS3JDaHO9cB7YdDYWSwnhNO/LX/7H+oxw0POJzKIbR7sDUNFYqbQ0qhScShJvkWXLRGtSHMgq2PHgmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716150143; c=relaxed/simple;
	bh=69gDfVNshj8Ys6vnl+MSwAAJl52gm4k9PqE40yRw6M0=;
	h=To:Subject:From:Message-Id:Date; b=uzyf2UxXkXa3MAvF3TMYjfw2NS9D7EpmgDBMHdDhHqsJEIpAu9HJSJF0E1rVh6MX/gzpzJ3T20QYE9jIU8QSf2GHX5IH5Ktz1vmrsYmK0O1mrOHw61l5eVLaey8Exa3hakMsUVsKBMUHUfayda1kU1ubv8D5u2B1XeEAgYRJY4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iEJnOD9m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iEJnOD9m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D174FC32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 20:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716150142;
	bh=69gDfVNshj8Ys6vnl+MSwAAJl52gm4k9PqE40yRw6M0=;
	h=To:Subject:From:Date:From;
	b=iEJnOD9mIgUQrKm9eGNhd1Hisxr/BJvMq38pn5/oZ3HGqmpxNPVFeNbldxoXYzoQd
	 ndUDgSkfKdnnh56N1tlwzTt6mzB4IpeOLb9LLoiZuNLvAvLby0UPr0dmMkF9009NYw
	 Ecnpiwv31Mps9ELHwsoWDhWzcJ7HWHzCfvJlga/XzjRMBSeQ08BLAjPUMkusDVoyCi
	 8XavPL2r5Vc1/OGGxCnpAxuj3CPx5xOQ1ymoj7glO9SMI+hkXtyXB6Ukx7evL5lml2
	 LngaMYBvLM2esWrsNA+FlYwGSLbXvmY9TdnLa32P4aLV1V07AUaZhzXKpNYNaGv5Uo
	 BlBLj9ijSVvJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFBEAC25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 20:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171615014277.27806.7968624922039473816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 291f55bc724c03c8b6ed64011c67dfe24fda8ddf2d62971580c82c461e81a1d2
Date: Sun, 19 May 2024 20:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716150142
