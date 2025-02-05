Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 561371DD526
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738793155; cv=none; b=T9sAYlcqoE4B+JSTMoZ0PC/UJ+Yc0tRcM8Zafl+1AnmBkD0Z+JCpPnDCLQ4l+PALA/hpuHAM/Qj4U9U9IjbndH0+KiiXElKI2daxuCubcFccZn1Hwe3B8aaSElKmcfoyj/wN4kUec6IpNCP0GQEFHwIsA13lytkk9tJ96IoMzIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738793155; c=relaxed/simple;
	bh=rXekdtF5L5fQ3K+0QOKY1r90426n0u3rwq3BL95jrBM=;
	h=To:Subject:From:Message-Id:Date; b=kWAvUaaTg/onE3+ssrjKGTIigo7TORdkXZ8vP6WGgBI/9aVvVT8j0IrkDlSW4fKi/WU5WgqDf/aps7Dx/Mc1nYzSgy9J6Zfn5LJO3r4csKYD4aTmmsQ/Iq9JG7CP5xsFNBU8L1A1vnbGj9Blf5HKUe8DAUGvXcGKj7rBse2HKH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jewWnYlu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jewWnYlu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB51BC4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738793153;
	bh=rXekdtF5L5fQ3K+0QOKY1r90426n0u3rwq3BL95jrBM=;
	h=To:Subject:From:Date:From;
	b=jewWnYlu29Wnsn2+znS+wE7S3jvnFJEM4zWiD9JqxzHiuwvaW8wgUotvpAzqCkBII
	 t+vCfCwuoYWVlniiwmLH7jS9+cYJ4IuTycMAiBAW5Q3KEtwfYdbVBn/rVxRa2VVQaJ
	 OhDeYDIpUkM9foZ/ThpYCEVmoISQrXrZIko//vwhB++UGfogj1fZr3QQG28EQfBeGa
	 kel/ZlDZYG9SJjf2AWY/H76yZMkpD/cLqAwHF0omcQ0IAM78waQQrGPM0rSPp8iIzu
	 VwLGu6ZaNDiXf+AEHKB5VahS0Dew+e5RdVYlZ64aHmq6wV1O9ExAcoT2JtgWSZbR66
	 KwEnQoNyx3B3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5FF2C02192
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173879315366.29910.15343279903525771461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ab59e0115e2ba492212f677f7966d35f80346e56f9147450786cb82eba2ad6e
Date: Wed, 05 Feb 2025 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738793153
