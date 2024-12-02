Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E9FE4A29
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733100354; cv=none; b=MPNx3ie5t3A/l6B0Qjrevbr+kbC4e/vkApHKUFx9Xm3/h17SzrUXvJbDsXoF6PJ8RRRBxHblGXHWo2r3OjNAw0ApxiP5Q0pbt+/G57daPQwrTdBofVyKdrVo8mz7iMWF59KaYcQ1VfOznhtPyRxqTAf4g0IYeHlwhHP2TjtxQFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733100354; c=relaxed/simple;
	bh=vBxxqTtHdCH4wogK57VdQ8Dtjqpu5u9kRiPpPksDl9U=;
	h=To:Subject:From:Message-Id:Date; b=rcy2dXI0T142lnWN0dD8ult3wXE+OHB01bP8mqiWuq4du0r786cJ/tQ4yJ/AleNPMRKHb3SmFXLie1O/KCiUo+vD5JeMjr8rz+O9x7/b/pQmrUPrRrxQWhTa3po4aNcu2BtdEAlvghbgX1hTI9/3HvcvW01GVbCEwEMAqTPIAmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IjfPXfLu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IjfPXfLu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E89C4CECF
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733100353;
	bh=vBxxqTtHdCH4wogK57VdQ8Dtjqpu5u9kRiPpPksDl9U=;
	h=To:Subject:From:Date:From;
	b=IjfPXfLuLT3bzE8MSsyP5YV3lMxL4s3PdvVKHA+pIVfLrnGF61NU/DJGHi47Qr5MS
	 0BkrB7Dfk2/uEpO1yZIX84W/3ZQI5GWgqawiUWjKdyaMtY66p/25lB8cIh2wP96+wO
	 /pMNCmnqBbfkOA8zUpRZbVPOGcu9YiH9QdKngsl6qFO7knuN2yeoUjx0MNmvuCQQ1H
	 yNuG8Pr1ElbdCHeKBC/jggf52TgxEiQ3FiD+Die5fPGYDzk6Br48zj2ZTcnYC+tuL/
	 uWXH3jT4HuXuNrnKWbsYplRc/z8fbwyUm4b7Hhl+6hnG9YjA2lxPwJfU6DvR0lzTcA
	 myTsfEmO7rUgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94710D49792
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173310035357.6290.11118787438847376995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b81bd239a61437cbbc8a80a8ed0f548535ee774349a70101b55272c025f97c0a
Date: Mon, 02 Dec 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733100353
