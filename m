Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7420157334
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 07:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713425963; cv=none; b=GRhVj6IYdzC4zJh2zhLbBPfxXhDdhaunwRXcP9eJG7ftlCRwwEhVgB282AAIwDqAWaECNu0VNaTIF2eEWaUtVf5nNmDS0uOWVEqFaYk5MaQwMT0akixfp9dgcZyKOhNGcADiKZAkf0TZu2jKbHHb5uyjR4RvxOCusl6UHcObgl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713425963; c=relaxed/simple;
	bh=pjdU1qkDtvB27IZIlEr/9oUK0vK03wK4l1xxUBulkE8=;
	h=To:Subject:From:Message-Id:Date; b=S1OI+/aTtAX7OKjXfJAoeXdHs5aTvrs2ApWE4qWQ4JU6BScvBS+Ps4nRr/ZfbxOyfcBeiX+msizP1lHgNsyeodz0I6WKobEXk0RHcQrFg9+9ndcubGft1VfcK7HaJnwrNrtPNg1xfY1PtYyTgd7I62c629bIw4QPmc82OSPEsA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TwbtIvqr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TwbtIvqr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2F2EC113CC
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 07:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713425962;
	bh=pjdU1qkDtvB27IZIlEr/9oUK0vK03wK4l1xxUBulkE8=;
	h=To:Subject:From:Date:From;
	b=TwbtIvqrAxge13wIK4pEQZ0ioP+7OirP6YZ7C4WURSuH9GPcRwWPIoXMj2TunryDx
	 wp75dQ2Q9gTMMA5zqWB5Hv/jLowoxN9hJfFxze20jxtQdM54LgM8aLomc1Yh8uFLZa
	 zjEEYq96VrH4osTi//yxmx9ZEFxiglNrKo4OeptH4+WvEPy+ed8RRzpUB8Amy3ez+Q
	 w08fNSJtk/XLGCkQc/hihuJhDSKfHhRmb5KZT84Ildhien3A/KiXnRZC+RwqSwXJEm
	 qgprelf/ZEzQRR3tJaLmS9ogUv9TtkxmR7Plc/5KfURqnVoAXRwKeNYdnj3VqGXatU
	 B/cxUHBboQ87g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6907C4345F
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 07:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171342596277.25767.8538344546818907360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42248a2533789811bd8ef0b8bed1faeb14195242bd049f380a015d38726f3398
Date: Thu, 18 Apr 2024 07:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713425962
