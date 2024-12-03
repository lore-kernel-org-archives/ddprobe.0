Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA4CD1FC7F0
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733240153; cv=none; b=fAsyenJ8WH6hR2HHq1WdBqKiairTonpfB8F7iRrZWE5hJE2zg6lg4fYauCVm7HgdVyZ5EEFBAfdYgY6Ics6KOAYO9xXy/cteeBUmuPJaYXyeg/mXSkAVl+0wfo/Fe1y5aDMw2aqlwQ066saw3XrNgpc73UxBPd84KaAHOc4K7jM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733240153; c=relaxed/simple;
	bh=uRGdbfooztY6BB4Fpj/25gLdiRWy+iGtzznZF/hRQRE=;
	h=To:Subject:From:Message-Id:Date; b=mXhx7fa5Oi8LbNmJQVbqsfBk0rBQM98Lff4zUUvJqvij1jZ95dgjhRTPQPwbrolxmXVyRTGbN3I2Ddf1kRbPd0QnQ9dbbnS6SBKI19tuaUbenOxteRmKh8ijfi7pShitwRwpbjhfYN3gNHHCDbGe2e/a/4yOBA6ITLngDOOAbms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e6YcWVla; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e6YcWVla"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B04FEC4CECF
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733240153;
	bh=uRGdbfooztY6BB4Fpj/25gLdiRWy+iGtzznZF/hRQRE=;
	h=To:Subject:From:Date:From;
	b=e6YcWVlaqQpuUDFWZtYz7GbMesxem28nLBzDuQfjt+6ryMtT9IRTUKQ9O2ClGp6VJ
	 qI4V7yvESIjs1qWFJjWv0WPab8rtyk4dggtRNqw1p04faJ79Y/RoI1YazXuD5lLKIX
	 FrOi/KooOy5m6LFUJi1tw233G+56BU5Uq1fyArNT4+rqpnbWwRXWnJQPxRPKgyqyWi
	 EvN+m1V1hVTvA7cY8pr6mpNWgGh3Sqg4xR3pMvAucEjkU2rdxPLxiMDEKO8w5CXhfB
	 3ep1iBWvnZD71wETfk86dHuzVzpiV3ast0XFpEA5IgGvVYZeL6Oy0hB26uo54IDxdr
	 hicLlRi52xZtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E592E64ABB
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173324015363.10873.17960942534564363632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 546f520bf7efa0dd2449899adae1d73cf695213811719bacfb1b79136beeabf1
Date: Tue, 03 Dec 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733240153
