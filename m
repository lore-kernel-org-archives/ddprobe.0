Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2950BEACE
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749688794; cv=none; b=niAJXWg6S86iBEe6T24cQekrt2/5n1SRb2vic1y2KQqpQYbMvHCSTabxsBp+gPGcbjgPjTYUAA0WitC9NhUhzI3DRpsQrCrXzJLCnEMEKkf7JPe0OzBBH8GPLhP/yqo38oPm93ZZ5QM8MvI4pm0kEZErSXrNo5JoMomjm238Yxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749688794; c=relaxed/simple;
	bh=yRhdAhQyWmoKCWrKIpPwil7sfQsbNH6yK84WxSI5PUY=;
	h=To:Subject:From:Message-Id:Date; b=Rhb5vCAt+fwRxEPkS1QhWZmGQ5lLN2K8crl8MgyD6ITfz6ZKuy5rvRt1cNj8JPrKeid4o8zRali6qUJkFVG8fbiTZKBuXJlLyJjRoayTQtZFBJYVmwGKD63iloEaG5nXqX0248WbnjXwkeDKqtMfxi1Xl1nznyzmIQfRsxJOli8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N8BgkWfS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N8BgkWfS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40BDC4CEEE
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749688793;
	bh=yRhdAhQyWmoKCWrKIpPwil7sfQsbNH6yK84WxSI5PUY=;
	h=To:Subject:From:Date:From;
	b=N8BgkWfS+mRADfhvepIx1AUqS6JiBYOWmuwHzhl3isv2+oyw4nsa4v5s5/SkuZ8St
	 2vtxVcZBhGPv9tVUuXbd4FFW+DtRytbxUhDoKVTGEzbmYLIRFg/pwxayoKg48BGi+L
	 BZPIsCiKh9+MTww8wNOC/FrOOfiK4Ir1GM23eSXcGqKPCKgvGUun8e5i6zbf+GXvuA
	 r48+u+WvMxRrOd/h4nXNx0NdAX8080LwI8TaiiQP4vyV5THy1hdoE+ZoVv0p3NMPl9
	 njRrwykLqDnVPbX+fs7lHDv7j2Oetb9ClAs9n5Tj7BOTt94pD1Xt9XQJP9r4xqNSI+
	 cBGOOjfGRWBUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90324C71135
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174968879358.9178.17981094493951827494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 641a3bc7611b5add3daf88097314d7fdfccd2bca6be333cb711ff79f4a9d1fa7
Date: Thu, 12 Jun 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749688793
