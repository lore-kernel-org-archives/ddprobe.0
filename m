Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 504D12599
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 22:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714084343; cv=none; b=a2U3NicAw4HMbA0tNZmec2uk4s3h4wpKJ8UAoyBhnXh09T0OdI7+3+E9raTtSQWOaSC2dvl1mc57xNN299DSBOKElgLYZdHmJk9BMC+ndQywMeOpFK2zLktV8DQjH3RzmRvx0ff5H47W/SdH7XpHtMzN+iCqLKOc2qvhMuF/Dqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714084343; c=relaxed/simple;
	bh=Edu5yg1Xi46wgNRxBpbH55y8v55tCP2KtP0E+wxPjCM=;
	h=To:Subject:From:Message-Id:Date; b=QFdS1fls7E2ZENdvEXpNrfpRnKVV6iZYyDJ6O8T7/nKdp5Rs3rfpSGdDZaPOlY+x/azHBm2zTLdxRL0XGInzSwUT0xWA6vMrOb4fvm0boNVwyzXn5xswk6+oUo5lHM+qbyhXiOT7UtB/8DvlSyTZaJVNROjB9vlwS5+QcT+LmkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iabi5KHU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iabi5KHU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDD80C113CC
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 22:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714084342;
	bh=Edu5yg1Xi46wgNRxBpbH55y8v55tCP2KtP0E+wxPjCM=;
	h=To:Subject:From:Date:From;
	b=Iabi5KHUV4tHUBcQpW72k8mHBOklZ9O3Rzye47izFVkQIi/ztbamDe6cD276p0nxR
	 QERcVAXNddUYTdQf5o5zrV6dqeocay3Bva5IKvGR6+0A49RM5uitpNMMBZV0QI+sJe
	 uGzsEwhTY8u/ofjvZPnvO8bR+x3N+9ur3N4WSVdeAjU3mC8j2h9EVg9WULxqf2v2xG
	 mRhBlyDnFn3TM704CKSN2DFLhq7yaT1YFsQHztu3HZ6VdaBq8QsAaqO1MYOFFyIEtR
	 8aQotw0s/AC1p9NnpkJmkmplG0GnywZykCU989tJ491X2EOgQGgVI3sXg5o1QSo7lH
	 NHx9FxOQ47kbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C99FAC10F1A
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 22:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171408434281.21400.6412954965017854038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78da1e7b67c1f39997f667eb9749787b9a30ae6cfe3f622849dd0bd9d97bfe65
Date: Thu, 25 Apr 2024 22:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714084342
