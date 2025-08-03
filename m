Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A91A634
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754207994; cv=none; b=AT0A4qslIQGs/mh5oZTQnjag8yj5oVNsh6Zh9PV8Zg7J8qXr1UVs4MUIyEpFH9RwdDZKvgzKwJZZDoyIaeawGraLUzFQJjSQKpTmts1dsrC7aVHVrvxCSEUyhfSYxlaPWOldX0bcIEWf9jfodPsn8t5JgLzKXTUukbscRxUQnXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754207994; c=relaxed/simple;
	bh=pA6hvWSGIZkcOspYNcuZk+50tcUz1jbaB9xSI+XesJs=;
	h=To:Subject:From:Message-Id:Date; b=PXWvi4po3b8ZZQc1/q/GkcFmoxW2VGvtcUXTXws0qam/NHsWY0kzMzF2yZjwYUloOUiKB8wI1BYy+tdgF/k1r83kAH4FWvCiOuK4hhOzaCF8jCp54ib6+UwPvZCneyKVHHVS6JWkr5pojTaStyGyR4fWDBJUN3kijPVCDDvd0QA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R/tYB0O2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R/tYB0O2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F27CC4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754207993;
	bh=pA6hvWSGIZkcOspYNcuZk+50tcUz1jbaB9xSI+XesJs=;
	h=To:Subject:From:Date:From;
	b=R/tYB0O2tql+VPdZQ1PoLET/n70XiUmvMYqeiATLia3UIezyPuZtp9s4iLjVuI2bz
	 NFOhM6hFkhoIBxZX4tPktYYgjpXSk9/P6nKb+VIOZSnl+ixz8M0+wIPkVLMBebIfd9
	 Z/9APToLYyy4l7PV7MfmvEsUiBSv051qw0cuRHmj0FXVNv6X04RjaUQNBlZW94qitl
	 UKLzn/k97ZFsRqVnyHT5W9OEs4zIxLS7xbYsIF7eeRpEz5P6bwPqYcj5QGWDmB1CnK
	 LPU/kK5JoRn5QZhfHc1/v8rgksJLuEH2zjrXiAyfLUGoxuKQyZ9FrIVTrxumAJ6/Wk
	 L4YGGcpCke5uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F758C87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175420799358.32334.3750135690604365672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04fc6431f69cd548eea5f51bda90687f01831ec7b572ee0bdccd264a2f684ae1
Date: Sun, 03 Aug 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754207993
