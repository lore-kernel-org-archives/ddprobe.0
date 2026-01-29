Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19FE9326D76
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 20:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769720034; cv=none; b=Z3Y+qOtxDvfK6ugIa8T8NRYdOLnYVsG0marfqYDs9hGbRfv4KgYF0mR/SYPKT7RjLxrEHvxWFt2QEkgU+iAVqC5HlKDeN49XICrrKMx169FojwMmmGtj7tfqe19ThOucAnFXae/wHM0sTfkAdCEtYZmGX26CfHTdngW8SWUt4D8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769720034; c=relaxed/simple;
	bh=DpivLFFZtdbNqTW43iOf48BAMkzuqvGjhJ8Il4vcuXA=;
	h=To:Subject:From:Message-Id:Date; b=Z9cG+r8B7UQdr8rRy1JszeHe+qV5dhIPTKUfSacfowt0Wmm+uA0SClZGImIqbXeF5ZPxouHdOmGO2Itei369lOYFFXdrPl99lTZPYptOA6+B47WQw4ozgmaVYJzYw3+1hkIyteAOAvoeY3q+l7cnHPYwkttGMHMVBUpEYFe6hJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TJN+72PN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TJN+72PN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A96C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769720033;
	bh=DpivLFFZtdbNqTW43iOf48BAMkzuqvGjhJ8Il4vcuXA=;
	h=To:Subject:From:Date:From;
	b=TJN+72PNAVUBrt3dn2lD+ezzRpsRKyGH3m2Da9vvJ1YL31wR1kVVb9f7NuCTGBkK/
	 NTpyX/o9u0hntsv56U1xYalkNgPdwRl8VjpMmXVekIrdkox76+Mn7sGA0lB5CbTWhJ
	 LUX7XKboJFOCWk1ZqVOuQymJ5dZQy6gIj+8LNTS+DjOTsUUaIrV/vQGqOIH+MVDxk3
	 nYEnkD2V4G7+psMeiP4mtgdt++G4yeo7T2u7v8keUJKtpRYABAzU+YNq+Q+z6Q/gZM
	 oYpJaYgzHjeWwraPsMbjOu4TujJ8Y9Ox7uFjaMp6u7mVXcvgJpu4b2p0FyLQDbeEct
	 0QUZvnLOjGoOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902E3D73E89
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 20:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176972003358.7029.14060338462950215945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 996d2e54293a5e42139f879384e52a9ff9d6b397c221804d8cf9ddbc8b5de454
Date: Thu, 29 Jan 2026 20:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769720033
