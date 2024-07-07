Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68C927FF
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 07:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720335983; cv=none; b=LAJmfY3HgmEjbZQIc4J7S/4eE7vseveqk7mJY7UJEKsjW/Ow2oYmC4raVG0xht78EhI8i72orZjAjJSc3pMYFytOaXEpR4u6WVpQZRVcq8slisCyZ/Q1BpDDEHJO5r6lQepzzrmFibKm6N0fkY4JIS7SQDZxQJUzV+RuDY3QP1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720335983; c=relaxed/simple;
	bh=r1bbQDuhjfrA4BIdWHTxZ3AQazuaeaGzS+vShoIgqAk=;
	h=To:Subject:From:Message-Id:Date; b=NNY0ktuWtG+3S8J5R74/72G5GFJ84qJTMu0h1KCKa9W193XB+5mWGp67Gsv7ijM0y9hfmpcrLkNTiymaxhZfAYRUyq8t3/Sce4zevbt2Wu9xUGVKmhxg9B0HRNeajuOk7ty4m1cmyyz7SzvTMavvGP5cp4tD1yVrILwJ9k9NxgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QOMj8KRC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QOMj8KRC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7861C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 07:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720335982;
	bh=r1bbQDuhjfrA4BIdWHTxZ3AQazuaeaGzS+vShoIgqAk=;
	h=To:Subject:From:Date:From;
	b=QOMj8KRCmxkHuzFR0OTJJWWqJrKTazIyiep47EPoqTxy3Ge4oGSKSw4yQUenSC2jT
	 FNyfraqQnkBPBYJMKplajUTHrSTvXSPOow7dz0nBYK3xflle+RYHznIJCaGCEtocO2
	 QHun79B5KDGsgYtbpGBG8fip1sYvi8JoX+/AuHQYWW/EA5FPvFIR/oPZ06vm9FBEhp
	 KfkDQANSHT4Rbm3qU4u5DUKmXnJd8QMzif2Cn58UfvHgdpIHjSE0ejGpoquRv7HEuz
	 qmayBGfzNmhQ+Cx1dmpcvsi5yvcJLwp/p50Fly0MU4zyBdeWFd19DTKMiGtoKyk9+L
	 xQNCD/8YaMf0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2A54C30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 07:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172033598275.20386.17053191048748949023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66027c64c46c997c1e0dc8367aeedc094117b11d05a6af0ad5e02cbe47a93957
Date: Sun, 07 Jul 2024 07:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720335982
