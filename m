Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2207E223DD6
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 20:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763931114; cv=none; b=udj8ViKokoQBy5m6uZHpg+nSy6sXzLijJDOll8QbJgtMooz0TteiCQlABYMt+2UIugSyZuNsQywFa1G2Uo/Pa3pF9IXdsQyEKsm4AXlXpQ6HAGoIkFlsLK73Dy+sia6FYDDTebvHqmF/2TlOFin63DaIdMQ2rUccZEfFzvbgDO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763931114; c=relaxed/simple;
	bh=XEVfbwdowbvrVge6BMo9iFNXTOBAdvcsYh8UCHeo/TU=;
	h=To:Subject:From:Message-Id:Date; b=ICah+78I4duGRxbX4OxUJ8gcpGkL0sXEeE63MasP419UGxH+3fCCxvW4sAeyThBNpxBwUkQCzwIPFT5kNxuHPJYh09nGA0vTRXzLiLKIHw/3tzwiE/CmoYOFeGHprHIUJwoyt0VAReVhgAkRP+/hG+2t4Q02uPV1Wflb8chEpns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=axkNo1tR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="axkNo1tR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1B7AC113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 20:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763931113;
	bh=XEVfbwdowbvrVge6BMo9iFNXTOBAdvcsYh8UCHeo/TU=;
	h=To:Subject:From:Date:From;
	b=axkNo1tRD6aji04qVc0eaA1HOwYxFrwkOZnVZaMIT4vI/QAZW5u3AdEem+BG9Pw6x
	 +T0DhLVvHZU+8tlS3M350LDgr6KJeUZ6VB1fr3egGIq4+bNYGCxL6yRLBV7Ut9NHCL
	 QN8PN7NCyYyTfE5EP3wAY2QeGvpS7ORqRxMaoNZBXXUcastoXKaVca57uJZf5Ion/X
	 /GdTSxGPkTD4i8VU+l30ZPXC4rkKB/g3xOrzGhA3HLqtblO0HkY1oeoINdV1WvlT3F
	 0aY68c9Qpl6F3C8vHFu8GZuXRAB6XiZMzOq/A14HY/Xt4uXs/R/q3IQ9vjFFjExSv3
	 JIaYr6tAT9Z1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A68DDCFA46B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 20:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176393111364.25062.8164843132720404795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10e6364991797a8f13f2e36d132d866872ba0da7e2ee334047890cfa9c14ce68
Date: Sun, 23 Nov 2025 20:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763931113
