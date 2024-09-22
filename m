Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55F4533F7
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727027754; cv=none; b=Z+4YG2u2UwRp1auiFk3A+gERGXCvmiOUieFykYnjFDOl7VYNagJadlD4mRXU1vkckYPYD3SHt9nPt4GSwdGMbbVDEirl6WNYHV1XXy70MBAgVuGCtReq17ZeSa7Gt8AMYEMNUohgO9ecidg9/1X9L5u2pxCt7ucEqmnRQ7akOdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727027754; c=relaxed/simple;
	bh=o0K9905QzmAG07KcKDqHS1i9svftIbWT9G9fsM7hZh0=;
	h=To:Subject:From:Message-Id:Date; b=LJrPuZ3yHyqFEiA8ux5cJJwrF5EfxklmoiqR00qvsGfw4DyOXoUbsNmfgYogjASOtnFJQzX5lPIGKJOGBoLTGa8aDhSquMx7FvWYIYfyPIUCxN1A/VvvZMFnrMc3SM1lMl3cIbuem4mLqD8da7rkm6FKos+INnUbtxjonIFmWhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uCmLr/Nv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uCmLr/Nv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6C76C4CEC4
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727027753;
	bh=o0K9905QzmAG07KcKDqHS1i9svftIbWT9G9fsM7hZh0=;
	h=To:Subject:From:Date:From;
	b=uCmLr/NvZI9icKPto+Qobf//XZU9rutruIoIxnS4eKUGpkHA8kQZZbskNYwax9fe0
	 w8boIqLM90z9SJNa0jkXRzIKpeLTrJtPGx4/NYmu6E8Ix7pPG4TsZTRIOTOVXjRQp7
	 U9btLCf5MP5Jbw27kPIOmyuN0ZQQcU24z+WhoAZFTHhirBmp2z6z+a6Id0KmOPKHAq
	 d64BOaeZo859CqzOc9Wpp4pWQrK2NK0uPk9AT7OIu2vvusEhAgIIbaZJiNuhBoL8QG
	 WeDvML5I269feyi3pRBQYwP8b13RyJjE+qLzsrt9EzPJypGGafUith4f5SAaVxUVnD
	 /ZBZkj+CbohpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A24CF9C64
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172702775361.7249.17577746779033158715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dfa794ef09a18f0dac818fecc1775da0d62f328040412ea31f23544a897c05d
Date: Sun, 22 Sep 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727027753
