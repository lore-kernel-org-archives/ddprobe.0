Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8AA259498
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759127994; cv=none; b=TkzY0pndtRZQzT/Oc+G9cKs7rh6UUrAeX3OloQRkHowPjNwrtBqxmYGJ0ViOQQQOYvkZzs3itEKsqgC1NVFJLQIDmqp3H2eyQQeRswltPmCJu4XEbdRznSY+mWHAqHiTBxgXNfuc7dkI2xxXBSceBWWKfAFVGUki4CjmBG5P4zM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759127994; c=relaxed/simple;
	bh=+2NYEECAk87do0PnCfDdUUsqRpszyCESpiyYdPLfI2A=;
	h=To:Subject:From:Message-Id:Date; b=TMtHIJDKOyFJ1Rj5yc1f6a1o+CIN3eZrch0O7rYB+alZp7gQnhzJBzEX/S0POTFFIKPxquC5GbqIC8Wlh7EIn4laSenklFKF4fQeSGWUF/+gd0e0Ls3sDZTjw9Ru145WowO4MyWEs/wwrBgcy4xPHGShnGn7HbnsPbZsVMzA5i0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qXV3NxIO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qXV3NxIO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA70DC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759127993;
	bh=+2NYEECAk87do0PnCfDdUUsqRpszyCESpiyYdPLfI2A=;
	h=To:Subject:From:Date:From;
	b=qXV3NxIOQNyCYyB2w3K+7S68Tk9Zik1PhZwshQE2h1QGWO7rm/g9JCyZeS/evaa8+
	 FO28t0mNq3405cJZSlTBhi0hrSHT4SbApwYUxOroGHzULxOl+ZqNNhABLR+AS5CqwS
	 hx8JORvVVlAy9AxrgQwKTEgyfveprnkoBNmudulfJplwOMvhlo71RwT5UjW/iZZjsf
	 lDsr3vNOHP6brBkxWKs5wWQHwS8M02+PLubucBUYgYzO/3jXsNRw1ZHp/vjTXKdCa+
	 tWOKO7NuElXLNQq1XuwrQXhMUzZ6fKuEJJGyv3UAJRtuKP96jJJz2DZ7mf9KOZuDyc
	 RSPCQMqp/shJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C5ACAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175912799360.2115.1057497298688103826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 373f03808efe551717fe4bcab9ebcd56d0a54cef9ebb01c2ee206563806f3938
Date: Mon, 29 Sep 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759127993
