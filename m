Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD63288AD
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 03:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770436434; cv=none; b=rF69fVCUHHiVYAUTu/gkr9+WLTclMPPhpANnpcSvcR2OgHP393Nm7PriEnQ3UgGYC6uIHsmGKcbVGdNr33da1cfvd6APkGZo7QSVfyAIOAf/v1dDisxMdginvDPlG4vCS2bFEd5WJ9vNql7DmJFSyz63bJfd82+c+zf/RrYEHDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770436434; c=relaxed/simple;
	bh=jrJ2+nwHlba+FDmI1NNRAcWn9FQucMooRLgY8ss4wtE=;
	h=To:Subject:From:Message-Id:Date; b=I6Fus+A6l/qZHVdZqBJ7Lwode/jV8S9ilNf25hyEy38eahbQ4VkQln8ACTqDPuKe7EmA0+VvuP7SIqDysG4T2e/275Mns+VevPTmTORxjiG9YLqNw2b4hJr4Z1NwYndEYr3ajKOqkLADZqTwLWk2+CSuReBvp++nb0nz743aJBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nc3jT1zh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nc3jT1zh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1F79C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 03:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770436433;
	bh=jrJ2+nwHlba+FDmI1NNRAcWn9FQucMooRLgY8ss4wtE=;
	h=To:Subject:From:Date:From;
	b=nc3jT1zhhFvKPTe0mlnq1ZnZEhrF63EAXYRe1dn8/N5/4HtEWNUTGN8b4oe5psduV
	 h6J0aTTQGys5UYtc2+1kM+voAo3iBhRo/uSaTV1uNHWUsX5KTHegBS0bPd4jVPcsAh
	 e30TuVRbm40ngPawCR//wZOjIEYKkphml6WBA+Z2lr9Om5/hZpuSGnVnCzXunC/D71
	 b4+nJF37AI7OZzg+AG0Gg+pAUAaFzd1HjNqCzH/nOraqW+DGpH5iRMJfeOsX6Y+c0t
	 uA1/W0JwjCg4GxyuqGteOeR9lDoFwNX/GhB+11suA6Yavxj7cwrhGm5yELnwoVH+Da
	 KbOstLb/pB5YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98193EE6B4E
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 03:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177043643359.27415.10240002194941282456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90479ad1d023b8565b16454861f9e47200bc5cc054d376c1c5528db2c6897465
Date: Sat, 07 Feb 2026 03:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770436433
