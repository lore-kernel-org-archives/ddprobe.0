Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A49D17C91
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760827794; cv=none; b=IfqC112xIoLi9ThqUqZefX3n3JTMq7b/tR/u60QBYk/yJFlF605b/5xuIrmR37ph2+03o6vnb2DmcHI7uRnXRcNd9cnl81YfmxMH5EI+sYF2Lc643J76IbadATwfe9eYLXe1cWsDd1wy+bxPVXc4Ka3UAHXHgYCy+joPYBQpFhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760827794; c=relaxed/simple;
	bh=nunj/kyVnUuE1TNUrSRG5B0qWXdnqMUXJqNbnM5TB4k=;
	h=To:Subject:From:Message-Id:Date; b=bjazvs+ZWQCxWquqD+odZ7cQKX2i7hrbUfOByAygzfSyLcKqVp85eommxuzzXVK9ga5lZ82U3vdd5wQ0KnAxnYqgWriMAdPSMeX/RPt4bxVTTQi2mYCi/rryzPwalgBs/d7kzSCSgKcbDcvI/A3uhVpUdpzitX47H8iQ+en8ipA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cTeQBrXE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cTeQBrXE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6681C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760827793;
	bh=nunj/kyVnUuE1TNUrSRG5B0qWXdnqMUXJqNbnM5TB4k=;
	h=To:Subject:From:Date:From;
	b=cTeQBrXEsqCdne7tOLfZLq+WkphVMjyA4/1JS35yH/mbVWsrAfpzpAkqV11p4uOuC
	 NMnJD02UeIISjxhCpD85cvthMSaOncf9Gb0ziWWHXz51CR1XZfv2YeiMKtz2zEVYoA
	 0Jo2Fj6trEnIq2nFzjunktu0BtVbNk/j5AUDeoHQ/h47lR1yq2uHzSZzpsIdXJB7Jw
	 Y7AL/ZNroIbUu7OYUY8inqUIk3cI93P7pK5MEbUVM9bURfL+gguXcd/ulxaHToR/oa
	 zx38LIBfgqUBpCYDKOvNj3Z2kI8os9hX55jV08pQkAmK44QXOxpxgT3kTiitMBFtS1
	 wzvAw5LL+NXng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92854CCD195
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176082779359.15340.12772237240885229158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7475eea731628135dd3b0fcf17c6d571d670137d81af9a8d96b005ecd2917c6
Date: Sat, 18 Oct 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760827793
