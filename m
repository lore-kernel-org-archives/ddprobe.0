Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46FB439B4AF
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 09:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782381454; cv=none; b=Bun8Njpp0d4k/LKc0LXIfVK2sFMAkLHNRXyOcKP5qEFz1xm4f5grhdMI8hY5/QzkO6lfXjMNZwfjj/1HCLWHXBH3kt1/LQkWJOooCw4hJImMLk8VQ9pH8CpASpNvUkQ8pvC4ynmjXQUeIs6lKjiEU9uX49E1LVVKthgNaoH/Gs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782381454; c=relaxed/simple;
	bh=B0y5FavydXwNK7fevEFd/zc5F9fPYuYD5bPAQSBMD9k=;
	h=To:Subject:From:Message-Id:Date; b=ryDTBZRALaaIaetWXonw1ntXMIMD7dW7K0a17iVIUbe3V7E0JBuMhQOctK2cWtADJAoTb4l7PTTyYgcbZdKp+30xaVnr97HzmIf34HXcTVYGr9BM+WFXLv7YysglmZMeF9oSI29BqoVLDr00P6vWPZh9kXpiIy+ZgVW7RRzNvBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JtXVj1An; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JtXVj1An"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAE56C2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 09:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782381453;
	bh=B0y5FavydXwNK7fevEFd/zc5F9fPYuYD5bPAQSBMD9k=;
	h=To:Subject:From:Date:From;
	b=JtXVj1Anrf6Xkrvu6bU5lKSn9eX97DQTOBrxlEQt121u60Gz9bBIiEcZffryacNLg
	 1AcY7eQVsAYfbjPDNAk3+chNzwzU3ZJ0rIHMOQO6Yi5SMBl5f1RRkRCCjYw2SQxwac
	 Baqwt/WB8nqK0kFsprEo6OTR7VqyALX+2Qm835znXuNQUxEKH68svaELGjjlANR7if
	 NY11QqPVDijvblDtJHASJfkz6RrfPTnQglP8fHRccCIE3zVSOxhVKdg6VxCB8+d83b
	 gKvlmMMU5sd7h+SiIPS903KCxYenya3xN7cFY7VvJ8j2JPlKekb3xVXejiJ0PnEYsI
	 IobpW1HRl8jnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5486CDE007
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 09:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178238145373.9046.10123346970562862419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cebb45eacd59595da358734a9e5f43b62936b73b5fcc7841600e8940f2e47171
Date: Thu, 25 Jun 2026 09:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782381453
