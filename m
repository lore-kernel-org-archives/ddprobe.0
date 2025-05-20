Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3098C25F780
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747780194; cv=none; b=EpbEA1AHZWKo0CtfRBP5Y0oO0jzCCY+2QyFL736QVBd3AgDdNGXOotdr41pXXqikN5UbCHQZXnzxd85nUYCBysSe9pftU2x9ki6rKby6J20CpPgk8ih+u0OuzC+1ZTpmGfhbDePjAVaDif6WqvS7tooQNmc/KEZOF8YrojQv2+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747780194; c=relaxed/simple;
	bh=J5Tqop1aivkE4SA8TPYPs9MTWwv4FUxxRo+xqewWvJk=;
	h=To:Subject:From:Message-Id:Date; b=qlDO+hPgS7P4LeLpfMXeqDc9OnSud+ku2PxBDYoRFV/HFu6Ri7p3eWZ6McuXUnyD4lc5AfgF79/YwOmDGhgKOYHYoQ1H7F3K8ok3rBTkiWkS9ZIXG2EW8120ZJHjn3usT6L6ITBo6xKN/MgZroME6ss9BcQ5WLvDb+BRvdpQ30A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qzK3XiyB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qzK3XiyB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F672C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747780193;
	bh=J5Tqop1aivkE4SA8TPYPs9MTWwv4FUxxRo+xqewWvJk=;
	h=To:Subject:From:Date:From;
	b=qzK3XiyBk8Kzmb7eXIkc8dFQ/8zSsJIWss19W/woI33t+KpKg4lK3Ku5zE3Jy8SVM
	 0tno4I5m9u5ZLNUGxtPCuLD7QOG67KihCWxGoZTrDAZQbdwBPUiuDzkRC+EKgp8OcI
	 yEsVaU2s6Vf0ImoxufhC6fmN4aCJOhn0V4oQ2RSDiAdSeu3amg9efM7IUuOeYz6zLK
	 nW0q9oTgOnsonH/i9WXerIzB0KrvBK0ZciGX1AvJIdJBUMqkh8tXDEbVbjm02vBGBO
	 53C2JC6pL1gKUvSSO+52SxCQFR0AwQ8gKCqfPB5c6eCqdW+g2kfI3KLDMh8BUGacvP
	 aZq8N+rm8zCmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0C8C54E90
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174778019357.21119.11855197034642982964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac7fdff1e912f6e2eb14f16e0c773d986a7f9d332938516139b4a9b19d12af13
Date: Tue, 20 May 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747780193
