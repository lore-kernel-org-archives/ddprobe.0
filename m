Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F3661E8826
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 09:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782206794; cv=none; b=I1KpEqddP0Z9aL+YmgeKrktoPGL0aqLF40SbLo4GG4bGWes1/RD0tCZRuX0ILOZgyKEppetC6bC1+EJpsdeiAS7kMxIPOOoqv+ix2Ui8jUokIqtIYAJpQbezDm3yPxFSNVcfxHJ9ELrHzFgrX6YvtYb2ns7d+HvCGzBZy/gsaco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782206794; c=relaxed/simple;
	bh=idHVeLI3Q+I9GyD2cEiLp7QrxU4Ud37gkeGFEyx+P9c=;
	h=To:Subject:From:Message-Id:Date; b=i5RLhMe0disihOgj3Hlzb3QwB9PQHxHniOnXD8pK6YgT0yaUs3vX7ZjMoLmX+a3XW5JofCkDFtK1rcrsWJfGsbEMrKL4N/M2j2ZS0Lt5YhwPbXTbc15bcapABGVhhYOUEk+DeS/9gp0WtaU27ol8Cmh+IEqipJhIVMXt4Pt8nPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YC8GoUFD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YC8GoUFD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5213C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 09:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782206793;
	bh=idHVeLI3Q+I9GyD2cEiLp7QrxU4Ud37gkeGFEyx+P9c=;
	h=To:Subject:From:Date:From;
	b=YC8GoUFD7dNMU/Qs6Uqj/lx8BgWjYn97P+uaYAq7+OnaxZMAWAjFQ/24hUgzCCQba
	 isMI7bTX47Ofc8BAP59MVR7LUf4b6VUdZLkqgy7F8rkqstTwLyJVq+HFkKsuT1V0ak
	 6OdiyjCxThDLp7nHmGMLCdf+Aec4TODlRcGHh7IuX5KwS8Cqm6s8N2gPcNLNPh3J4I
	 bveKRmmLLIx5mLGMNo4IjDny0ga6Gq9505L6WGC+pdbmqmhWnADRiD84G+MD6EaL+I
	 uSPpe3fWSvQah6kz55ILWyXDFcq8sCGiXPcxE8bYZuFfUvj676X/WSGbPKovhddycM
	 7dP/3+dgUh8xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5D3BCD4F26
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 09:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178220679373.18292.13274304469039716045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 002d8316038dfa0bb9388509c300380a50a3353d8e8946f6b7c3f6b7366e26b6
Date: Tue, 23 Jun 2026 09:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782206793
