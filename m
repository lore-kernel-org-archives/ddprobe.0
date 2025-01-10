Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BD381A9B45
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736483154; cv=none; b=mYD15BpLLXIFbWwigZkNsPR+SrAVC+a6wRJt490KdgtHulCOwl8svGdEBUzgZRgkORDV3GzEpqvPRRuaZ7k3Y5K0rWUfmaTRtp9hXwjl+akIrdMYGZWPGZlr+H6ckF9Tw0Jw3auO4etewsRA3+R2DqbQE5wQDaUOPsXGMEKunMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736483154; c=relaxed/simple;
	bh=/spSWzWT9VUy2bygCvHReIlYB6CsM16ODyOO4Q4HWXw=;
	h=To:Subject:From:Message-Id:Date; b=ghpsM71+iPTuFfAKgvaC72iLqTNB0SfRUkYXLZy3CEVTTxcn6QFo+I4H43uPAMMkglxKA6I8sUQuXP/lw/PTbYW2RbO+zoV2aqIxSkEF77SYWWYSxOpqG90tyy/CYLNtIWzbPLpitnnp+iaLQmd+fLsZ1y69ZxUVOoh3bNsbgfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kdUlOviF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kdUlOviF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C54F7C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736483153;
	bh=/spSWzWT9VUy2bygCvHReIlYB6CsM16ODyOO4Q4HWXw=;
	h=To:Subject:From:Date:From;
	b=kdUlOviFdHwrE0Jik4kdCa88HtBzkQThlLtHQaevmu+JV+nUFLnJahfXxsPAHh+Am
	 ySN9MeRs8euGhSDojALgD284rUhamJaaANuD4OT0tnYrG7MPvbiyYuKXGDAjjqpIE3
	 TRMaklPdr0zRYYUxyoNlfK3uvARhYQT9FSmnCgJB9lbiwmHsRmRlUquUu1JDQo/RMZ
	 DnAVJ6ltWC/g5v2TERb1sNhM8kNa0enQcFjIgD9ZkkfRy1j5wUQ0G/xNipc6kJSwkK
	 4Dz3MOTxqKT/SUAw5K1N1nu4YeLRxCFE5psfYTXY4YeCMqWlS6stARe9tqckVxivIR
	 E5EKH1hxvLhsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99FCDE77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173648315362.17848.5923121808344417051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58932778b2035aa1354b4c04827474dddb78324cea51f06961d3ecb724e282be
Date: Fri, 10 Jan 2025 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736483153
