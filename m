Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 057C91B86DD
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722329754; cv=none; b=uwFiNLwL5pQy8pNcpggPrmXC5aoFaJZg7ScFWXNCC+Nd7SXNLFa58PAIHSaVRZy74HuJOIcmSmv3csB8KjPHFhKK5DBBqGslgmCP0GZUv6zCG3cBhpLnhIMd8puZp0fj5Ck5VVGDzzP5t07eOatlyj8KNFajP5RfaldsexeVyKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722329754; c=relaxed/simple;
	bh=peZCeCrmeH2+afdd45fC5qmtvpPhWqn3XUYyBhbvs4I=;
	h=To:Subject:From:Message-Id:Date; b=GjSV2vjP22YGg20yJO6Kuw4NHvk/k6SOEXqjTExQguswRr4CQP30uULfc2RLu/Mj9q2ssabhByelx5W0kwjJCgGhIxLH4dokh+yXhMzlfTjF6coo/0U9eBmaEF2bet+CnKwhEm0MxkYhGnL3QVcqGQosT7Ph3Tg7F1N9LzYs2xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eye/J7wY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eye/J7wY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3433C32782
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722329753;
	bh=peZCeCrmeH2+afdd45fC5qmtvpPhWqn3XUYyBhbvs4I=;
	h=To:Subject:From:Date:From;
	b=eye/J7wY6lJg5Oad+fAE1VUIVI0RASQfQ+yqAEi1RcDTlMEbvbLhys82OnzZzcog4
	 P9SGGrHW3opFYlkna8wjVnca6VK2bEK4IazUM+RAKatneZF8tU3XIjd46/0QQO7XGL
	 Em2vN0WygApWhIYbc+9J/2maEF3lA82Cf3irQ2/iSj1voFK5hxBjq+PzZDMvzWrXGK
	 tsqdm26Y1j7t/hlgIS7BhbzwaCgKaXOC135SYaWeStfY1np5DqxvnnrL+rRyDn7oVD
	 QVElFCej9E6cRGvqWpULTO0kb+t4DCScNOSSlp27HtSEP0icCYFmf5IFJsYCIeiq/s
	 JOkujPTRLw+ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95392C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172232975360.18596.9557435047521776665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bbd74feaa1df88376ec4ae9c6a5613a363dd257812b2d178fb1c6e9192990c4
Date: Tue, 30 Jul 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722329753
