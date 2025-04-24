Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F9343FE7
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745473794; cv=none; b=EZOgfFNRw2oIp/FyLbNQiJz/iIla54FoggGcZzmq25Eg5yNzjsJR/Jboyhm25+FgsqO3OOrliNHM9ylejFyy6SizEK9unhKRD2uCOwzWS/PPQCbj2vrVJT+bRtVVHuz2THge5ol0pZ/3S0Dz8oD/Y4QUH/PR48Mwuarge2HAM4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745473794; c=relaxed/simple;
	bh=UZpW1joozBuesXPbT7g5xf5UpT/lRqb+eRhdGIDCNvk=;
	h=To:Subject:From:Message-Id:Date; b=nR8MXbb+rhjauRkuqRuXUn/GzpD3rlJfbHlHkZj/WaOhUyJkSQZ1xaWiJeY3dDYtxMxE4cs4TmfhUoeizn5NBaaU2FzMFaQRpZrbc4naLKwEUrrA19EGihAN8Bq9qaTfpP/LsMrjPVubJFhrSbjxgLlBsZtUd5ea8WVInuA8RVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PMUEJfko; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PMUEJfko"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5B7C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745473793;
	bh=UZpW1joozBuesXPbT7g5xf5UpT/lRqb+eRhdGIDCNvk=;
	h=To:Subject:From:Date:From;
	b=PMUEJfko8u2/G27u4jznk5xE1b6Xocc/3LQLKYzu9f/hZjJEXxQHg8I9x0HgTP8fx
	 kRvNb/hdSArjbCKaE6bEQqkQqZ169qzy2QdnQGX/DZx4+iTyyRXit527LAh3PMuTty
	 gFXwHEx1PmB/BfYSPD3FlZRT1paw4HM0zOW1ANDhnXowDjk3keWu7f3UQxpFA83BrL
	 xWh5+mHG8bsIaImVlejuz4NGXXFdgWAhl43ZyHQIIgl8hYNUqTpH6e0HN94qtzN7xh
	 WdYhc50iUYWpeqUX33sO+aCHN43n+vOMIitsF3lgpmOrDaB2ftmSyfVb+Yuch5Ndz+
	 YcpVI+ubNq/ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DB12C369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174547379357.30850.16155399934330598329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f4e4ef3cb7390cb58052eb13666b6c191d6b454c334ed2fa3a1fe8068f57a17
Date: Thu, 24 Apr 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745473793
