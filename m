Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A33A1A0BC4
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729770954; cv=none; b=KVg63EmH/CCUHh5RtSxFqHHLTWp5iarxKtjk+pf+7JJacPWhmNxlMneTUwN43SDCNnf+D6PYRfWgxJvhKV49pPLRH/iOvM3V16rNRmrjymJIUfmcf/ztmipdCXYHI+9rlao0TXSHt8OOgmedHX8tmR1u2T9nBHjKtsVP7YgfFQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729770954; c=relaxed/simple;
	bh=p4Y63i3rWUL5Ftjj7XycH9xSx/NzagiSTBuPQGLWV0A=;
	h=To:Subject:From:Message-Id:Date; b=qHT6+da9T6BsV3y3fdCxSqRbGZH10ebik3zDa0x44HgF/71jfAym8OygeACq3xWTcxkQ1Zk6DcGkMDUhYupMcMXlmjRKp24EOSMI6H7Y2R2cRvYhzq3aMjR9YB4x/NA2/+YISpoJF6tQejHfLuQeJOUpIfONojg863Dh4Z33LDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mT8kPgnG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mT8kPgnG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B068CC4CEC7
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729770953;
	bh=p4Y63i3rWUL5Ftjj7XycH9xSx/NzagiSTBuPQGLWV0A=;
	h=To:Subject:From:Date:From;
	b=mT8kPgnGouojBru8GDIGseSTFsOlooDcCjL1KnFCaTnKn7bzQ5jC8v8oX33q9chvz
	 KNR65PnLeoH7pL31AvTyv/YkaY9p2uis0PzUL+JAyhAZqy+XMe6yskgA2chAQo2ZVi
	 wCD0cNgTstGko5jdImV11yQkTM387AbQxOz0foyWqcko+astRYkgX7RICOGALsMwgM
	 kfWzD3wHjFSEmSGWFcNuJuzroCHp9eo6kLIUSSg+KAHtp0PfwFGkiuiE5Jdmzrumeu
	 ooclUUECX9mF9Z4kUQqw5ZEKBafVXgB6RDu/qxLbm9ViM7rowurStpf0O0g1aYexcH
	 Dqfbf6589zQvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A91FCE8E68
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172977095361.13292.15685373480505402605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f97463b88dc4953c12acc8c3718bd4fe1e8b5523f8a32bbade0af3577631d655
Date: Thu, 24 Oct 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729770953
