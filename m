Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F365B314A74
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 07:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768548234; cv=none; b=NA1SX3BsZouEY4rherhpc6urmjDXB0T6vyS89h7Vzl7GwQJhIvFuJfM4/MlMmOXVOfdS4lmCKeUmY/gTdqoBIAccG5y4vhvUzhEbdJiu0HAEQl83ZdngFFs/VhGWT81gxcGNL/pBDG/yLsfV6kx+NHBYeBbAYyOOuhJV64Oh6wc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768548234; c=relaxed/simple;
	bh=1NMUWmExQcYfitokg2vRR5929BGRzJJeYFcdPGh3qIk=;
	h=To:Subject:From:Message-Id:Date; b=J4qwJX0fWtWcW0Qo+uZIwo4hprWVfxvSqRo8M7G2UOmZOTj8esreKDPIAVmndxYQa3SL5rpEyl558fL46CmgGs29XrU547l5paDB4WOG8cum+O1FBZ6dAV7gEI2VmKJ0w9fgBOsq0XUZD/1MfSRloZQZsE0KEhhuIKZavXoZ/rs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RzSYO50q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RzSYO50q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C9DDC19421
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 07:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768548233;
	bh=1NMUWmExQcYfitokg2vRR5929BGRzJJeYFcdPGh3qIk=;
	h=To:Subject:From:Date:From;
	b=RzSYO50qG7IHN9iLT6ncB7EDN3BeNAcH3s1vMMQBxZEh4KKCv80g8/OZQnWZsJQyk
	 IpmtmwnnWyrBmP2bIhctx9aBubvjJtcbW048DDxSAWgvA560f46heL89UEHwxk0TXu
	 PUbuQaW3ObsvI0XOFaQYQfk4RzU1DYYthBoGTbK/h3bDpLnCZmDSEpBIvMIHoncF+m
	 7XA2StHvBTUr3+qv+cqd21fF68OpigZJy+9qynw6Lthiy9pyCpBBkAEtOeFtG4D1ox
	 I2V5Og9PIYOV7VUtQU4mhfsrXuKHyCSp6aD+5bGurFb55PU8nD5BjCLUyeNUYfvr5L
	 OYC5uuyeqKqtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F46CD4A607
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 07:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176854823357.27915.7577691412006659515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bb259c0ce84a5065432dac08328b067c4cf19902b8b4fceb0b067fd94dfd6d8
Date: Fri, 16 Jan 2026 07:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768548233
