Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6148648C3EF
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787854834; cv=none; b=k3Yin38lckkV1mUibCfMUzjUUhkvPptcEjFSFSeeW1wGinXw0yRo9YM6ca9wRXAlMCHDJsItVhYNL0N/uj8YptcJgpGJVom/kTQsU6Bwe+3T/2cjDau1VO0PbUJdr0Pig7WMZne7lsFye41XuLykt80H5yCuXbWzbrfZ2owY0nY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787854834; c=relaxed/simple;
	bh=DoVDsKaLsvCAEig0bLn8qwi5Mz0yyCux4ujYiL/BKKg=;
	h=To:Subject:From:Message-Id:Date; b=CJdiF3wcKcPXAnLjN7r5BEydOqxCwp6AOYbKCwKN+dlexnlF5wmOCPF0MabxcIxRk6nJyI41ZmyRNb8pWsVYZ+a5Y9GsClBc+wyx0XFvAt5h9Lrl+YzbaEYgvmS3+K425wkGeFpDok0pWvduN8ioOsKik/v9wc1ub7q7v9dbsOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KkXAXrl/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KkXAXrl/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1284C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787854833;
	bh=DoVDsKaLsvCAEig0bLn8qwi5Mz0yyCux4ujYiL/BKKg=;
	h=To:Subject:From:Date:From;
	b=KkXAXrl/8ECbewyB7mad0M4f+Y1VA2sSR16BxA1Dux1Olx9ApqESilMUjIefy+A1r
	 zXvbkT2HvxM2zmbQ+E1KQxfN6SR24uiFk+cqblY39MWMPMQ1NNpSTP+rsl9Qu7MSF+
	 DWsb5tIMs8Mfqwruew5W1Q1qMIpnT9Hc0dEnHc2N0ifEQZDJfPO3EtQnbj8bkH9ms9
	 Po11xbc73eqXH/g525orXJIUSo6BiExNtsk52mkQLENUvq0NOB2zoQ8xfAgo1CTh5G
	 1iTcjJvIyhpdNIK7SZ3nad2X4wYdxnkmYKzaKkGfGbl1NzQNvWUZEV/CJCcNEB/nN6
	 r3X3gHJRvlScg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0BDC61DC4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178785483368.8710.6670319983047662864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2545ffcf87b40b28bf999dd764ae53fbde2b22033d77228d3998dc8273c64edd
Date: Thu, 27 Aug 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787854833
