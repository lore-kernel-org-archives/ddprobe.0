Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E74E1BE232
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 17:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719940523; cv=none; b=bUjGC0wpryNsp/iPkRhhi56MpjG/g0wKrH/Zv/77SX+jadW3noZKij9QQQaiLHq4oZvweh924UxxqgnhqkWmIluRishpaXXazfY9ltAPC5LbP05RDAhP0+NkKjnR7dNcrML2iq6rrF38mNSfQhcRhCMZMrV/cLpgAid7QV0iXvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719940523; c=relaxed/simple;
	bh=GWGzVx5M57bibBu1o4B9y/TtN4HPrUBd2fW/euYJDzY=;
	h=To:Subject:From:Message-Id:Date; b=LxyspiKfVzEayvv2Xrtf/QNkYdJydyDJobi/eNkKcxZh0gVrWS+IQUrcibgcEZ25NLTulmwmzp5AzeLeH2kLXH3sv7oD3EGOFWzAKJwcO41itA/wqtCXUoxxYRG+LMCmILqwNdEavaLGwwnfRBVGxXdH2f65epldjUAJVPBN+cY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eiWUGFoU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eiWUGFoU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2AE9C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 17:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719940522;
	bh=GWGzVx5M57bibBu1o4B9y/TtN4HPrUBd2fW/euYJDzY=;
	h=To:Subject:From:Date:From;
	b=eiWUGFoUIlnb4WvrL/n6xRWjJDODXMMfUQYw3Qd0sJBTk7K/+KV+6u9uC25IO5anY
	 4e3Ri4owksb0s8yh9IaK/5+qECpNbQyGABntyux0F2D8dRiw9zWL1RWc1gO0xi4MIl
	 NGtjX+pt26ynBCYsD1VbWq4w1SJQaTmpZeFyBQgFmSDRNWYEQjgzmeIeuU5nQEjObI
	 c3XhsoKIxCTQoPRAB+e4LXt7nCkk31PIFogc4Ana65PwR16BdTVzp8K0dDqApPY3C8
	 hybcWheLE00WYuKPisrzODZ25gpjYqm04Hm4Jn+aMFQDP8PydYV3Kc2khZfaU6mSR0
	 SLRGQiQq9HU1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3C2CC3065C
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 17:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171994052278.19109.17858658299311324170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c47ff97287c7e2b3fe5709858bd11167f7fe898c26e6f63bd8608393aaeb896
Date: Tue, 02 Jul 2024 17:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719940522
