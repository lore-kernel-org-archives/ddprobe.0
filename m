Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F0752036E9
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 18:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780769074; cv=none; b=LuPVIhhcwXyWKgeW8DxzE2zU6sFZTsZyEnWMKYE1NjAcatrjkjs5cWNY5hO2iDFXHK8VwWXC63NapTdvaBgmfKpRraeJWMZNQFOZbsSVsx/Quxc+St7DGdU6xWgTogeQGYDEKZekhFd2iTjzNEy4rB4GFpXc9uOJnzgMTlsD96s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780769074; c=relaxed/simple;
	bh=u+M9huskFEvade0q5t/AqiErtbmY4NVvtyWGpD5GJ8E=;
	h=To:Subject:From:Message-Id:Date; b=gE+5bSS3UmCqDw2ldARpQIaJUWq6zgirJ2fEWAv5MrzMFyYTDWXrki1nVEoeM5DmTgIDNij/AJYLxt+vOJrOYOMoP4JvEAAB+R1FPJ++/Ft7zQcGmc+y7eWcnfvC/4ZZP61LjEKhPED5514CnxzWAGaZKnlklimersOSaBTySbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aJYumxyt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aJYumxyt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9405C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 18:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780769073;
	bh=u+M9huskFEvade0q5t/AqiErtbmY4NVvtyWGpD5GJ8E=;
	h=To:Subject:From:Date:From;
	b=aJYumxyt/0P6xrvj+/2f6SNSvdAqCSIu4ALIYPSR4I432j7lcMQ0peXW8TEo6Avz2
	 bv4KxQjS4WmIekfeJ+/AamNDSerMmrMeq4Ww4G/2Y9EJOFX91+Z8yAylUjXkN7RBoH
	 Lh3eo81qXka0luzed/xKks+cvI7LEPaF3enmYr+sVocXi9iQQd3H/yWmR056s88C80
	 szm+dLCAlOfEMXbuQQGRqzkKdOkkKR6tck6oEffwtJPKnh/LeZaeJpP/XNQ0lqCojx
	 YvfyskfpoZQQaIGxuweHAe0OIxq0k1pxNzLHgd3AZ3SZZ7UK2hiwgYzsUBuDzkaldg
	 Rg1J8hM3+inzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA785CD8C8E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 18:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178076907368.13631.15170711983737831795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74d40f1ac41b797192ea328139ae1607921bb49249dc953cfe3524a294972107
Date: Sat, 06 Jun 2026 18:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780769073
