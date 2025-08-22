Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B45A2E762B
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755902394; cv=none; b=KsVZ2fZ6PEY96+tgJ5nVbj8w1bXD9IrrP1qevyI6gtGYepAiZRG9/8Rrr+84vwGnK2kH+OzkRQNDZE4s1xmFsMuims9Mf9yr83g1zxGlGHKAa+NAgMiXT1J5AisJPZRaRSKHT23/0KeB0BNhCMl0AdLYg/PyWBekCYNZpoPOcPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755902394; c=relaxed/simple;
	bh=eBucCnr+U5OPxkAJjHxtPMntxjHX9pjbPjJZrJ0/XZQ=;
	h=To:Subject:From:Message-Id:Date; b=FJRnqmXg8LGdioqd0PqiRZYnbHqNWaaWducMs1a9vmXmlpIvWTspgEMT5NIXe6HAtxV+IR0VSqK845cGLt28iD5xT7LEr02ko0eEgN+wxQTUv7/WFS/Y0gyf0hpLPUUlNX8Sw9bweC+TkWq8Bm37GeJfB81ziJJ1Yd2eRv5DsJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bShYWm+k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bShYWm+k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13FEC113D0
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755902393;
	bh=eBucCnr+U5OPxkAJjHxtPMntxjHX9pjbPjJZrJ0/XZQ=;
	h=To:Subject:From:Date:From;
	b=bShYWm+kwe93KiGC7DSZF/R++/GajZklxU3blh4NhF9ISoGWYa4P2wZ5gHBIjXyh/
	 epzxrOXYpZ57yDZhXyWMLWBcjMI+XeRTiPm4TXlmjJtiE8SOVh38mI7SyVC0LMzr5t
	 glqwFpTbRZzX/KbW8NaBUZj5Ry+CpILOsIOk1pGPqSwmu1s1jris5ZtZLGOYm3yliV
	 096qVjTIa3ox4lxtDbdBNfaCEMTTs+eHAAb/tcvk6c0tx1kXapgJtADO0gj+3WJvxK
	 UTGpNjUJPRv4f1zRtMZ08ZTsAr+6YYvBKH/PkfG7Q2pC6xkJxOgmOHt7BQkpCK1fG1
	 oEv1fEeQ5yCBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF34CA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175590239357.548.6843571003079632322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5b68555dc65aaf002d093a0d22a42378b73660990ef803445e76c4aac58a187
Date: Fri, 22 Aug 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755902393
