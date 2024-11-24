Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A18C186E27
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732460154; cv=none; b=CBpAKCCyUTgMPwOEjTuEA8WS9r5eVlyGwCy8mYP8VaU9w+f52IKsZJ6GWZOJrd6i0BCCszv2T4fiPp+8zoxy3rYf8TcliO5tbPC2YgqdMwF39/4DrE+4ywIbk5tt9yY0TbIfqPMnd0hFRqlem3MH0ZZ7Q5bV/p3NF2ID69Gf7qQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732460154; c=relaxed/simple;
	bh=+UdhfBdFBwPy7DBzK3mKi3UUgv5OIVxKcym2eTDfFvQ=;
	h=To:Subject:From:Message-Id:Date; b=e0O30SHyP/FBy4e3YPZHTKYP8tPRXSWGWt2okhdmM0BrXd7wpi/ft7dTBADD6LO8rLKgEqzbE2Fe4WYaxBZiWOJSum97ZN1gr9D+N7eRE6kq5hV5z8K1MSSd5s7mYJkE6HtJ8nqRzrbFwVASygZqjoQsiQkvPPUmfhxViUsXc2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U6ZmXcU1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U6ZmXcU1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB069C4CED1
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732460153;
	bh=+UdhfBdFBwPy7DBzK3mKi3UUgv5OIVxKcym2eTDfFvQ=;
	h=To:Subject:From:Date:From;
	b=U6ZmXcU1RfGZ51j3yU+5b70Hdi1xqJqJXPU7Szqas49MjNClEBbGIYuGu4TkRJ7mE
	 VdTwjzAIWgMFqVxeTsLLxnmpHmOrubOVzcrSR+n6OyhmmKo1GcEV+hNjDVvqa+TQOm
	 JUU9vnkbfLqQ0iTZLUW7flFQEZovx9kx9LSPAElOpCvf0eYzRmvEgba/WZxQ+kuxQn
	 HVC9QeR29BUwCUwAQDvCZcalDf/6Bcpi0NbMBg1hUh99EXc69Q+Mh1y9Cvc8mIwBv1
	 sGxJWt0wPLOqFp8Xtbxo3EAWaCTmgkdSQMyiEkqjFT+QdityLPQ7skRXYCaJosw5NC
	 4sjv8tmq99bng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970B8E668B5
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173246015358.4832.6160877554418352575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f797ce80782b876bb08dd8e130922f4f473748baa9e6e71d8e8480b4267336fd
Date: Sun, 24 Nov 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732460153
