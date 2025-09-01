Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6D921D3E6
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756701594; cv=none; b=kbPG5pgZtBMsVB9fPZQ1mjS2JpxOofXanfYBOm/DkGBG2EjKi9fp/AcOoiJoOGasjW1PaUGk/P6757t+A3cGv1ZFToq1XeMbr5+dNUyaVPvxRitWJ3z0TbRf5VLzLhWWtzOonE+o1nD43vGdMcyGGCwdq+S01WdzwIKgCLVxAyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756701594; c=relaxed/simple;
	bh=E+4G3DAdiGTcZY3sFVGNt7OcpTmhzTmluLS5rELdkz4=;
	h=To:Subject:From:Message-Id:Date; b=siox/Uuy0JBexmNY3xIqH99v92GCQB0hgcQQFYkj1hz6sVV7rLw/nrfzWmTu4hIuy5nYLp/fOvH6dKeFFDHs+GUzzniLqNZ+iTItk0PpDdcKVHNwp6qzS9wnUwzvJFrJPKOdH1c+UhPVM0HG/P1jNcrhpTtBbRD50Mgi4gUPpfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=blbtaHOz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="blbtaHOz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C75C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756701593;
	bh=E+4G3DAdiGTcZY3sFVGNt7OcpTmhzTmluLS5rELdkz4=;
	h=To:Subject:From:Date:From;
	b=blbtaHOzgRbOH3xq+qwady2MW/aNLqoJjq+nZmKgAc0lmsMkbRqW1/G1poXdS52dY
	 O+NbVsxlDbOzUk7wPhpsTgjeF/srz6UCzt6Q2V2V3Jibw9Y4ma6aaA2Vcs+YeDiX+T
	 qZz7Vi8aTcTj5bpRBXbW96IA4cwACctu/wXrYTHVZpPL4CZsJ/ky5JF2RLDHyfeQqJ
	 Q73L17fPthIJgikZ/EabysXuRSE1CSqL9pF6GAa7rmxJDHbQCB9JHFy4zicfF8QO4L
	 WhS+k+ONGqS34wnSyDzDQTQlnGjGqz6wyzd5CJ2SUC6o1HRPv/9a3uHugTv5m/ZIXG
	 v+RvW6bJ+2uww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A89CA0FF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175670159357.19452.12149832396879759234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5e2e8da234d981e6576112152cd7f3721f2a85e77d2cd17d4ec695fdd55d82b
Date: Mon, 01 Sep 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756701593
