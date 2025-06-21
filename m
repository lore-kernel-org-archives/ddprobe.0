Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A36413635E
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750516194; cv=none; b=L6Og4s9pJpdFkZW+3+iojKb/v3m3yOqcxUd2H3tJdDly25gyMDc80c0/RtWCLU7Vm7Gnp7IkJs9zj+cKFh39EaTOEvalggD8Yj2IDOCswt+n5SFYo+E3B3PwDCqeOL2s1lc6sKqknTCJbrJp99uL3pOd+1gM4fnODGlZ9wAZjL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750516194; c=relaxed/simple;
	bh=JUmltHRQyC8FNARmoD3sQGQX+rRlpQrInPEsU/NbucY=;
	h=To:Subject:From:Message-Id:Date; b=Yn8ryX8Y03+mSsa7/29eTm0awN/xHhBT3Y+D0fgsL+f8bM4OeNvJzM0yyW/l96OC5YLFooG/BT5Uj6oMIOj5QqCMfUKg+5ZhQgo50RujzrOXR3SPYPLmmDNMzP+KOU/o1hSxsPQxxuc2ucGMuNvhCfJxFqZ+YALqeLCkon/AT5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BgTc5/LZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BgTc5/LZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A521EC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750516193;
	bh=JUmltHRQyC8FNARmoD3sQGQX+rRlpQrInPEsU/NbucY=;
	h=To:Subject:From:Date:From;
	b=BgTc5/LZLOzpJQbblQkVMyXPKUy1rdPL75eJRYuFFtK+d7YHm4Axqh9zWBiwo0/tL
	 NbkF2lVxzqZdR6ZyGEuxTtzRV3lmUZZoYD8RGGmRMCAW/GcKWwHvtaGN1IDddr8wj9
	 2+mrEcjCRYwQEdQkkU9zWs46b2nWlj+/ROQOOJN49eEcJLXwxx4fROY1IAObgu5y30
	 JY2F17creNIXXwcS+4whpZNZdqZjWBAwU4D9eJolNuFlvZcAiIHEpXwWUl4DwG6epv
	 ueVTBXtNmF+fdNVfvqAjXjFScslT5KXCcscR3pd7A2QA00rS4Oi7+7CbPHI3ipc2s2
	 aBZCDeOLakwxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F9CC7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175051619357.16187.9640247300889375161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1ceeb4dd79da1db76200933ed6b415bff624abccdd4af31e1928c8e42ff9573
Date: Sat, 21 Jun 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750516193
