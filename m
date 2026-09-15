Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F441265623
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789486834; cv=none; b=iWqiNwfQ7BgUL546vMSDVkGAlzQwvFv7uxeyp8gQO8VBp0rdFlQ15jQQB+3uKOSUBrxgqtOGcztLmSpvyGoLDxAN8IzJL9XpyJM2qrmj9WF4P9SqmGErOhedFtyi7zRIYnfWMBtxeT4NcF3nslNh4D+/ONLT0XW8YCC+aOfWP1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789486834; c=relaxed/simple;
	bh=SV+K18E21U4tyMpfvoDRy2Q+GCbxFesD7j+Ehi9quQI=;
	h=To:Subject:From:Message-Id:Date; b=MaXBNdqs2iPWc7gMAUA6Bl+HxG7mhgnleGDPTwQ7P/2ed1CQXue66EyMPDpGg/pRECRIgyZSc9gxyjthwKdO88vPohMQih54sT1nNF12tKvgC0AqijNAW7f6c7kACTDmujzhgObI+H9pO7hUeubQfiBZmUHsKGVf+3Bj/L6B+2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D0czmjbO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D0czmjbO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC86CC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789486833;
	bh=SV+K18E21U4tyMpfvoDRy2Q+GCbxFesD7j+Ehi9quQI=;
	h=To:Subject:From:Date:From;
	b=D0czmjbO5BQVvNKIjtvfMT3Rgki4fklETLu68AJAPWeqs7bCUk2XS58E4k+jNdOd4
	 QpWTSGjwm/ARrOUL5YiwrAtGqkV43q+KbQybSqNlhpfnPATleRWYMl71wW1CJFFyV6
	 RqxbMJIMmN9RbD1Q/AS7idQ12BvJDI9ra0zZ8fx0dk08ZTvlJVopqQF5e9ZrNuWFld
	 z0Kx5AuVz7o4zw4vCVPC7mVTasdmCxbgTJI3Hw5uLr46qafrJoZmmhiglsgYZm6Keu
	 PRBkTCINKTvWJ0uP2IMKdZc0EmqHiVZ6BWGyqDloXy3PXupEgnLV/JPFn54OY4QxZ+
	 b9yoWZyggyhFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A81C88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178948683368.32733.1161180512600139637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2c4dc87e595c1cb77b6d4dc35baa515bee2b3d7fdc2685d5dfa837360e2be2b
Date: Tue, 15 Sep 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789486833
