Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB9221FBEA6
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736402153; cv=none; b=u8dwRBx9ih4jJJs8EKzePx9sfsCyXKDoJOL6MVZX0M2SwVBuUFOHRgXWpAomoRIB3J72iCYwRygkkJ5qjlVFjsKEL3anj3OjD/3uWqIdhjiOe4VN+qy4dyu1tyj/hs1XeiLSVNPueTXqB2jYybQjV2tXxhnOhItrkXYuwqYfr8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736402153; c=relaxed/simple;
	bh=dp76r3B9Eanx97SrsQpHLirLiLeMxm47Dk1+tsHky3Q=;
	h=To:Subject:From:Message-Id:Date; b=NeBKfvMP+KFqVpTRn9eFbgVZdn63ZZz6mEkubE1/5nIWjJiJAsl/h3qmImKBbi6mE3cK/fO4WMnGaY84zGNHd+7p5D/ySOungtFm7jGJu16liKlIRVSm3YQSjVvLc9LZmWRDAq2AFAgLFNE9sIeyQSRj0N5b5TULR+4HN785fRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gqC20Zw+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gqC20Zw+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EFEC4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736402153;
	bh=dp76r3B9Eanx97SrsQpHLirLiLeMxm47Dk1+tsHky3Q=;
	h=To:Subject:From:Date:From;
	b=gqC20Zw+2oiUd0RgwGEWfh35dzRQNh3g7YHDK31U3R5RP7HNiV03Mw6KhieqITuIC
	 aI78e9tUGWH0uBhKNLbdhXH+09PACZClKdLd74bCch+MI/0GQR6CbksOWvoL0j6+9S
	 mcMG+oZUoHhk8JqAXJFONN2S8n69mJXH8t8RmsgiPmiJzpOCOOFIe6DsarmBpsbILX
	 gHaV7+3LGPQVuQtCB0auL4MY4IQXRrMaICoBAqTMrJ6wXh4aWhMX99/WGL8p3sQEGk
	 720cSEou4VSOlv1e07nIq/AhW4h3eqPLNUZ/rpc/t9uuk5xa7e8vqlyllm7KDjYy5Q
	 bkD1b0JL1TpIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929A5E77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173640215359.31016.6053969501158134312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ab719908a9686da8d0f3466ad938544af334039fa15cf5a0f4f2c43398d0590
Date: Thu, 09 Jan 2025 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736402153
