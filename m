Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A49A33A9C4
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 02:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789699235; cv=none; b=CeQpjZn9wOjUtr7jFoOVxF8JsCyHy1KdM4Jr0o50s/ce3njWDKZC5w6bnhIca/Y6ptSnabDCUXUH2gha8jQ7bMC07xiSxzsHF8ozPPioOElwxD8E85P+Zd45UHeAAv6Crm/R5gFeWlz3Yp1xVGzQEgo8sw5z7P6RXjSkjRkLS9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789699235; c=relaxed/simple;
	bh=zb2VRl3xIBkFrYYuVLIvt7MNI8mZ4Y4s5fo4vOsf49M=;
	h=To:Subject:From:Message-Id:Date; b=tbHS3slnwfwgaDQI4OdpDfbD/mXcrrL8aVvoy6mGnxsvegAL2eBlFB0ko56gaktJbM7/b5BreK7059Kvg1oaKxF3EppJXOtT3RnwU0p1yYhV6fItS6IYMSs56f3e7MwMWkNCyULbS2GF1ue7Skz9tcLctxEWFMByDaK/8cqDyUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BRx5A8fN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BRx5A8fN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF65CC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789699233;
	bh=zb2VRl3xIBkFrYYuVLIvt7MNI8mZ4Y4s5fo4vOsf49M=;
	h=To:Subject:From:Date:From;
	b=BRx5A8fNaeJjwEP26rF5+9bVEzOVaavGWhyYBvknT2+aBiCCA86V2cKRcQOvPw7VW
	 Mllu2U+vFKzIiufmY0icwIf7Pmk9w1sp7aY73z0rpSV4Sh+0qpm9xHygrtj+GLZ5UR
	 xbhJe75wKcvPTRn4+HmxOrz4yajhFwkVL/HcPN8YbJLZpximEdlfnMGrOQ6Ab74NRF
	 S+ruxlF+U38LUVDSKzeOqoyyfoy6bKK2gibOmqjxzJ6bfh5zP1HM9QpCkQyC6sElVf
	 dlFuW1dWdZWPRiVtcqewYqe7gHYWptWss2KkaU/LJJrq0Yo9DusmMjUc5TmzJcNRMt
	 8jVwLxVUx41vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA5BC982D0
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178969923369.18322.1314475958633653297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c42ba164bcd214e2e944091bdc53a4893d51f0777af26a548cba481530ef5784
Date: Fri, 18 Sep 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789699233
