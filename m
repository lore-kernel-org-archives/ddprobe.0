Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD8B42056
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750760994; cv=none; b=P0qAZ5JAHkZaI+9iVpZWXeJA1fDJ/4isqcc0XpY6QHKxU/tXMIHAxJyq4/jkwgg59MzzFIq/qlamWkrBogZBMAQ5voI3kOPTGW3kjuFEwv4JqKN1ZabyEWLO+AeF8oB05ke4JCuLyPY45II+5bK287GNAEyHMCQ4oe6dwXIkagg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750760994; c=relaxed/simple;
	bh=kbYLE5qKDAMNQRwz0iWoJfv+TYJ14HIVcntniFW8P7w=;
	h=To:Subject:From:Message-Id:Date; b=PxUIW0SEFm8Kq53hRUvbR5lf3t4DfAGhWnWz3whLOMFa1LXI1KPN1cY4ZWFifbK5RGe7YEczGHIm/D1+wRfQUtMLwKWg9XzO9pHZMuZ2XFr/AAE9XYIyO0AfrpE4iSJePY/LlgdWmRSQ+SC60Zcf5oBQ1mk3PD5GxwZlrgVfO90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K0erhRtu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K0erhRtu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79FCC4CEEE
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750760993;
	bh=kbYLE5qKDAMNQRwz0iWoJfv+TYJ14HIVcntniFW8P7w=;
	h=To:Subject:From:Date:From;
	b=K0erhRtudhUxwOKWNFWNsqzBIxGRh3bIbBa1ibwU5b1Za2hwpQ3OaMzFMJ4d7Fpz6
	 rSciBH82t/DFEhCrz333YAA5DXu/jmmKXy0lWQ2S8LgKjAm4H9JBjRGjxjzJj3/Hu4
	 7Po50xMgG5eRben0NCll6yfeKxOYc+DNO5CkYXAcQ8sP8W+lR69qOnhQzRuHTSxxPX
	 TTQjqT74BRvjE69ziiLJVb40PDDyjT2epLb+df6bTeyXsz0R/bJle9O0m+bX49Tcqw
	 fQG0k+zrsHLaoyeS/n8K6Wetvm2Qq3sccdiMqHCL0QzdStk3snBCbQs13DSNmZEbSD
	 NcBz5QcLcaQqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98FDBC77B7F
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175076099361.28620.1486316425543744238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5c2c6b75d50212a220651e1ca5ed5d1fb4592b5f4bd51ff7bb237c54fcf1b52
Date: Tue, 24 Jun 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750760993
