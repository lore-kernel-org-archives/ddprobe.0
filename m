Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3852715278E
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 05:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764480174; cv=none; b=nd5rnj8435c/5CHC0bIh0EqxinXK/Gc9qhxWadsA7pxmCtfdXWYyFxqoeYTZzBsBF2bOYv29a9W4g39wULJ+5/UGrlXAQffegD7Obv9U/S5CDfOZkDoUTfqBcYiWrJd+rNLnz6ZIllvst6tv43tY5igy3OHPWJCe76BQdeNGgag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764480174; c=relaxed/simple;
	bh=iMRU8Aq0f+9tRXI3gMUYoqC1YWXf9WHpc6iPRnIPtIo=;
	h=To:Subject:From:Message-Id:Date; b=mr6F3yezoRP4afFcnCJDWdN0nYMThClyx82ssVuXsF+nvXLAbZ4D7ICcdYCjIXVQXGywyhijq9b03bwmyLvA0M1E519ImztOUom2A1Z/hRIJeO84lSGyDSLFPiOu+1wujwan6XNsROHq0e971t0FtDsce/teZpUh8rvZ7UcaKFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LTNgkZZZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LTNgkZZZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BF3C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 05:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764480173;
	bh=iMRU8Aq0f+9tRXI3gMUYoqC1YWXf9WHpc6iPRnIPtIo=;
	h=To:Subject:From:Date:From;
	b=LTNgkZZZhkwzX4+cmU2wVLo/6Duqs2Iz2bCgsfXDwA+IF+BXCRrZkJ0Cl/to5k78X
	 ES63gDUcqI/rGFvhZGKnsKJ/qsl4jdqfMgxI11bNPcJopM6evV8nPtoUI7bfbXYuKm
	 FgwskhYvs6OzSMIdM/yXsGE046D98YIGWK079toAnCiaFeooeNKQVJzTSS9ZcT2onx
	 EimDqlVYP5OFb03Iw77AgGiaHgqvOmdryYPhIfuf8duA2eUFaHPZJM6LqYRiynpAZI
	 hhh8TJ5VQ2aEC/kW8cmHyv5sqnqaVLJlKMfMVdwRK//vtueavwjnUu+EyJTFEza0Tl
	 JG0s4g+QZ2PBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BF7D111A8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 05:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176448017358.22327.7978845240472994563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94c53940ca242d15163a7b71849b691ecffb98c54a69dec7159545e265cc3699
Date: Sun, 30 Nov 2025 05:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764480173
