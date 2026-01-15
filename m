Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E7C71367
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 00:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768435434; cv=none; b=dut/KsYG6+sF96V63E3DCNCSXgMbgkYkSATS9zwJGvHHZpWakloXygFU7JoqCkiRGz6xoKLsoPBo0iD1WZKP3GRGjBYIgaxdtHL0Qs8zpo7z90712Hq6HGkHASlNfJrUGxvpgqrqxWJfZtfj+pfWGKVVLY1ERvDfO2VA1r9rclo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768435434; c=relaxed/simple;
	bh=OURPKW3I+mDNo31DL/Jabq96Npb24bNWVv7UuIp9ddM=;
	h=To:Subject:From:Message-Id:Date; b=fcGNt+5GMxuaDTiNKRVfj8P2L3M71Hxa1fIy+EIxw8L7OpO4BiS2rFMACu+lyFVA2DjWLNtCnXTWcYMrKyTpVJQ8BvSPq0t8rlMB3AY86lf/cjVf8e77I0dz0B3/xqlZeJAu1/+ab92L4LvfHxpVBOwuXLg/x6QZHNz1g9iu0j0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JXggMKR1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JXggMKR1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48D0C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 00:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768435433;
	bh=OURPKW3I+mDNo31DL/Jabq96Npb24bNWVv7UuIp9ddM=;
	h=To:Subject:From:Date:From;
	b=JXggMKR1+pfBCSFE1V3UcFbRu5fJ4Rr1yr+pBETXf8bHkgD1iS43OK6QhqmOXKTsd
	 UFSFGtxdjGZmOJE1v85OfBvLYmiXqzQDfbSYPDFYBEtqg/pr309DEkswEzUuz1kSjL
	 pt3a+6vxyiT965mEHT5Ov8sH8rdOPwlcniw6Fh6pyq3D8Yh2yNiQDYTw7daf1V8nyX
	 sUt69WMbLjHlpMAxtbU78ATvYgxfeYLsI5GAhgzBzoXoy+eXW/RI4WlSLz0KKw4l5x
	 M2ZdyYrbEkS7ak+rlfGjBL5QAnu6DF0iitoNjZyIHPIzNcmnt0KKg7U9XCqUsIPXUE
	 RJjTfnYbZBWrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927A9D3CC88
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 00:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176843543359.27396.7087490553466065828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8226f664db8ff85abe55e4dddb6006b33862944feb8fc91902bf834ab1db4912
Date: Thu, 15 Jan 2026 00:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768435433
