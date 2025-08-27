Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20AE42C0F65
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756276194; cv=none; b=ARE2j2RdHQBUIBSsGB7TwoWbl8YTtCAGAOoli0l/tHQoD29QreObdSsDIh4eH19ChkTt8/FohiP3oEFfwgztBdJ369y5AXKK96HJVA4/pg3MJbNGMw3wPlsWF0vvPzhzHqMGiK1OZVidGjVivi8qD59wB4jN6iOlrFuS0LOV8Cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756276194; c=relaxed/simple;
	bh=BJ1xow6CJcdxIX1ymbAreR7c4/WlGiuBCvNlWalC6VE=;
	h=To:Subject:From:Message-Id:Date; b=mJNHA5ZVXbfKW+J4h/xcaloaRt6QqkU2paQ6W4dG/GeFb2E8wGzH1sxD/kuHtBWL8MqfMfkuaBq8pSlCpg7JpIZ0F3K3M9Z0rshxTZYYR8FSPVaWi+3ma3if0aFuEL/JIY7UT/jDs1sQpdjxiECMNTMLx5Chh9A1d9G/ojbQASE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yx/kDasi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yx/kDasi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A151CC116B1
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756276193;
	bh=BJ1xow6CJcdxIX1ymbAreR7c4/WlGiuBCvNlWalC6VE=;
	h=To:Subject:From:Date:From;
	b=Yx/kDasihMFxYT7dWritgSeKNhHiYqCZBJ0zrmT5ljxvZLO4YC/x7O8UZW5QLx5Sj
	 VSTpgaZW4tkE7asIwNGnTnnKX2Qw5ELSxwkhnBouqEyxiLbMkigEkNZM6EvDxyP4Nf
	 iMMvkaCkqhMecaRjOrMEuSY+/nQPS7yqw514L8zdEnmuw61Tbb99qlkIIQWLFp2zjQ
	 9HP6WbJtZ8FhXBLwZgK/htbKcQxWaq6+ZbmOUKMeyvEw80Lxq3H5dG3wur2X2J9rA3
	 7oo6FsrYP84EDQJ1ui5P/8zW+l+zCNb0gFWQUSASn3VjTyp89EANXhstbPgIbd5lTS
	 RpMDhBeVPJgjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90687C8303F
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175627619358.2182.12273922501296216116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e85e68b6fa7f17007861ed3fcb7304dfa29dcdd90ed2713c5b800088800904b
Date: Wed, 27 Aug 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756276193
