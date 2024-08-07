Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 325C979DC5
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723053354; cv=none; b=oM6ZB3S/EWSyGE1rbPZqED8vgdaxjllZ++k9A1CUuZMlbnO22QqidbCdakkiqL2YQz95PQrtupKZqXd/0ZLeUhcY+AyAy2SB2gZmxVpcNxflp4shtHZ5n1BHKH1n5FdRgn0VNiOJWY6bu2Bt7IbaD12jfsdp8nDfWg3/cJ7gLOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723053354; c=relaxed/simple;
	bh=nwoMolVDNoSsrWnoy0uRWQwFhEK7RBq3FcANCSFrm4I=;
	h=To:Subject:From:Message-Id:Date; b=UlMmmdv/59jUwIX90ECeBqjGn48cAooQezsW4pU2H2eBuGNHvQmI//MtQUMrJjh1/Zzrs3A5Qm+4IDWMB1Udo3xpBjePsfZRq109Ceqre+rvFTt2/MBCxqbYaaEHxOMhJ806l+22XW/moDFamNakPl/yFszsKl0qZynP6Es9JP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FY6sNcwB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FY6sNcwB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B15D2C32781
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723053353;
	bh=nwoMolVDNoSsrWnoy0uRWQwFhEK7RBq3FcANCSFrm4I=;
	h=To:Subject:From:Date:From;
	b=FY6sNcwBDgInj/fYGbXx8x1vLxY1SfvcPStWmctYregPDQLQ3CNazQyamZ4v155bt
	 feW+Cp7NDMnLyolk4DZkT3H0oYpXWqWAj0xp7aGudbJKVIRhzNCUiOghvQpsR5YYzz
	 J643aJWulnlekCTFkd7X6qpXwITj/UbeC8SK6KrO4Q5lpHdKdT/wtafIiwRs4ApqKh
	 +mZnDr/LvYst7TVpTE5u+8bd4BjG7NxFinwL5thLs4IX1zbekxAdQgYhY0PXkE7fXU
	 xOxUYjlV6G6QLjAwolNct2xmUJg6BTxe1iQbNB4GS9ktOOTCjUHO+jW7WjCo+w3cqi
	 lVhf3D6Ym9j3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D73BC3DA7F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172305335360.21715.10997389327919511799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3bcf0dc8407c5cbe0c414c4a2cd9f39e308fe7f70d27e8a4d9ba2730b2f3d3a
Date: Wed, 07 Aug 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723053353
