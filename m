Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8CA42AA9
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758478794; cv=none; b=hDxogVhWgt/2Gcy03L8+W+RiP5tCrNboBauLM2qbSJqAu8vwsdIzHXQH2IEMWQuD8r0eptkcQ94wM6QC+pzIzjyBwdzLJBvmCIaM1cy9wGwr5WB8VaKQwUqWPwQceOjjQ/a49djtv8nklkcnBM8z7Ys69dApB33feJjsVTNKVOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758478794; c=relaxed/simple;
	bh=PWwlA+gKy8akwI5JS2H8X3CEY1fmG5g4ptPJm4VzkFc=;
	h=To:Subject:From:Message-Id:Date; b=Szc752hQ7JWyJ7oEvmDYym1W3pHCgpTaVM6LQnSgc61b8eUzPJBwQrCqFCxKsN0uc7XPiA1zh/LiKNMxlHcmKxVD7nBEGu0ghQi7tdmp23rd6RfKkESHKGBfYuM5htG91iHFLahoieDMJkC6lt7od5Vk4/Z1ctlml+kJrkS+y5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FgsL+ihR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FgsL+ihR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5338C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758478793;
	bh=PWwlA+gKy8akwI5JS2H8X3CEY1fmG5g4ptPJm4VzkFc=;
	h=To:Subject:From:Date:From;
	b=FgsL+ihRIPUY1Vs2Y44MjjsoyIE6yUZwUR0VhTssvrWFgnat9/FXFn6aErcJhQe6u
	 quJy61gAKvlBXFbnjTPuNJr8cJEIackw6x4fYvHTmn8Fo+d5+jehRTsy2UWG+xKyCl
	 OUQ2eRDd5xTn/C+j4nN6oekhra7/cIUPhKJTcKkyrpylbo8uCBzv0hWZQXV+88qbEF
	 oObQBxhuA2kAkZU6i0GHS9VHCRlYUnQMo2SVvLsEsyw7WpZON//ajn/AVSUEZWJWUy
	 FjMo633azJ9f8a2z/qzTNLwnEr4vMKn0Chnuxv828L8A6NXuUa1Sroi21mxDdlGZPB
	 EXZcp/y78KQgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948ECCAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175847879357.28966.15246497098964437217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cbe8e90dc5224825ef29c2e2c1afa9a705fa2987fef93678de2ea7d65f9c17d
Date: Sun, 21 Sep 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758478793
