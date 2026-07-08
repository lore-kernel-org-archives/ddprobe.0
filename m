Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21702314D37
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 22:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783549714; cv=none; b=vGKAqYc6bN2lU4swCMv4EL1e31fj9OkP8MQdGTl2fiAgAjDVcnZXYiSys8SNeVvM91KzsUQblAE7UnvR/6xcViKVJAALHn2syv+dQyMiJvC8WjGw5vLA1Zjw7QAzi90BYlSRdDmWNtle4V8fI9ILDeCMZNT4IIVK2q60QDVyGXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783549714; c=relaxed/simple;
	bh=fAxWX788TgYdPlgF9Sk/YyFHpFqysqQ6fnjzD1lLlHQ=;
	h=To:Subject:From:Message-Id:Date; b=gI+C1jerxYY9E1W6tQQ2fV1DXQFexiHnqWq2BOtyxPjwzVwShzA6pJBs6pnHiMk97S5RTWGyjer6drYX0EgX7U4/qZT+gPDw98vqulyeDp2GAVqThV6BnyB4YgnnW+A9M3kApD7Jk0115HqeTNMTwDtXcvIdo1GRK6tQuGZVh2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jhupo9Yf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jhupo9Yf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAA6DC2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 22:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783549713;
	bh=fAxWX788TgYdPlgF9Sk/YyFHpFqysqQ6fnjzD1lLlHQ=;
	h=To:Subject:From:Date:From;
	b=Jhupo9YfpAHpISwzsT2ytqE4nuMtCOxHCXKG+ZHMMP7nM0va2vQ2ijtSlw8TweEvl
	 HfGKfM42PxBLbTFTbFMy1xjigczFMaVS49dDQWYZK6AluK/RgQ7D61hS4XgF7oPzum
	 AjsVm97BW29pjG0+K/wqPDuQ7G7YEJdbevZrqr+Pvg5ZfhwLsCBe4arU8lItreeygX
	 kG5pKfCZX76l9+VxUOCcc5uxxsKGBNE22x334LagkxbrGuzYIWwAFo4fD16/JkG+Bj
	 N403aebOXXIc9o0qN2up5FJndhB/mIwZ06b2F5BHwJLQZrXEWYKx+HPDSZx21PrWaF
	 SMxz3sVZL9y8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90C7C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 22:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178354971368.12088.9719223406977539740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c8b68177ac2d2e5308f4e4c11053d25cc2b5f8a06f36b0b95497f34cd7f735e
Date: Wed, 08 Jul 2026 22:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783549713
