Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AE393C3F58
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792387834; cv=none; b=dNLBQFWcET4vXE7uSwZNap7YDAF2B5jTFLjHHaXJ44TLOO/RmuFOyKP/zaAAu62dL6IK9j34AltZFktpD9P4+epdsSOMc2b+Gs4AtAqp10tQYW6JPkdC4PZgiUG/oSryZ6LJzDYDZSR5kJsl6WjBj2MzJm7Qu32sb+K64B4LqSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792387834; c=relaxed/simple;
	bh=dYBK6U4psMmZc5JaToTC6gmvaPjkfue4qSEzs7o+IWA=;
	h=To:Subject:From:Message-Id:Date; b=k+qTY25ZNSZajT2zcYdImtZgaCSgLP5vXGaQ+hxmmVBwf+3m7tynFzncjW4GrXST1aW+/FCC6yluyrgi7JvZsq7g59rjcfUBBzDbNPreKwTVuSzAqCLDeFVHCpBY1QKbx3MqyKIvJ9OcYk7T7oQ3ByPI+uUtVDe4C9DEBFsWyro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D8j4lipp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D8j4lipp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8E36C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792387833;
	bh=dYBK6U4psMmZc5JaToTC6gmvaPjkfue4qSEzs7o+IWA=;
	h=To:Subject:From:Date:From;
	b=D8j4lippyYLwt44VD5BLHnUvvUQ/XJK5QOB0bcb9+XjQpCCD/WhRgAYMdE3334NXk
	 5hJh0b9MBRBW9F/NrFCdO+NOW4h1yHr+0cUrz11Q6Z/3rgLA+rK3Y7W9CdzllrMIU9
	 W4E2aNSUTJIo0RuskEoevL2Fo4Sv03CXOKlZ+gjkNziLf8tBcNostblDQuszNNubUr
	 tv4YtHKgZULkxhIeT/1Sp8gU8XCCTD8fk1uxOtBFxBRwCbcH5V/aiehpusdam0Te+m
	 Ns+tskKo5DChyU9rwi7poZTpu5V17kTg3zncg/LTKbIEZEghOcnFMSo2V0ghOeeIK5
	 eCi71XI7HpUWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE21DCCF2D4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179238783373.15208.9691337721007521551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f9445e66a38ee5a9ec55d1dd15e3c8eebfb32bf7b5e1f6762ed5c58c06ef23a
Date: Mon, 19 Oct 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792387833
