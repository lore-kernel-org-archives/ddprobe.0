Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2B81C01
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 01:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777167454; cv=none; b=VKfsosY7/DeEOheih/4N7c5SgAu1xvyJ3UNT3/AwfMJm6zvRhPy2oWegcXF4pGXHykdjx5L+YxpuLkt+9ZhC2FVzUFQlgbTijCen42R4XNXCGnHe5A/RnRdTNASLeKc8wzTLlDOKwLY8z1NEtl7YBinBoClFH6QuxbfM8wOoL/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777167454; c=relaxed/simple;
	bh=S+9yzTpt8LYjC9Y+sJSLjCbDjIC+SW5uC1PFytEuncY=;
	h=To:Subject:From:Message-Id:Date; b=nVEi4rNCxqMgOTylMitIY/9QEKgRd2YIZpOrCOuYwzc2KzP4RMkUE+LhCgHgrYSVxJFOOoidakkeGfqaQ7kgyT0Axc6lDcdHqUOUFdS9U3gF1GEgowc/zvDfgeEnG+IQmahHhuo9wSkFytpO02hqlLFrINcZOQOYvRob5qaXD/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BJKw8VAQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BJKw8VAQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1128C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 01:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777167453;
	bh=S+9yzTpt8LYjC9Y+sJSLjCbDjIC+SW5uC1PFytEuncY=;
	h=To:Subject:From:Date:From;
	b=BJKw8VAQIb0VGL9o6hPaB9mW2EFdMOTWmJ5xM/qy15sxbwaIRUSyUYOB+BZ18TYb/
	 UHCfGDjDLlgbDIA+9S99VIEM7+WImiZPPXEd5nwFP1jjl/VjSh0USpGiPw1PFpPxFf
	 5uMLvI3GSTihJI5JZFKeL3T6qJD4nSF+YlZtHhf0wNmotPXktV6RA5svOZQ9D593Fi
	 3rGfSFnCHR2sIAfdGF1MDZ+mROzIBIZUyhlxl7qNyrgNQAHjcM/KkJTvzjA31OeazZ
	 VhMLRa+M6HHICMFwwojBIhxCpWuPNtIin0CmgBYUClngLH9jMyNYkOkYVcBesOg9n0
	 nTx6x2yBVeQqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB954FF885A
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 01:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177716745368.306.839444341384454261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 198315f44f8cf5d4a7e46310c59dbc79e7411ee75c494b4ac9c9395dc99954f1
Date: Sun, 26 Apr 2026 01:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777167453
