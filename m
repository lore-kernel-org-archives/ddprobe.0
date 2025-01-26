Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 589E86A33B
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737879354; cv=none; b=sjTu1S3/+ZnBHfuIbYi/lqDDkYsqeLxQoYwofrYD763yLaRcd/t+7AWEUydA5oRVdZG1kNibnrUcjx7pLzVbkoSP2t4NgJalZ+i+yqfXBUE2sHDy6pZgqhmvpsWEUKDAFhbFHcss80XOWUODeylJUzTm1JYXTiD4KoyPZh76xOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737879354; c=relaxed/simple;
	bh=UpJvDOVaW+F9s31/R29dU+phAgsxUYqySpRtO+m3WmM=;
	h=To:Subject:From:Message-Id:Date; b=oq9S1DjlM8akeGDMUTf5PimWJYEom8ngU3A9Z579WAUtHgy5rSw9HERCLD/jySbFfSAblQGmdvP0jGPwY1FQmScPsRUS1joXTcCol3vty7zJxfYF+DKeur11uIEdvKwqWqjALZAEp7g/286sWE2GqYKUfSpntgAO+MLKoLa8KH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mcKWoCol; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mcKWoCol"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B12C6C4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737879353;
	bh=UpJvDOVaW+F9s31/R29dU+phAgsxUYqySpRtO+m3WmM=;
	h=To:Subject:From:Date:From;
	b=mcKWoColfhpqNmmN/xajqg1SyXzC2cPdehwgFYGsXZsMrtBLjdS2/u30bZKlhEnyx
	 jqlXgXJIkmxkVGelZ88727Xayvzjz/ZbBKNfxsz81svJiW4VT9aa5KEIfjrYCzTZUy
	 mdaOTkdE6CZ95Q2z6kzVVB8E2KZ49Bh/7oDHZWqw/Ycv7uBujl5m82MPG5lDUrS8ao
	 ZWz3mcJglALHMMGVjTsU6Vvnipb/PoUXOMo7sv13dyIcEhnzTzAVX/nTp4kEBhAC+L
	 2VhclIPentEzZuvbKnbzUrv+xFqRtB/YDF7UHb8l4HBVfdDkjFjBxqDr7bax6Z3EvJ
	 xW79nQ+bFA//A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B13AC02181
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173787935360.18449.14285657916937036213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82e4407f9765b5e7a69cfcd14e16966b263aef2aa6fc2bf6049f9983ac72fe19
Date: Sun, 26 Jan 2025 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737879353
