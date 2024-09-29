Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2FB14389F
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727648154; cv=none; b=s0ZO4yhhTueuWR1KuOwzzwntwS74u91OLkS75qaPrQOnnyGNACH1Ova+O4rU6iRrkkoudLHZ+bthhdb52Vzg9OoM1LTqvV+JviQ+n9FlaEcL03uEFRqugpsHr791izfK078gGgJCeXrdk2PeXvQqSrISjKRuvecgcPQuZ3JwLJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727648154; c=relaxed/simple;
	bh=zguiP4sd9Xa2ij5ywCzU7DzYr+kDMQnlyuGYT+oHRbg=;
	h=To:Subject:From:Message-Id:Date; b=osob5+Z67nfsbA7rp1Hxyv6h4n2Be6AnkeG+oDxz7g4v4aRHuOyzkZRpQuUJjxofn1xTa6Vkb6lHHouc6sczIJyN5Ns4BcAaOHJ2tdA0QD+JkhZKjsk4XToZgImFk/OhRysnFZWW/PWGLKIHXoXwxuUdCQXPvuwGqP2jRxhVVro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bgw2J3RH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bgw2J3RH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABAE1C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727648153;
	bh=zguiP4sd9Xa2ij5ywCzU7DzYr+kDMQnlyuGYT+oHRbg=;
	h=To:Subject:From:Date:From;
	b=bgw2J3RHeTAru08Dkyqb1yvPpBH/NI+nMzNzvgmwv3tSf+mST58uq04jZcT3ZuydQ
	 8HklK0TkBHMQgvZSBUnwY+SUFYuCef+HuoC7BRIdtBGepz7CC1QXfqo+tLjIhdw0gk
	 76fNv2EyT7soz2c+7tMxW7JwFhh/IEEY/tFQaDvXlewk7MsdoQwkV/zT3VUE0FRE7D
	 AUPoxC9Ij5r4qQuJTVJzqBIZlnarhyb3lY9qKAi6f7vS46NamP1cfow2dW07C7ohmx
	 4hdx4iT6Z7A7Z4tXn1ZDNP27b33zMbpzaZ5yN+teh34iSETzxuZExDN9JbIPfNlZnS
	 QgFhJ/68ayJTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98CF4CF6495
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172764815360.17492.7483691248227855840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc5b398195f86c4d929679b445e3c61e993ff96bde85f5378207144007a0accb
Date: Sun, 29 Sep 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727648153
