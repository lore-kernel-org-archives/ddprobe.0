Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 217D81A4F2F
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 01:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773450294; cv=none; b=cgsdoWGO7s1pIAlNLM9vVoDCiETPmzgRZXnZtN2now7o/R6Aw/IXEXEVRDW9mkolaxKbu4+W16WjGWoM/Ngm68eg3jGd6VF62C5+Bns12+hMrv8++pwMdu48he69pxc38KM5i2dpd/YDh9NIeniW5FLhPDE5PtcSVZVJkMnECP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773450294; c=relaxed/simple;
	bh=E43W/eJZcN5jzBbFCF1ZzlaYvDXJXuLci+41wBxasNE=;
	h=To:Subject:From:Message-Id:Date; b=VFYliBOC0JAbcRT5gLnk5NlzspTwA9j3IS5L9Gqmr5yNjBiB1U8F67uvs9mbxxzwAKIo4rtc6Bi/XZkUwouTII3eB4OXMt+XqA6gA4LE7evkqZpSo4WRZUIIWrYG+bTwfw03DcJc20oRQA2I3BFcr2HkzdubhXabmWGFBB/5qBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X1keBS4m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X1keBS4m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C0FC19421
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 01:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773450293;
	bh=E43W/eJZcN5jzBbFCF1ZzlaYvDXJXuLci+41wBxasNE=;
	h=To:Subject:From:Date:From;
	b=X1keBS4mUYbnIKPVUmHIz8szvUgS+zERdepaB4Valrzt4wMGxNWenA4BwtSXeOgqW
	 hDo32lzyn1Rq/agWrCEGPMyL+loxnqI+I4Ml/Vxv+KChAV5m1IHIQ0uNlD8nd9H9M6
	 3mt/imrZ5YGYnYNDLnf1nKdkstCoqkiPU9GSfLXN45nqpbNkAzUlsDaxfWP5n/bnPw
	 wK7ducFOO6K+GHvkvFSjBldliJ25ALIkR+SjF83O5D34MRM694pZVh4fj2p411UIV3
	 2Z8gcAn1cCGdD7cnb66DJBVnCkTwJqmCc6Bk2Q7CCoWmZAB9OW2OiUPhefxKS7OS6A
	 YWQU9eguBn2Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952A3107BCD1
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 01:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177345029357.19378.16902274475643171559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4eb2e53f337c544238a72df816908598b446ca7003dac39de9e720ea0d7d7d51
Date: Sat, 14 Mar 2026 01:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773450293
