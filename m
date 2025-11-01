Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A2F52581
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761956994; cv=none; b=P0K053KNUcR33PHGmwK/eDt7bEl3G8DgrzMvrrQvXmqd5fCrugkBIt8am/Es6AQpFq2jLitNrZLxVQBrJVWgUkAZiI8anCnpiPP8/aQML2C0HyYqxiRKQLfb42b73zQhEbSquMUfV6kQ3z3LfxptP1eGRO1D3F7a55S2rirwSWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761956994; c=relaxed/simple;
	bh=3SFzhqVYEfkURrQiJQELFqgC+0llqSTVLEZxN6+CE3A=;
	h=To:Subject:From:Message-Id:Date; b=QkKaALRfnqBvIZtqGqpUATLLNG0rMDC0yxW3BwlQW8+mpydmStc79DZpYUW9h6dPlWvY9dJTHKoqL184COGGM7RbitTO434pWyJ3uptviqWH2pORtoH1l0gSVFYQC5fnHVbJXXlW5wOr0VlvEzftMRYDnGNLAKeOpku7GQXixKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bNW6N2TJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bNW6N2TJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16E2C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761956993;
	bh=3SFzhqVYEfkURrQiJQELFqgC+0llqSTVLEZxN6+CE3A=;
	h=To:Subject:From:Date:From;
	b=bNW6N2TJTmqPj0R3h3iReR9Xqwp7yMn765WrYlaDcvO6xESqFRjBBadic6UEv37H5
	 E7VAvj2vNeUs8JLq4bE8wHHWonRAkHp8QvizoA3VUhAQTKMGhy6DekvF6XaWkqJY7Z
	 RxJ2dGdsyla/IigT2c+VdXAwW1MAKFL0so7Yl2pLM0MIluW7RRWxOvq96wDnKZhuAX
	 boFzNv41OsbRFPJKbkQEyO2VRM/c653mv8lV0fxCKyYpdfsNreSggw61+x92gp64wO
	 X6MIXQo2WfbIOoGf+o+7pPjJkNA/4HhpDn80vh90ZxwjcfBdVXfBp9bFCaIFuO7bpH
	 0PAp3TloyjXaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90329CCF9FE
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176195699358.22904.13635401290693688679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc505661ae736b6865daaf610a85fb0e35c0ad97be347387e61c7b8b6aafc3c5
Date: Sat, 01 Nov 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761956993
