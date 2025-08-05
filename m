Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2376610FD
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754357994; cv=none; b=F7UsI3/A43d7GeStuny9yY1gP4TBYcWItaI8cd1yrjGbZmZ5kwCWmtdKnihYzM16/oxcAwHHGqnlynyAx2AQuOs6j4rCmbv9X0Ljei35isRWb+E4yaX4Pzj6hg8Xp3Qqa8uO+I3WGeEfRuLDXp0ZByCEAtyRFFXWzmG+H/UEMHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754357994; c=relaxed/simple;
	bh=JBytVC/lYmP9KOL2cEsyaYo7WE5ueTxxKckCPd4BmQ8=;
	h=To:Subject:From:Message-Id:Date; b=rr7OdhwEhbw+YoplTXQLhqJwLtvqxvVsZqdiF9izLP4wmnkOeKadWXm8NJzEqY8WUFI/hoVxp+oE0zKSDaFamlWZyK/QyLTH/awFnw9hn3UiBqKzaZUci3fDoSsF5cwGD4EyrwKrZJKrtEZYM/HnRyDlCLbbvnUWgqZpp3EACUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g5W+aNVS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g5W+aNVS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39E6C4CEE7
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754357993;
	bh=JBytVC/lYmP9KOL2cEsyaYo7WE5ueTxxKckCPd4BmQ8=;
	h=To:Subject:From:Date:From;
	b=g5W+aNVSF9PBpOi+lOYGWKMLfEF/QyGQmp/v/42/p7sSt1c8qs7nAeH24utmWiSvQ
	 Tm0seLJYv4etCMQ8Z6lEkyK3zmQwtlPvLYIzIGJSytXFSspNbI+eT0MDbiF5QPNsPB
	 YWT7B9a+RRrDy4nbLR3r+IqVb9GM5YL5D21hfpz6lDi7+PaJnCKLQj4Nuo70j7M+ih
	 xNoxLQlaEhw3OvtbxNut+bO6IKCZhoR8pHInKdwKdJ6lKpIhaceN+I8fjzRNrMdULN
	 3xeQICMSB+C29If63rc8br38cFNAdBT7uP4Vr7mkKkr1yLoiBiV+c9LlT4wSjrvkGd
	 IRFsT/fY3fmRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C39C87FCF
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175435799357.12801.16179031485147652277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31adc93b4583e84b8f413fdb8f99f4440353bc057167a08daa47d6ae510e902e
Date: Tue, 05 Aug 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754357993
