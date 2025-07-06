Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E782E370C
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751840394; cv=none; b=J9K4Pt2yy3ZVTDBWcL9Zc3tZmWXWHqSxwkELwZGfG9Kgv41yW5g6JoKa5pOgsNkScMjB7i2Y9+86EzmGBT4fyxffZAR6lGckHqQ9amzoH09VzoFb3OxX3HquhGvIiZXk0emRGNhzZWFcncqthjoKg+fc+9biVG8nh/1rCoGy6kQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751840394; c=relaxed/simple;
	bh=pyPR8nOoEWL2Np1UKSRh9/c2MHAy8IZpD6CdrSkCzvw=;
	h=To:Subject:From:Message-Id:Date; b=PpIH3na9qEFIvLKyGsjxTfChDYPa9EFQg4AhUzg430RSOeSsRokp7N441WC8TQ2e4uEuo2dgZro9efsAmUqUX/Nyvtv+FhNLKQdcPpmOr72Sqj5K2VIyWt1+9GmLO1WTYu7Y8StO5zA1m/FvCYlRI0/TrYzKCP8BGa7FJQ2Qn5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jCgwI+ER; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jCgwI+ER"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDDBC4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751840393;
	bh=pyPR8nOoEWL2Np1UKSRh9/c2MHAy8IZpD6CdrSkCzvw=;
	h=To:Subject:From:Date:From;
	b=jCgwI+ERyV+r6iU/5tZsxzzGK3uMBgnJc5y1i0zBjVX6H5IgFyvLjVcY7XhjpSZOz
	 vkJBwxjVGsbiMEcR47Y2o5oeUJiEug/iE3zrAbQjnL/tNS9m45LVQDWJtFqqQ6o0ZE
	 QHV/vVAJQJMYt0w6zWeO6bggkmhb3fYsp16FbSxAn41/3Q2T1aNtI1yLUp8DsjWYkB
	 z02YU+/FsKd4qR5quj56fa3pK0bm33Squsdf3/tWm2SptBWHAWM5tpC26szHmq8fXq
	 4KC6ECaULJSJqSh+afe+plE3R/19W1JhfiHhQ/BVrOzZ/bfnqqdL4VYc0nrvsXOJAv
	 dJh6ArBP8hWOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F104C83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175184039357.27911.960795940207585183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 552e18c7ec178a5e3a9fe3bc3fe526d07686020d8b1436dc28b741ad4674d323
Date: Sun, 06 Jul 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751840393
