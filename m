Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F4111CD25
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 19:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720811363; cv=none; b=WOlQLGs+wR/f42G4ZCs+oIGjYGI10nn4asq740ztRjcvWdvm7hxoYI8/X+dJdSlKYSHzJjyO/FPO1WdLsVO7vgtwFCu/o8D5+AljKWvhzODiSGUjj7gSNrnZs9+CmadpNNvo9JD2DkRZQ4YnTU114ENoh8eIQ5Yif+wF7fMCB7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720811363; c=relaxed/simple;
	bh=mDPbA7HFh9N40PrkHYkmBCJ+0DQ1aH7CaGsZ0xDB/Zk=;
	h=To:Subject:From:Message-Id:Date; b=ujSMFgMfonCNW5PM42ZSoy/TPnkVe/vRq1RImvi7a2ixF0d9sqz+4pvGVwePoLqkBYMlZm9WJwApPOsE6rHceNhP4jqbrLAAiepJKenAqgSEddiaYZAEyJqP/dzUeHn1d9+06c15/FbA2rh5woAQPQ9SuQDA9BpJOdNmZ130LrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uTWpDmKu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uTWpDmKu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3084C32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 19:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720811362;
	bh=mDPbA7HFh9N40PrkHYkmBCJ+0DQ1aH7CaGsZ0xDB/Zk=;
	h=To:Subject:From:Date:From;
	b=uTWpDmKuRW+AsANuMWtqd3P2p4fP7V7dFdo7gTUGZUPVHVt2ULj0OKIQfB4WgDWke
	 UtdtwyBPl9KL/sd+JDA+cRhBc4fMtU99SOYekGalgCgozxuSZ73z2RuMt0PFj0LqT3
	 J+mLi/Gy2Xwu3GiIldubCVC7d/zIhYwsScpgGcAWmfsNIMhv86FOMJwyNxkwwQlYHT
	 3rCwU3aM1dlwQ6aEVSCEhNKOF/rqYKWJ+/e+kzcDKjn43P/yqOPUR9ZEnF3BD9Fs/u
	 1hZOOSroa7hX0wgfhwehaCrKyzyXueuKFspEqeqCuROU11KoFjV/YRXxhVX+WtjuqW
	 gto8CpwOLaspw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5F5FC2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 19:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172081136279.25829.14446828021561274452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75dfbd8bb358784f2cf239b4332d7e9a80293c802b93e6c189b836c39a2d31b1
Date: Fri, 12 Jul 2024 19:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720811362
