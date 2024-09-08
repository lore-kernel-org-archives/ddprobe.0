Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11490171E6E
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725807354; cv=none; b=q6cI4wyorILHXLN7eN4O8YzYsuIZfdF1buG1XcLlWDpF3N3LtTWrAMKMf1zc9CeriMs6ydp5BJCDccOAb43CZrkj/w6nyXsXyd34S1HP8tSncNLsHPXl3fewSnQPn/vlRXKKcc5/dfsmckyIKaL+hz5Sr0vgRnfEEMqkE38vghk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725807354; c=relaxed/simple;
	bh=2MrtAhl+V5EFO5HLpiKn9Y5MiolsLoJgyaFrFVMdyN4=;
	h=To:Subject:From:Message-Id:Date; b=U+l7a8vx4f6zqzZdZdWrKZnge6GOiI4L4aFG/JiTFtg30u+CO/uiMTitOe0MPjUL1FFgno56G9pb1vcsxnI8KivfF0tpyRoyBc8Bw/HxOJb4WFx/+KyrnTknTkHO5+7FynP92SjB9MIQ4cTQYGUSIZuKDD2yDeoMKXpBqs+OW6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LnJ6aA9f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LnJ6aA9f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AEFC4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725807353;
	bh=2MrtAhl+V5EFO5HLpiKn9Y5MiolsLoJgyaFrFVMdyN4=;
	h=To:Subject:From:Date:From;
	b=LnJ6aA9fSSuNY5h6woC/uK6dWzg2mw7gOfSmh2VKYuytbavOwsUhzV2gv2UVBHdio
	 EyUniOWMPLNIVYcsPN9FSYBxjC4slPQNNyx1254RRcER2DC+fhCOmxAYMay4lvxB/F
	 JOIjaBf7HbELFWd88V+w5gOFyBfqNtPkcYmaWL55yUzYYpLwYjZGs3NmGdRl6Zhqd9
	 itVHTEEJwxOG8tLJJHKdIroqOPhsxYYVgry35XAUZjEZSorerhioXFWbCEhJUl23El
	 o3+HMmbSSUCcXtjVUQkZhWpS8VGZfpZ/3ifgfa43p6an4RK2Ka2QeKKM3oXEsPTHo5
	 M2/Ztzvbtegjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911BBECE579
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172580735358.25410.12738743035896500558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b749f433eb7da96ca797f36787309d1b52b384840abe4a566065c6eb0f5edf75
Date: Sun, 08 Sep 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725807353
