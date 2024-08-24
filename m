Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 266507DA63
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724535954; cv=none; b=i9s2pSDzN1mwc6NGE1umOsVNx0lfWvydjn5nPtL5QIuPN39834dQpkW1uwfWl2dARdapXzYNh2zW2E0VTSZPvHafodra8yrqaPfCRHD97urPD5/V/DNbUf/LaPOjFcU+hNzckVNQPHwAYmUMEk7lB+j4IBcxRDXt415SVQ/sHxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724535954; c=relaxed/simple;
	bh=Lf2gvYDIjnHbjZavneluc4ZOjAsXgo0A5j8mPli54H0=;
	h=To:Subject:From:Message-Id:Date; b=aotLck5izVJ3GX6ZqFvXLWjENj+0wo2+5TwsUGNnGivyQZ/1qwTfNQ4fREnq0C1oKNIelPczJbPQC1jRVcSiMlFlPavayzD1cXs+fZOTjSqjOJmj4B0Fo1/2ZNMeqdEVU0sx6aWmjtYHzN9brqVKzZHaEKTW1PFA21DGUy3/Utk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YlcfuSwh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YlcfuSwh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE242C32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724535953;
	bh=Lf2gvYDIjnHbjZavneluc4ZOjAsXgo0A5j8mPli54H0=;
	h=To:Subject:From:Date:From;
	b=YlcfuSwhZT7Y9m/Ac+Ci168DYfS9S/MtQSFRqEbIsDkHg1sQHrNM5OK3wLf3Hkwxj
	 o2EVwxO97zcok2LFVaVnOS65CVfsJ9naYsNrynfVo2BLAhQdxyXjzk4QBHKzeqdvwO
	 cr27Xq4q6tYzhQ1ZysMzLaXmL+X6tDfMQolme/jDWJkho8wihPvayxMIzDB86yGddk
	 UfOQTPbWBQYLNa0h+dbhBshLx4mYTVoKMJU+VcdMg8L0mDX998HrScGaG3pKDQ1pDl
	 tOeao4YpwzDDm/AtfCAbXVfcNQoKrR4DgIiCTzSDsfCrQaw8IuUr4jZgnH9hnlDaR5
	 JL5F+2rY0ps+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B8B2C52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172453595360.23099.13575122201358481152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a787d8b41d9ba1f4731f16265dfda0b1fac311e8e0f292aa6b4879cfa24d2275
Date: Sat, 24 Aug 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724535953
