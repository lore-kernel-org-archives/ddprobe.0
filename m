Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08F133346BF
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760651394; cv=none; b=gu58cfzp94WJSg+Roo5AGcwsLxgrUxxvhMvDnmMHSxMDBYJieVsdmlOcEtuxz2bvX0lpUpdDx2mPy6IASV5xkvAxwQZ7rE6YBNzRv/0vfrKpfT3LyUeQV2JVT1PzOvm5CgOfzlr5FcwFRddQOhNo+qIQNmScc2y6/uvalJOGSMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760651394; c=relaxed/simple;
	bh=DYsEA5WN8egJmEOS9NmMtQoFN04vkfsxiWXhWNrlpzI=;
	h=To:Subject:From:Message-Id:Date; b=Y9P7MntmrkPN3MzDQv+yujlffPIU5uBezyfAdGc1Kum9kxNP2UJPSpPgujbFMSLzVIgJNQstvEv5p6EhZiXW0r8tpn5Ijgs9bmcCG64eNNaA/s57s4N+Tk5l4R0/HjMcj6PYb8qyyoLz+SHDU7pP7hY6E/xs1qAFeJ9xp4/yZNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lJ4hQFoU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lJ4hQFoU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE4EC113D0
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760651393;
	bh=DYsEA5WN8egJmEOS9NmMtQoFN04vkfsxiWXhWNrlpzI=;
	h=To:Subject:From:Date:From;
	b=lJ4hQFoUEgFPNlbaOjBJYQwlIC3V+1FffPytqG0WyFuCLobESsSvk0c70LdLXddzo
	 7CbTnh/l0Fbua0u4YmJV4o0jFc6rOVggDM4npjtfsXJOVUnrF4I4RAJpqAAxvGBoMp
	 q7hcGmnZAuLc5PIPj4HZVGwAOhBebQNqzELvgCAQdm/tU6dG04a1iAXLOEuRaqaj6w
	 TNqUx3RNX16QKVp/FWHAdXdGGb8qAxDWaSdrayL//MGd3X2IYsb46+1NAJvJouxlkD
	 WrUjxbrWHaDewR/tYQe7M8GOhwgj619X33HfHWQ0V9JZw4k64qLGz3T3yQz7eZ+qvF
	 6FJqEJ2zsa4JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F267CCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176065139357.21502.13636060352279988896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e4c21021ccfa639ebd2b1d1688f10590027d95f11e22767e3c5638bf235a172
Date: Thu, 16 Oct 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760651393
