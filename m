Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E43317C8B
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737045955; cv=none; b=bH2R13uKNx2W4e6B9Sb0AEHXzCTI4PDYO/pYiowDaQIvwTIz6mvGKWa9htHfSlD7arrgPWwQVfDAClPGSYfaiR2SpyODR4zIP2LB4QE7ZbJZXqxy041OzstQZ/qIFomN3CLwIw7o3zstxTWYQ89We8XXSCZnftvEZOx6QnLkztA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737045955; c=relaxed/simple;
	bh=PPNOz6h22Xv7EGElk3sGCGybFiOMmWhYq8nEBQzs54A=;
	h=To:Subject:From:Message-Id:Date; b=qwAF6lckipLntxy9tn2lXL1ayAcRZRPI9ye8jiVf0WgC7DslUCfOC5avtJpn7291BWkwOubG3Tkc/SsujJXD/H9RTXY1bFuqe+SAcA94p5uBPhWwIMQjaZelVbsWpN7z/UZBXVN+VWqqqpKGfhTvA2OSnBgY8VdfvD/0hZQofS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QJFPs941; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QJFPs941"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF27FC4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737045953;
	bh=PPNOz6h22Xv7EGElk3sGCGybFiOMmWhYq8nEBQzs54A=;
	h=To:Subject:From:Date:From;
	b=QJFPs941ZSblFsSTwD8MD87vANoAeQRhv2PV3pA2AZMeOq7HmD6PH8sr1mJbOjAv4
	 rlII/4BzDlBla94QUWIEo9oGtUxrrfCad0Teh41mj9HLoC123q8HWdDp2IlE/JLcUR
	 M4hjIbkymiMhaMeTkXGWmMUNhARAVGXIFgVJPOQ4Too2BEYQQlj7UBjorCoYW2E/tK
	 TWmgdaIj7nukgKkkjsRmSGXRljV5ZRBxyuLv+PMb2m99Ek3hALMK1X9L1fHqcY2O7k
	 X9IpEPdCvvtvtIqXhwiQWZy5xkzdiKn4oTrEspf6DCGBkLAsCzFDOXbJVDH9Tnxulp
	 ZcJq+3TieiKyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A3EC02187
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173704595362.10758.2336334585647318163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4774a3c22eb85fae6f39ca780932bcd2bcb9c37da66fc03e526240b2c9480ed
Date: Thu, 16 Jan 2025 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737045953
