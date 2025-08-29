Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C90E8528E
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756429194; cv=none; b=qO/lfGyw8gj96FfabzK/9f/WKxGzt3wT04eYU17q7nqqh6/dCaCcangAQsuDjaOpv6G90SrtR62mbNrCZPm3SZu5zVT4KKK+db96hjpIQTj0eKLhsLfrSQ4urwDnnevhCIUC9KNqf4m5Fmuw74Gz5cz2nSKqt427qww2FQ3m5ek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756429194; c=relaxed/simple;
	bh=fWQjbe+PuhGPt/15PMAgZ0Y0Qf+nXjbSNzC4LggEwlU=;
	h=To:Subject:From:Message-Id:Date; b=QG4w9RhBbPjeOKB8uuJfCjnIsxbD1dOVQill80SLqbm7/zYE04uab0UlJCQGdxNrb7yB5QrFIrIEw5+h6VxTRkuxQ3ce7rdoMiQFUYKZTj5rwVsBo63O+guljjDBHAM+Es6EbJPbeKJ/rHRrCFn2ajNE7DLVGkVZMkAFZCbNLWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CLAaLC2V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CLAaLC2V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A144DC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756429193;
	bh=fWQjbe+PuhGPt/15PMAgZ0Y0Qf+nXjbSNzC4LggEwlU=;
	h=To:Subject:From:Date:From;
	b=CLAaLC2VIpQuSu6sF1YYF2zBjZZ1oGmk6Vb6LBt+kUf4XvnkZbjRy23c8+GnRWO/g
	 kf/mIO/M5T599o8x1LDSxPWw7rJR2ta9qAdo82qNgxBf4vsRF7TXM9uPiS0+089zM7
	 xJQjs4Fn5KeGyJWIbSDFUDNrxbI+IDj5+7CvbLCbF8J9FinCuhYiJWgspOibKUPSpv
	 QSCz6t2A3Q9IwfuIyvyCr6o4sl8zdGx6OaLWcXsNW+iX6HLBVsqIl0/wX3MYoKonTr
	 A6nW0NU0plPZO+E1lOTmjfHuMHuWQ4s+qN6OKWWy9CVDWbNe7+4ZV2W5hJMv6DbtE2
	 LLk4coCM+2acA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7DCCA0EED
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175642919357.27047.15430626509254822276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eff988d9b5416a429b8b1ee2c309b484870e5656741d58e9d9272b2ac30256a5
Date: Fri, 29 Aug 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756429193
