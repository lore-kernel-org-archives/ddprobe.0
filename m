Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED785139594
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 19:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708027097; cv=none; b=qW26oB5YPCooZCK5mEvW1fTH62K0UEx8IkOb8jVo0CjEcfHgc7vrOwSEOpzgOd18wSmZe6QEipYMEu2b90WKpv2mprPykLQUVzfZ12AJp3kIW5858xcMRi0r9scKtTPltFnw0IpempR42qViq9RbfRekgO78F84GjvJXMsUYIZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708027097; c=relaxed/simple;
	bh=DP5vH5kemrrIdr+2iOnGbSertBUcHcQGF/ypWhd9GHA=;
	h=To:Subject:From:Message-Id:Date; b=Zf+eq6mq8/3MB3NxHa3oKnKMuW+eyjZhc848kcjLnpblozMOrYkMllYBAt3Wjg0vLp/Ay8AwEnB+ldkVTsYRvQDJxArH0Z+yPDUlf6BybGu5dJZoLLPHL+xKSKe6Jir4zd090KpiPRlVdRbG+K57qoMR9pelrmXqQu27vpAUCDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WPKGmbXq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WPKGmbXq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81975C433C7
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 19:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708027096;
	bh=DP5vH5kemrrIdr+2iOnGbSertBUcHcQGF/ypWhd9GHA=;
	h=To:Subject:From:Date:From;
	b=WPKGmbXqreLikTCFkhGN8iRWbEOuRSTLhIr89hGgIPizktBbfJ56UMd4zi542ZKoo
	 3+o7qJoj5AMW14wQWUXBDWa8zffZwWe+XdvqWzuvViYH9flYtLJbFbDvigEq4+nUDJ
	 O19ZHsYDO0BW+CU9hGR0zlkBN9VkaJPWBDUlsgon3h6SZmdZUals1nk9EPk7YFOErh
	 YjsR4e9pBklrUurXx/NIA+HOXrn2jcj9bxbti8UB36pbig7cIIXtJD6c6s6jExfQe2
	 A6DYqbe/O5wlqVS54dJawMnB9KLmU7bOx22u6ABjUasi2zm8HRtzvjSFB8asuZAh/t
	 mHfkj30+tOPmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60CBDC4829E
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 19:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170802709637.4592.3481277721209926879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a49a38c98c320657908f163f25f0f9e25104b946b6c2e0d4e906728bd1e05737
Date: Thu, 15 Feb 2024 19:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708027096
