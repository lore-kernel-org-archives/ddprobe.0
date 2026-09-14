Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5977830E0CC
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789359034; cv=none; b=mFE6tky54h/0fmg5ry+hKfkMY8Sv+A9dNIeNxSoFA5A5gcG/l66zaagKv8b1QDhTKmWAh6/mf/BQnjQAPXPwFYpEC0I9owlSaqLvJ5TAISN0ltXcVJ0nXJWcnhV8E0SfZc49r5v4ADMbK2KeZM5JgfDwMOga8bvrn14cRj57mgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789359034; c=relaxed/simple;
	bh=HSjKSKvWaSTMzkzelCHjNveMoLUzLIT4T18OU3VRl5c=;
	h=To:Subject:From:Message-Id:Date; b=SpoyqGlwR2i0d+446oVRSkIkqdrQbfil9Ps63ZpCqxj0BlVP6/2c3Tzydlts+wtpfP/fS7CHi5mFIt3C5zKpsvU1FwewR5Rs4twZ2MbOOMBUtLZIOtUBt6u9o+cS+vjjoqwQVS4/wNNO/s9Q+25zs/yLJuY690c1NhZiqrnRXnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ANQ+3TZ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ANQ+3TZ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBC26C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789359033;
	bh=HSjKSKvWaSTMzkzelCHjNveMoLUzLIT4T18OU3VRl5c=;
	h=To:Subject:From:Date:From;
	b=ANQ+3TZ9AeQW3g0MfYYixxbw/NQcbKC5p0LNiiydiOpioty1eO/vfMTqTvubSLytl
	 DO2iL/p7+ss0lKmlhEw90dACe4+G8DK6/p3KYo0sFAsqJD1Y0ueMLCEwb2iun4hYXo
	 kjy1jr06wyRWX2XAMBTqDVM+wfiTzOQk4QCB0pAQV53/LxuqUcPwurC4hxXpZ28gkW
	 7kW78Gx4bMJZX4iQdIjuLAWuINblYOc6vUr+o9X1KTQZCCS0sXHYFvzATLorIHYBya
	 zW6d0x15/dB9QfMS94NemIXyvEs6drtWi1Mx4QoInVMHvp+PZxXU1PERz6z0qEbi9C
	 OE6lYCKpg7BGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1155C88E50
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178935903368.4306.5640892545625047836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65442d69c775957dd7d3ee13895917a6d49babda2b0d13d2a40a804c44555056
Date: Mon, 14 Sep 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789359033
