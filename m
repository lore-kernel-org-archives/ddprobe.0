Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 893522EC0A1
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 14:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775744254; cv=none; b=noDp9LbnRaMyCLwMVVn8sznZjsQajtUehYOzWtrH4W29xWSAkUTPOBneIbmupTukOgoU5gFwrLiCheuVjBa9q6SdJXUI88fbWGdXGoxssJQyClZZNC1/WqeRN7LDhCcUCdp0PHPVqxbbtEYDJV81LiDifB5etpOeVLnbqSqdyHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775744254; c=relaxed/simple;
	bh=ST45ZlWOwMk6cWf5Wcba7xfTP0A8aYZUm0o9tX3FzLw=;
	h=To:Subject:From:Message-Id:Date; b=e8m0pFTRQ7DeGdQO//T82Au7wasscEnqjeeixnO2bDASw9YGQcCpfrrFrAaTPNrCmA4meJb1Kx1kUiI75shzWo8xz2QDwv1P/nrytAr/wNPNi8syZLp/wHEhhsdG7fgOnLOyhX8r00+Ne7MEFv7HJkMpdHOfIrJb305oY4Nhk0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z5B9Nk1U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z5B9Nk1U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 41DE3C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 14:17:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775744254;
	bh=ST45ZlWOwMk6cWf5Wcba7xfTP0A8aYZUm0o9tX3FzLw=;
	h=To:Subject:From:Date:From;
	b=Z5B9Nk1UCCXslRv1p36cT0E02xDlqFdkBG+Rv2lo3Qyn3otHf2SgQSSjIdD69qsr+
	 rvWFiQQRrm+fq7lo7fMjgcxiDhNrNr4MZd3AQobv3AVTgwhzxPRUQ34RwqGIKMzrNi
	 ie1GiFKPGEzehfQ9Qt7ixwsjtBCytxmPV2/fYG9pMCz3UVy8LRIQgYEjuMVTmBkUVT
	 Qx/ISvGw4JOUsESFL0TiWy6NQywMEyrYtv8L9guk72QLNxGsxYnS9VPOdpsl4bjZAZ
	 jvTpTgSMaS9pAp9HgukSqH1ZsBITwEmg1CLMzTSTHSkWc+JFY46NZfBP2pntUvY+NQ
	 rggDbklodE0ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 05F6DF31E21
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 14:17:34 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177574425398.28880.8646417220065606826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2477fc55f9569c879020ec541a56b56daf1368740a30df79490e5c1d5127bbc3
Date: Thu, 09 Apr 2026 14:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775744253
