Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1922B3A1DB
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762699794; cv=none; b=lPnfxR/m1x5O+PbRCvCwRu0+CUnxUiYFIUVZz3DNgp4cbxk0qWR85RQUkGCv8zOowqkwMxpHUkSJghhufJS076Xr0Vg+imtG+ddxXjI8awa2GSRvlnDjVc1Yw6jVU1LHZKeW8gFL5qWj9TbL/MQO7GUPm8j2i6Bzs8Id38J3aHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762699794; c=relaxed/simple;
	bh=BfSQaj0aIEGZDVqT480A4oF2PsYN/H+VL6zMiUtwlbg=;
	h=To:Subject:From:Message-Id:Date; b=BkqW0ww9Zeb90wGeuI1AEysv3XF+MlCGw/TO7ajoT4iuYz/jdyaH7bSlKfv1ULiXrfZLQs0fVTs7CyzanfeOMbYjAwozgFHPRZiktN5FjBPYfdQxDnE92AxJw62NE40xsDYgwreOCbHdlFOaSUqcF+5dK1iMnpk+ZHHtMe29PCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F+fVQxz5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F+fVQxz5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D9BBC19425
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762699793;
	bh=BfSQaj0aIEGZDVqT480A4oF2PsYN/H+VL6zMiUtwlbg=;
	h=To:Subject:From:Date:From;
	b=F+fVQxz5zMtMnCO83xZj6wK4SvRh0dD9vRPk3sf0cHcdeikbFyp1J+bQuFZr6VBI7
	 71qRogiLcTik4n3OugShbR4J60rXO14mLO0pPPKacP6dmvOP48Wv2iqZcsdSp/dmwR
	 8in6RnZEFmHxy8uwuTJUihOgCuzsRx1xyTHGfHLkBVYiRW34pxy7F+eOPFaglwE8vH
	 xhA5Qdd72w7OSUoZOZ4+Ff9KU3XIwFx/pFaChqCvVMJeWPhhTx6laRV+J3eU1+++sw
	 Vwipo8TyamhipwjXmnNrZaal8gRKClHdP2D6Qfx1yc21NjKyZxW2VmwmWkFuABV+A6
	 uzr+k6QaXBEVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F05ECCFA13
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176269979357.11300.16744694541920914387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76a0af5e14a8c47c4183958eba2dc9496bc247382e52a98ae1ece3f3ca191150
Date: Sun, 09 Nov 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762699793
