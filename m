Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC9F383312
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 02:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780452874; cv=none; b=sp/7C3os/iHborXZFqelpwZGFVgUF7wAjpmfy3pX3x36tCpJS6fpeLuYd9HJp1KHi+BZflBsA1bp1yvaQHhKeXswWCvPx2dXOpBJ3MnsOZ/etpiD/tNUoAC3ZVU9wQ3/ThTYyA+kKoi/gRSvXC5UDu8D5Jq7QZrtMIPRVqLKj7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780452874; c=relaxed/simple;
	bh=rm6TmmROpe8d0vFcBc1dpcQU1s5pafpoz1i/OyTqVg4=;
	h=To:Subject:From:Message-Id:Date; b=aqx/2FTjkREtNQUVlbnTMEeCeaZsucbS6qJraW9Ty8Vcekcn4BHeHJRQZL8o+kbHIcRj1Vz8GbZzlqx0nommZU28W7uERKO/Rb01O0jSVOXWn5XPxdoLmr5Fcj2McsnBEzWG4KH5DnxY/iPr+gXblugUOg1LBth72iLOlzi+NaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XXCfvsDw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XXCfvsDw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEBDEC2BCB4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 02:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780452873;
	bh=rm6TmmROpe8d0vFcBc1dpcQU1s5pafpoz1i/OyTqVg4=;
	h=To:Subject:From:Date:From;
	b=XXCfvsDw3hE84ukTPjMUuYvApPE6ujDncQZj/p5g2HCh4eLNA+o5Eolp2QlSk0IiH
	 i+jtTW25sT7vbHJn3i5SqbcQscJgUi8cVQnQYa/jlZjAQ6omKI1JbCucn3ZITmkpgR
	 cOj8cB0L8lTT7Ookb4BF3gmMQKbceRh41gpDYgKnTjIob3AF+uMZ/LRioNchi4/IMn
	 CBvPhKw1W4KfFDm/g0B578Wojl4xdZjzEM+rq0ulWMaLHDSe+8XoE0NK/RONVoW6ip
	 nwBRK+5eq1YgUa98UtmzBYPcHYs+KhgBuyT7ZQlMJRFkN5CThn6uE86NNIeI37XHCn
	 g50ucupRq1Ayg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF43CD6E5D
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 02:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178045287368.17682.1915449336081839831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69627469e6910b77bfb2ab15b9a5c56e4352b50f1b91129896a164f13c06ac78
Date: Wed, 03 Jun 2026 02:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780452873
