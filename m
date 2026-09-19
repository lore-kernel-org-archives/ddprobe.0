Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66E36238C1A
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789801234; cv=none; b=a+Xm0S+ciDu40ELPpOAnx1hoS9Gaif+dSKsSqmKoY7AhTD0stf2iIPBWbHJhmIgIWCuIlc9Nou9PsCNpc+ruOqQ0WwLuEkpPQ1Zmjerub/LUGiS+V3toUxiDCBdb/D509a8fAwC4sWSiX39cooRAyALUA3fKLNaxZPTp85ojPo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789801234; c=relaxed/simple;
	bh=2SyZ38xMwnv1s/CFMpJbIlZk70i+Vv3WFUo3XSC0cNY=;
	h=To:Subject:From:Message-Id:Date; b=eNkNP2Y5HyJCCJR4Ixv10k3np9P8apyXkb1YvoNXqGsWcW+rgfzvvl+vOlhV8VnZyl+UfGc/QMUjlamTvxfNrTa7bJCsgtoUCkH4EhcMmFmKqyt1xP+IfqgZKMayvILjrlkooJzjKtumTlHJoy9gID9+rnAIeCvcJXpKvxNnXjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fr2LieMd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fr2LieMd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4557C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789801233;
	bh=2SyZ38xMwnv1s/CFMpJbIlZk70i+Vv3WFUo3XSC0cNY=;
	h=To:Subject:From:Date:From;
	b=Fr2LieMdGdtWwp81KinQUeJSS/tLh3GIBcr5uwPfw0x3FprXlF1csAg8QfJ5ZSzQv
	 1iGDteqAo39vVj1Q8uRF5NwDjM+lrklIKOWXKabCXL5azRDtmbE6ddX+nh3N3CQwF7
	 uWdzcUfljOH5y8iyGsvdZwnkdeQnSvlvkfKGOFRuDxNAtPlZXV9/ZyekTLWdboiEDm
	 u2xmIP2E/Wf34PpXkAeeYQwZgC7S0G+uIOxfuBlwSX0CsPzWptQpW2PjLYKOZfsXXQ
	 Ga42ZfZKCQ30iOpFw7SqAPS3h0GJlDgyrUcJwehHhWN874SmiD8grIilcPBtjLKStG
	 bcn8ftBlcdaSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D67C982CC
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178980123368.30605.2185454410707805633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39a941216a42ae9eeff74a66009c549fa429b1a5f071093c64ddea8c11fbe22e
Date: Sat, 19 Sep 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789801233
