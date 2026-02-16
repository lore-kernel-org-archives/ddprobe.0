Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E35A2EFD95
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 07:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771227894; cv=none; b=bQzwh3xGpTjIDRoFNZ+RqGnMXEEcdEJjfrlvCX0W31DGRMSJW3MF4/e/Im6qxodooxiI3+kOys5zGOX/UEbmu6yw0Wh+k2lVt0fZOdZNRVU/CwblvXCISLAGXnNwO5qIuq97eR+7VguulxM1VKUtgHi3uIZsJ0H2mi/miRBe4A8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771227894; c=relaxed/simple;
	bh=GybyI+BDy/uU+qfBSlAxNhHzdzot7rQ+CzSApb4sTXs=;
	h=To:Subject:From:Message-Id:Date; b=s7ZSmSIl7AwVftQNIVoC59tfkcqRkUUEnM4lt4UxzRiWJZo4McR9WIOyWs3KvruvPkLpml5wHZt1myaIlIaj/QHA/O8iV2lrvPGpbr2co/dVw6cAOc+efxXeHWGI/eClgp2MUjwKFK0gdYJmTrrnLncRzMW9xCE1quxPR0u8i6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RT/iLmJe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RT/iLmJe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB1EBC19424
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 07:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771227893;
	bh=GybyI+BDy/uU+qfBSlAxNhHzdzot7rQ+CzSApb4sTXs=;
	h=To:Subject:From:Date:From;
	b=RT/iLmJeLk4vU6OF3EnFfibL9em9J6+Lg5bcNaYVdPfu9vaJkXvjaOHyEMSPCa9It
	 QnePBcyZP6LbqDeHkGb4u3tVUTVvrJFrt10KY3j4bj2fhHVfTMh4fgVBMhnTnx4j7D
	 gIgTz+RaZ/0bxJKdOmE8V5FHtQ+K1YNce6yolD2jGQBRwg5MiViJvcZI4z8Tvfogiv
	 4ObOt/R5vo76mqjtzNfOfOUjluAc68ZuZ4oOs9XjPEsPVY3a9Kp+TdQQXDLYh59/SL
	 NgkwNzZaMHKeW1Z91r50YP+uEPILl11C11hYoa27Y0EysfFvYU6saZSzAuM4dWfNlV
	 f2pcE9arHTjUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9859FE63F33
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 07:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177122789359.15915.1392265142749968803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24e18149e6956197e154eba13faa62258839f4a4e18037aee717fae30b45d6ff
Date: Mon, 16 Feb 2026 07:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771227893
