Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312B72765D6
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756112994; cv=none; b=aQpxdpYayH+hlW9IkYVYxwoXBh5V7jtzRXn9vNgXVvhnIG10MVsG+C3IabPQhbjuiWn1OLH7GJUfim4X+CjMorVYxzbo+BFuKrUAwe/kLiCGTYPtSiPDZUzdzA9ThiPam7Qb4qnNTz6KZPf5RpwDSqmW6FxY8RmToWw3hSYA2gQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756112994; c=relaxed/simple;
	bh=KUJjj0sS3UQZWwEgiEozEFMe4mapGeItTwh15toAL38=;
	h=To:Subject:From:Message-Id:Date; b=OaGyckKEwMI9vGapjnyHwwvu0NxJbbEndNEbE3CZAhRh/HpFtk9i1OotGoOPNATUTRdjw5fsPI1hfxVVkdrBtX2NKb8DhMzCc2yw7hqLFg11ZOlgMkR9SfUPhLzoa4xXd+OlGTj1LpTPAdqqtFCx8efzkM1lgPp7ldMJ7OSRb6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VKuJKLPN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VKuJKLPN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A104CC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756112993;
	bh=KUJjj0sS3UQZWwEgiEozEFMe4mapGeItTwh15toAL38=;
	h=To:Subject:From:Date:From;
	b=VKuJKLPNWl7yWaRZRR5husHeBVtkbr0XrQkAC+zh4LQOQE9Eqpy3mPoJhRtwjcoZF
	 EFngMtvWfF1ESVJLvnPaQzTtoO4mwALJIf/UkZsrIlBiS9vHtypmDKbK9Zbe3grN40
	 EPUWCLww+6gWX617uhkM5RTeXDc0uRMVhfe/LIiBvfVcgHhsHXUr6f1Cbs/zcbEske
	 3paP8KJ5MSYrTMKcxwADde/f5h9E3oNQptYXKJCxgLUmngXFVjTSjcuKqxqwsUkQWx
	 m9R9Bnc5YhEgaUOhO4mr2XgxPsMyM85mXSDZuo82ivTp+ypYa8w3NVmQD+szU3fF1M
	 n1GQ1XkB9xwGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2DCCA0FE1
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175611299357.7961.17553643697801489483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf65658f9c3ea3f93e4333374ffc9881d093933787be9bce63a0b36b67f76692
Date: Mon, 25 Aug 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756112993
