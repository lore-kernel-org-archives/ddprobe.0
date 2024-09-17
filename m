Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11E8C1DFE4
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726569354; cv=none; b=A2dr9wUhzqJFvGxdaBQ2FX7+vpARx9XgA7beJbc5poxFGcRJKSbASt71uyrGOnBCiScHPfLtP1VCj7nlDUrNCtVoWh6Db7V9UxoJfRnfpK3rmmjJTDTFdl9ekcZC4QHjoPojKW7CQ9FehPjL+/kv6cli4RjBjipEB0NA2+Ag0cY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726569354; c=relaxed/simple;
	bh=T981QIx/DXZxjee7F6fNiR5g/Jynt91q97Ohbczxgmw=;
	h=To:Subject:From:Message-Id:Date; b=ONnLkMnJDNSzFy9Ud9U614BYp2mqtd6vOUzxgSb0ued00AoGx3QEt9xX6XiPAz2rFBU1GKvm8Q+4YXIfhsREZZtn8XjDjhBxJNazLRkvuNKrLHCWi2DwGwRnW4Hld0Lx93ZotL2lnFHP3GygcmgAM7Kq+4uksBWsGbKVsqnOt+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VWpD70qe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VWpD70qe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E298C4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726569353;
	bh=T981QIx/DXZxjee7F6fNiR5g/Jynt91q97Ohbczxgmw=;
	h=To:Subject:From:Date:From;
	b=VWpD70qewth+JzKiGI9pKQm8FDeIUqxmeEaK2oQeL8LCbfaI5vQzpd6uEE20UHyfY
	 vju8R7ZyHultWctHHMYqVqswpUUuZvw9QPGa8NW0wfLghcRlxyUNoQZyakuvX+OwOF
	 AzL/kU/Oo55vpMoi8qCb+sGF9QmzCgemCaVnW/D4hnUG4FUz4WZvM6KtDvqvc4uEVp
	 1QD8qEpSMgTeCmfb1itflk9zLeDIMrCZAfrLMt9hY7TvAU0skzSw9PaUn5EFRSPzz7
	 AJdY7CDw7iss4RJvK/5HmKzmSTaG/9JUCV3tgBjGNoygWoLbHEueOlKp0x8iLaKBth
	 78S46smNxQNYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F35FC36009
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172656935357.20459.10788086609540970810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a37d6cb5c6e509b223160b4403f1440f90d568002bec871768e0eafc97e421ee
Date: Tue, 17 Sep 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726569353
