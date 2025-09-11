Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26318346A11
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757603994; cv=none; b=NzjNEwI1pT0rfG85weT3yPQLhLndl+owS92etVSIhQA0rIiYbJCqxA0hB8sqwNYu1sNC7GV8xgAeYcIKSz0DN/6pfRo6/MGZVRSfe7XKQ2LN1DRv/Yk0mfKAr3aXY221niaeuqscoqDantlOovascXtpra70etoohRziJZ2/ong=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757603994; c=relaxed/simple;
	bh=aYJQoRzan46w5wXnP4Cq2IATC5hFKHRHd2jg+mUwpWU=;
	h=To:Subject:From:Message-Id:Date; b=fjUabocUHSNgUkoLQjk0dQmMN6wBSSXVeGV82Rluxf9ersfaFA1+r0+E1MgheMo93HWeZazPtO6vLpS067oaZ6KdUK12RCCJsePELljulbITdUQ3uYaEpZXzncz/iEsqP428DSGRCu7CwgD8g/x7bfat9uyHCCSyDrmRhdlxU2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rr0mFL1q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rr0mFL1q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F11AC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757603993;
	bh=aYJQoRzan46w5wXnP4Cq2IATC5hFKHRHd2jg+mUwpWU=;
	h=To:Subject:From:Date:From;
	b=rr0mFL1qWmH7oUZF7ErOVt3xtP71CtXIHccz+VQGcCaJTJt1MyL1XjCMSwHtkcFzU
	 NnP2+7+ijkNJWyOvaSrW48cCdl1EYCKyjUZNVAwn/gkMwN+MEu3CxaG7SmGCg6gZnK
	 +6SjXtICxLlkeWsvt3Bpq2JUNbQWGYwSqr+qoskuYfMtIqlx3A7Q+cndqI1s6RGgw0
	 JrSuRFTZHpwR8D1jb9NIhSGuW3ua5OnO+y/QG4sNiCi4ZYNZcx4QrzZRyblsWGKJz9
	 9FipP43EVtMj+AFspfO4elBufIHohYJ+rY9Z0ZyX4LbQiFCjQ3JanF6Dvg9HJmxmL8
	 d/TqCPkWSMu1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7EDCAC58E
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175760399357.5297.217425484502055831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6daf281564718ead57da98d0497866d25d91bc46295037726e844b66856ff88e
Date: Thu, 11 Sep 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757603993
