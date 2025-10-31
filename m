Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A8041A0BD6
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761874795; cv=none; b=mcsiC0zJ6R22EGLNf5cDgZHkKHL4jFa0wEUwb460aD3+E+LrqzhnxrBKFbvwYxL9C+0yv5pOyMpsTNIUgIKK+gu4HL5zgrijNryyL/pFJ+5iqbVYkxKuMQ7AC9YwTuw9tapz4wE4OYoIwVlfaxfChbDfx7obMohv2OWcrb+wD2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761874795; c=relaxed/simple;
	bh=9Ii9UQhS2p05lqt/MAzSSlM0K9B2QAZt6DSUOOHNCVo=;
	h=To:Subject:From:Message-Id:Date; b=lxAOQIzwpD2EdVOht0TEUoBUv5ZhElyp3Ioe0/Xkwqf0oKVmHhzvlIIjLCQ0d0KXM1BTzhHQQMKbtr6buusXh5anGfeAe1LkKvuCtaYFU7a/JGm8JvKzVE6BABWGuRI4zegtNZMRN4OwmK3jU6PCsMG0/UeF4170F4UU0It1kRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JTtaQEbq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JTtaQEbq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E994C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761874793;
	bh=9Ii9UQhS2p05lqt/MAzSSlM0K9B2QAZt6DSUOOHNCVo=;
	h=To:Subject:From:Date:From;
	b=JTtaQEbqajjBtHnqJxiyIMmP6aJrsWsKG47P9I6RzgunxIb1CmD0Qs6gffTRPwZLe
	 KTcftaK60Q3ZVusvmWS7TPUbOkMYycZOvK5zEphIy6OmF4+g3LJZ7F0OgsdqCQTvrR
	 gvHNaqaZrn4UKVVSJsaJCiJmIFJkLRPIdQi5OIrV4IfxBwYe8meYnn4gC6jmgwSWuU
	 f23Hu3QNIzKVRzScRl3Jp+TE5OS0Y3k1J7uSJ2OgOznUkbSfOowasakaZAjRbeoq/M
	 s8DQoCfpqarKWehEI5+HC3kQMhpx4aH+VSplG/upGy8NfC2S4a7GhJixu+abTDCNpb
	 66EcJQnKFLa6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DFFCCF9E3
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176187479358.11731.18253104684633933086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d79504fcbf9e572816c5a5656531d2a58cfcef8ab1671c1d53ea762d960039d
Date: Fri, 31 Oct 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761874793
