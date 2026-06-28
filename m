Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC9F13A244
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 17:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782668914; cv=none; b=lB3NyAOXeoSmZDvQGmhqjpNKSfSD8jO/KXxQxPJLXBHJdQcGlAeLMVW/+R/WrmDG92t7LZm2+foEOWWHAEIHB6acO9HLiVruFRx5osq+1ygwjUDwDTrFSePbsqyche7ARnKxXNLakvzMFYChg/xeiNqLxOTIFg0jfqopk9AtZtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782668914; c=relaxed/simple;
	bh=67up+CedlAHiEY7Va/i+J9f0zKqMF0Ck+8Z62zaG7BE=;
	h=To:Subject:From:Message-Id:Date; b=Ses75bX3z18ueDqPbYzQgpnoTNqzm/9nQGgBvYJnXYuJc9dAhBfi/7UAq0yMeN9MdlzG1ZtWLcANI7yGxK78u3sYLLJmfVdSaNiQG7uF7UmOrD/+v7QuEGYoUrrQ76ShUowdPRLZQE37QqkJLIpU/dl8hUr5GOReD1bvDiMCxQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZEEfmFjs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZEEfmFjs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C113EC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 17:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782668913;
	bh=67up+CedlAHiEY7Va/i+J9f0zKqMF0Ck+8Z62zaG7BE=;
	h=To:Subject:From:Date:From;
	b=ZEEfmFjsKC+A1AJysooDnLthAaeBs6n+iGndddeXuS6woiSTfuL80t913z3M6r5gn
	 4uCpxRqtGE+hK6+40AFpd0WtTWbhvwQ7B0b3EbOJE29F/aW8+xDj92m++s7/9qGEJ6
	 TLZQ00tbWmcFrR/N5Na02u22E63pLYuxekUfk0RCtr9/U7hA+FfBBsBkhWrlLIXJTV
	 ShlftoHzx6CLpyZoW2AEJFMnEnDOjI7DnbfMtZ9MzohIe6Tit12HKYcCXJcuuaAO2Q
	 yESJB7gCmgv97Y/ZGvDMwcY7GPxL4/QPbG5hY0eWftV/AbUvs82plagPQZU4P11Yh+
	 raxmt3J/Cy1Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2335C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 17:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178266891368.27957.2753897137141368535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcad9b39667990441597bbddbd74e069017a009343e6a1f439623852c03a5d47
Date: Sun, 28 Jun 2026 17:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782668913
