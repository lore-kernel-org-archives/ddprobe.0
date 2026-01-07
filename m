Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35DF3155C97
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 07:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767770634; cv=none; b=BZwX0C5Aos9TQAAXJxkaFyVovi4BtWZ5bctff9HUoDIP0N5lHhxK2deBWbgm2+6sBj0Zb1H2MnQ5DM4oPuyTM45VOzjW8HkljKFJneaMsSZI10m7PgPaixhHxGq61AhG/UdpAw3wJJaTY+PYoonFWe+MZUMFitjjM+tFkACe754=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767770634; c=relaxed/simple;
	bh=Q+lXbXVzjpYheXiW241OXYYE3qqDedNvBOQK2zfntyg=;
	h=To:Subject:From:Message-Id:Date; b=U8zx4F5+Bpz0v+4ujoLlLyorcTTUACMZ3xNejjPzugUTkr7d5kyQpFpVVfMju3SwLieYVHov+mdu0VAzTgqe2/h2771VBlNxZ9klcqBgBffVzqCP+eXxGVrZZP76oDTHhKDqiy/W38zxNR5BEydtyOEm4qAi0ceICTfZztf5sHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bGC6m34G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bGC6m34G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC287C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 07:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767770633;
	bh=Q+lXbXVzjpYheXiW241OXYYE3qqDedNvBOQK2zfntyg=;
	h=To:Subject:From:Date:From;
	b=bGC6m34GRNeDLQEPyHbIetQ22Cr2anQC3RQP5XG3LBubaTCjbZhvAh+KKe/1e7K8R
	 3dVhpOC3Z9EcYc3iMMnXYH+uEWbNbZh+IuAmL6tq7TfJCi00LYEnlxKkFhh0eEJmmv
	 gUH/5lxDdq0myvnU6NmFxgiqb1N7arw1e5Z9dBh9zWqu6ZOcIktcZnGgI+EOTP8Z22
	 /djBAFb0A+v2nq9E2ZJFyYUNePrM5A54MXAUpy3JdFcO69pXWX/2uxf2fXbj0Pgxct
	 gSZ3E4JKlbrdnE31I0QRu0vecO17OAzlLrvYaCTZyFguivFeCZOChe6rSwqqdvRls8
	 D8CPSxBSwThGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD39CF6BF0
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 07:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176777063362.3800.801572780143458415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76b4f322492d3c85e81720cee99e741a50335933c5ee0a1115e0fdca3636c152
Date: Wed, 07 Jan 2026 07:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767770633
