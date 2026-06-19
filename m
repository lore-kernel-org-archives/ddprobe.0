Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D5D1ABED9
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 00:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781830594; cv=none; b=ugy52Bv366xY3AJD6Ui6hMVbmA+OlIIuVhkBxF0EAJgq0LF4BDaYSrTeqmHgZ2uEghutnJzn8nES6zxHnCe/V+JGemqu+eD6GU9XuwRBcrOYjq/6FJmvkn5wAbZjRTyXKZEID3D1IYsHqPn0Ix0IWSeBMkpej10KqNjsPrPX7zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781830594; c=relaxed/simple;
	bh=hu9jo2A2J1wZKTdS6Y3FsziE7ZSGW6CZVMnHhfjzNcU=;
	h=To:Subject:From:Message-Id:Date; b=CpNJkM9Q5Q1S+UljcF2UHhrr05uCVXqbRcidVMH8Ordke8YGMm+L1cACTKjqbZBT3RWvAJjTUTN9m6XcRXHR47IheL8by/z1P1elIwPMiAezTmDeYEc+XNGWQZZ8ihEltl4joeE5M2D5K6G+co7ymhtpkc5q0Fkxj0qEQNIUM4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nlIV/O/h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nlIV/O/h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6BCEC2BCC6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 00:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781830593;
	bh=hu9jo2A2J1wZKTdS6Y3FsziE7ZSGW6CZVMnHhfjzNcU=;
	h=To:Subject:From:Date:From;
	b=nlIV/O/hGicNKq/mONA7/XaV2ZqxiIBf2ylwnf3V6B4XqZo2eOnkJKG8i+9jnbXTb
	 SjIDz3dK5hDMq4Tew9q0jAw1i9S3nBzl1l95OtAg+TJ2sIKGq36Bs1MZfmP4MelJo4
	 RTP80LvxvhLbQkNfQtYEqwYU4eSwZ9R2Kdrtnj0IYygYJX3dScq/yQYo2xlHzlloVt
	 9XAw1Ntui962D+apdaHvhneKnZSg0qTZZgsm0QKjHQgDqzb8O4wvgJyvd7Y2yLsaHr
	 MvMOrQ5pRQleDa4+XzFp59IYS6qZvUZRWif91YbcHlhHiIsqImSrPiqGllPjJT9K9f
	 gSPR6f8p1FzfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC31CCD98FA
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 00:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178183059369.15132.10338930291681418289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01ba6601d3518506833ec1fc12f702ba9bb5a5c22147878f6b603b9bd45e24af
Date: Fri, 19 Jun 2026 00:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781830593
