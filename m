Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A68395259
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 10:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775818054; cv=none; b=s6XfG+aBwA0pjnWu2WBiAM0BVt/8geyF3GSQ9WfAVFCOezEiUm1rifVp8a5Mt59YhRDO/nupMihS+2xoAzUpkFEe/yPmLivahsVbaSAZqxJSzUjnaAeocpyzSPbp57EH12zMQcRLvUErv2ZfrDtVF/qxnGHK1/KpENoVtzZiYpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775818054; c=relaxed/simple;
	bh=37uLqZ9vMJmBkU6xrJVuOQz4C0Gjea8YrvPXQZKHJrk=;
	h=To:Subject:From:Message-Id:Date; b=Z32q86nReQwpOpnuI9Aru1Md28rb//Xk3XqkyyvibCjN/S/Ut6+OEOSQN9wJKEqSBwlKSYPbbKUr27BKV8aQNE/BGtZiUkyb1ax5Iahh2W+Z0uV6uk+wYY5Xnh2sI5VpvYO2YgMoqWaqR4nKLS5vRaL0RxMQj6fEiIHgS9yGsdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ch7CRiIB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ch7CRiIB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBE7EC19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 10:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775818053;
	bh=37uLqZ9vMJmBkU6xrJVuOQz4C0Gjea8YrvPXQZKHJrk=;
	h=To:Subject:From:Date:From;
	b=ch7CRiIBiWRp+C5csTRHPTl2PSUfDTdiHlk4qozuDt9lm/fe4WUUCIdFxzediDpDY
	 SKtI/vIGzzO7qRrd4UZHbNMJvJHfL+E3dYXuoljlYvK4I+d0o/7cQOzDFJ5MbJACfE
	 wgcMQAmRsUQJNEpZ5894cC6dJFZLFREMzEGQdfalSVUn+RNnVNvGc1My91rbTv5IEL
	 fZID3tGaUpnUD9afEUj0cDu3rmdlGBzcsbM01mC1je0vsXK7CevD1ZhPFNH0JMbu0q
	 oiBTDsp37NZBWIfS7uQWayk+01Cnq9Z9t+SS/9O0ifjLgh/QVkWZEmguskkddPlQXq
	 unoV8ZxrhQfvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB37FE9907C
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 10:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177581805369.4294.10120692043370479198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3249b2379242ac2a24c31161527730be058e7e866f03a06f599847b5bcaa67bb
Date: Fri, 10 Apr 2026 10:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775818053
