Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC705A930
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757705393; cv=none; b=UfUutMFwoiSgh48zcld8ijAIxJMgM+ooY08dU+CoTT69RI02NgMz7S/+pGZd2mrs9JunsJxxNZtHZPZXKFJQEb/XcG04AeHtQbB1wjr6buPE9j+Akiou5s0Pltufq4BgXmS0z7AmjaO5yhoJdEHX9Bc8Q2AAbf0ZwIwNjvC/4Jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757705393; c=relaxed/simple;
	bh=/WHGPZG7ww/0pVGWy1nhR0PbX603YMMSC+QWHCnu+Dc=;
	h=To:Subject:From:Message-Id:Date; b=KkB499zLy0fdqlbSJCZ2B35FOd/CzWodWv6pfuCiKKUTMgpWy+efzVn12cAZNUULX7zet+JO+3HFEssBHX+WtGafkkbPDxE34SKuokfsp/zvW70IL1vtea6drSQUfa1aMMCqmgFF5Yl341WXl/UvMraEPIHehfo36y7XvH9JUZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ALC/qQpB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ALC/qQpB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB9B3C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757705393;
	bh=/WHGPZG7ww/0pVGWy1nhR0PbX603YMMSC+QWHCnu+Dc=;
	h=To:Subject:From:Date:From;
	b=ALC/qQpByim625TEJkbhHzu2zy9hhVJfCjkCJUkwSykJzIyz3qtMX5E9stRyr7km8
	 JznnzCM/TVPjtLRqI3lXqN19NnOYn00HLlo5Sr9Bo3N1Fpgm0vtfdYQ1/DzxjQFVgD
	 5AXp22h/s64mYHA55rruPD7quP3j/ra+/BMnr/8eWX7Gme10BwJTCiKMCXAL93648k
	 ovUm5xvBee//YmDJzGvilTReuSelYQoefUoSmw4paB71gsE8JvselD72+51EYg2CSp
	 zvZnxKJ/ZiPa8YwX+Wv0GNIuQsK79xaJLy3dFdKvE1Sw/u54eL0pLq7dYq3S42OHDq
	 QUTciJl2MVDWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94238CA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175770539357.27892.6298295487120468076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67780e253813c504dc35401255996b95e35b4ab391764b7485973075e0cba7cb
Date: Fri, 12 Sep 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757705393
