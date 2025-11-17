Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 183213161BC
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 19:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763407915; cv=none; b=b2L8DKrfJEBvypY800hQrdv6mcfE99CMrQaCIVvl+f6dCdczEE0ewHrB5L0NZCGDOhu7VowkD4DufAy+YD/6Jf4dV5Tj3BkpdYle6J81Ou/RaMdCwbdQNTSNOBhdi7zGcnJQqwkbKKhbPBKOc7eBe73mJCBjI8gFcneMdJrpFek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763407915; c=relaxed/simple;
	bh=r2yWGkynG14hV3ZKtBoEGRCje/Wh/rVvBWGJmrmclek=;
	h=To:Subject:From:Message-Id:Date; b=MAoLbc6IcI+avFOPdwzLbHz4Xzr5BEYfJLwO2ExQKGU/KdNTjJRqmk2VVLv11RT1O99z1g6xY2JL9pLzsp1N89NPkdi6oA7IDmJLwL35pekz1+I9HeJAqvf2R0imlwl+JYjIY6Ot7IOELmcS8XQz3P645Wvia7/P52qzBOufj7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nFRGcm2B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nFRGcm2B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7080C19422
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 19:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763407913;
	bh=r2yWGkynG14hV3ZKtBoEGRCje/Wh/rVvBWGJmrmclek=;
	h=To:Subject:From:Date:From;
	b=nFRGcm2BrFf6yaV1LxIYGi29gmwK9iXiVj5dC7H3wsEgWa+qbOetMb85224P4Bq5V
	 uiTeJQDLC4Rkhs0o4RR+f248W9QQ15XxR/DzvdsO9Rw0qHDgAHJO1e2O66mQVFsNP3
	 EBtvZtcBZEP/lazR7hCCxMMnXJFb+bDaUUsFGfRrhxD3D4CDAUyfy8kQcmPzQy8Xba
	 sACdGNU9/G4eBNtNxcHL7C8xvDlDCJlLKT5uIy85/qAqoHjAEtmWEraYX/A+bqb1WM
	 vTu21hGDxIY07x8Wemj6cRAANByg2EpgC41eCeeguuPTAvLWuk2zvddlA4l2dbCm0g
	 bOFdhcKSS7YFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92343CE8D6B
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 19:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176340791359.12368.4758760892204809266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9739502cbb44ce2e7d770ffbaaaee007c0dd09046861456f8758c2f9fbc0af69
Date: Mon, 17 Nov 2025 19:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763407913
