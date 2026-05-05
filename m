Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3C6272803
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 14:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777990054; cv=none; b=jHoiGyaD9U52hCSfa2Dr8vkNM8pK6cWVOcnp0G+R3mf6TZXDW5Y+EnzOqEiPcpSK8/7QmvleF7ejRTKqIpZtbLvA1bnI1xIpgi935a+9Q9J+06wpm+SupQ4rP0e7oQAJ6BVEbgg5NsKPpECYLcKb/y2bmU0fR/R3YHjFa0eRYO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777990054; c=relaxed/simple;
	bh=0URqTTd3n0tU5BSGZso5lGdIgc6QJrcnRzBQ7W96m8Q=;
	h=To:Subject:From:Message-Id:Date; b=tMDm5lSstXDdIKHXkXFG79g7Df7IEYZQgdZqac/SRs87SAw5SezikUDOGMaCbpSGMg8pXCmH70jgw7yg5L7x50nL+i79TFrlAUYomEoPyDKIDW3FZz3e2ywjeZVM0keRuNeyiK/VXt9fNaT2mh4XrjtmRSNQJqva6roGzW2OF0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FTG8OzMW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FTG8OzMW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB2AAC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 14:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777990053;
	bh=0URqTTd3n0tU5BSGZso5lGdIgc6QJrcnRzBQ7W96m8Q=;
	h=To:Subject:From:Date:From;
	b=FTG8OzMWntsmFhuOcygPwovkxaMkaF7VDkNdyaUZpYVJhHGxyPMhUK9dZnzA2qipp
	 1A2NLoYD/oBpNn0YGrjnMyW+OfmOwuoNxWl3vFxmgjsf9EoUXbPUQ5u8bqN+XUSxET
	 rEr+UIZHvt/s7ss8PEW9ZCBpP5QZsJOabP5IkvuZXQd5RxXTQ61/cz8YhuhJjyk8u8
	 NNJx7F/qh9WbYj6ENY0SKv9kakL7kVuwkHWsr+0qXp32XcCHxwE7bZBygulYSXV8ld
	 nqH2I8H7u5dsM52DzaZIEVkNP0FiG8QmRasBxfO3V14s76Ami7HuxZ7qdW16ozMOtu
	 AVYbjbUfk4Xmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1FECD3427
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 14:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177799005369.26005.12885391177768629190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70a8410da2d738fb141f1b18cfc11538161a824ea670b71b01ba5e2d888ec8f4
Date: Tue, 05 May 2026 14:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777990053
