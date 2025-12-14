Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 111F69463
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 09:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765702974; cv=none; b=FX6gVgepUfXZ5jYzvnK3SQtKC72HWY2F/95V+tOJ/tBC/rpbVN7pS3D0NJseNpqlv97zfyBSgYiPQWurHauq2+WxCeEwVUk319Hcfvy2qLpSbJl0KhkGHkVLsJ/+ny6m43a5Tx6WSM0GVipS//fJukEImcEsUYHkxqAe6jCgzGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765702974; c=relaxed/simple;
	bh=6k8TI1MNH5V5dP3VdQ5JnlmJ1sDhONjTGqr0MRWtyRU=;
	h=To:Subject:From:Message-Id:Date; b=eraZj1HeXjfi37qRwztuHPt+v/HPF5UFBCHPGNwXX7FA0bbn6G8864CWW3fv6ly4Oju4cNHvmWfuUEQxk7IcbkYZN3MMdSqFkx4nCOIX0Ixg+IknjKVO890H4qh4HYJ5P6tyRgax1JywHVyhHDGpq3XZ5cgRHRayErM8l57vg18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lGZZXn1/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lGZZXn1/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6927C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 09:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765702973;
	bh=6k8TI1MNH5V5dP3VdQ5JnlmJ1sDhONjTGqr0MRWtyRU=;
	h=To:Subject:From:Date:From;
	b=lGZZXn1/KFHyaHBz5Ltzeziyd8dAsOQMFjkKNMAb9JQ5YbuCRcjxhw4PwhwkMTndI
	 t3t6glAWVcq/UAfa8e70WAmfIySZBdD+enWPttK5wGcTf4lJDlhku3rnfzYyB5XwSv
	 65rbHu0ivGt9TDJjhcNWASkz+8W/Zzpm0QskHb4PEcvIuOk6oHgA8Hxi6pF21pxy2D
	 bC/s2u2YMC7apkYIXDemNzZVIC9/gjVXqOPSdyffUMTqRTr57K+MEDEakhoEnOcGOI
	 VEk2CY2W5BisfYgThlRbm3w3Jx835rO/hthwxWSNBYzmuicJ9XG1ikdhcP3+vi0Da6
	 /sBcc9R+FDSmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 995EED3E787
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 09:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176570297358.15091.12829771975835952676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1e2ca91c3b7ac0282944c8f4dd851fd0105ef8c4b4366e5ca08edf0171778c2
Date: Sun, 14 Dec 2025 09:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765702973
