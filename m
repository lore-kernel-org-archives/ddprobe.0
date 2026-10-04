Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D43873CB54D
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791133234; cv=none; b=IqqnsaJev5eu86Nxf/3vLmYlN243DVOHWU28V+KR63n50Fzu+bVQSWpikSr7mMbgF5tRyTt3SSwUZm9XramSE0qkk/FSNK4l5gquxHHN+ZLW/HRUW7yVzlEIUl+ztu5Xg33/tQ0oJzcbyOhzx+meE5CA/2X81WR9nLoXxmg0GLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791133234; c=relaxed/simple;
	bh=//pzaoQM5S+oojjG8ib7YVkRVoc0/6H5JF+V2eSeank=;
	h=To:Subject:From:Message-Id:Date; b=bfv2N3NCaEQ1PskK6aLqNt+5VQ4khn2Eog7wN5gZI+o1ZZXkFuvOaJNjjRa4Ktq1QfLocYgxBz8pMi5+U8KvZpKBsOdDWGAVcf6VamAoh3Dzs/hZvjm7o6AEdinph8lvCFeVzyS8E/oLinpu7QFAExv6FDNng8lGn2J9kTpf25o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pam4j+HV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pam4j+HV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6461C4AF13
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791133233;
	bh=//pzaoQM5S+oojjG8ib7YVkRVoc0/6H5JF+V2eSeank=;
	h=To:Subject:From:Date:From;
	b=pam4j+HVu6FLQpHi4PSiOKm4DNer/3nFscYIasai3GU1r2rMV4UrbZbjdHFO0rlPt
	 r0xEGpidVvDd6X/RI/WH59E9DkJqvvqfT1MOYTO5UlQT/rgV7HUzZgV87l+cy8qnt6
	 Sqa5C3kPBlr/E596/Ak6QtoKvaAZJPTCXfdU6BzDeaYMdzY6u471BNohOzFweB9Yw1
	 WwYyp8VhVmAqjBAIzLTysphrjOlBD9w7JUNovomg3HmMZI5PRFIZZxxmgbccwkVIPM
	 6HnL7PQhOMvkU+KvplVtIMXtt0MfvxEuHbPlFuotu/t2zzln91s7v3J9FF+uirDNaN
	 ud7euHe0h7JLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3A40CA5FF0
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179113323369.23692.3483347441581348384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96ad134cbffe8ee112dde5eaa8e6b8ca1b900c304f2f66d4039fe899984a5765
Date: Sun, 04 Oct 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791133233
