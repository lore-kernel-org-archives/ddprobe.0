Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F6583815F0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 03:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777086454; cv=none; b=LgVKNtLQXlar+xY0Mi+WNkSHL+1zfWBlEWvNVi9N/phuXO3pjgtKGO6fKCu0ZrHOEVvJO3fbNsfh8lVajg9eBdmxUyHsB/aKrn+CkL6xnM3J7SBSi8qQOeJpxx80kea6J9PwvQgnQgsetR4+/pyp/yZ7CzKMQ6emjKIYs0cwYiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777086454; c=relaxed/simple;
	bh=7mYTAdH5nwdKDOOwsHeQPzfRUVxNBe57XNL7uzcpKdA=;
	h=To:Subject:From:Message-Id:Date; b=CQYvIoS4qXdhaeS17EvZ4MHlWV88XPtxeKMrvX9yxk/BHp8RAZsUPGB1W/FBSuqT7ThTSu58TyIxBJSktuhIiDBn065qAPUhFZe7O4l+hU9VvvalfATJAIaptYCn2Pf46bd6v6CZRGotxIchB/0pnHj19Q8aTZjmP/n0MqJfKyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I+89Br5y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I+89Br5y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAE3CC19425
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 03:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777086453;
	bh=7mYTAdH5nwdKDOOwsHeQPzfRUVxNBe57XNL7uzcpKdA=;
	h=To:Subject:From:Date:From;
	b=I+89Br5yvDjnmpQv0b/IuPygT8Wpp6ECSSOuEbIrIYl2fnlD1gVCrlUM5fxR6Lb3E
	 O0IvO/kryXto8af9OOdWOt9CHrqIcAdz9fkfUbSTQNBbWUQnWJCB36AvJ+FVTv6Uvz
	 dmSp+Bsu5Q2Ln+D5ELZqgbjGs7h7PsW8YR4h84RtbhizXtPwc0uxEjAr2tHRIyltfZ
	 4+++AjDAjOAfLN7nrk9sIGY9RUkxr3uG0Yuvq3SadsS3GRpFEqBXlAQy6WmUwuhOQG
	 1FTKckBHs6xUQ59Q7iTt6gfdcLH+15QAfvj4cOhRtM/NIGe8MSXGggZnuLBcOMmzs7
	 CJ2IGOsq0WMXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92DDFF885A
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 03:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177708645368.8984.8725142507705653696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0bf6020cf8fca9b12d590264ce2f3980b10f510f07625ab4defacb3dad97977
Date: Sat, 25 Apr 2026 03:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777086453
