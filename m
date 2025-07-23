Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF9317333F
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753234194; cv=none; b=b+x7QHzuF9pWgdWyvmlqCVWodRR9xgBBW1HkTxTiGaknmDGP0yle8WtegaB1ZoVnr/WXXT8c/JoRtQshAS72jv1n/HgP7ukSvzcH28V2PJz4oLOQULAAZFQffwus38q+Y/iw02Vi1epgIOwx/jvz0DmeuTvTOnSEaqZXoZamdqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753234194; c=relaxed/simple;
	bh=n6eDS5vRDYNNdwEloJF3AYJatQxl9T7dF/i7GgRRokg=;
	h=To:Subject:From:Message-Id:Date; b=Kj4tK0uctxvMbVs1vDsjgg05zlm/dfInvPbtSXfCHWEgou3N7qjte2WvrCFcd4APfP8FRJU8K8WMZ/83Jns+4t2QcfQGvNSf2cH696X0cBscckeujvspNotj1Job5Nl4DIFrC2n/FFjyYrXzLwEUW9aiQ1zdf1hK8s68AC1p/l0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MwOA0Aum; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MwOA0Aum"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B6CC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753234193;
	bh=n6eDS5vRDYNNdwEloJF3AYJatQxl9T7dF/i7GgRRokg=;
	h=To:Subject:From:Date:From;
	b=MwOA0AumO4q58DrepRX6AeJqFwGAJb2uhI++nrnY1VyrWcKdVz4wbjLnagJYkQMtl
	 rpXX14SdOySBZXo23NM/N0kfF7hQ7PmoszrhdLhpR05+XY3PlHKndtrFPq9pJmriMs
	 Ysm33yQxzgitR5VD2By9TcVEHlsUxArIdlaJQQweGOuUK3S2HJJVWVbaZYboe4XYOD
	 BzWQm3rS9RfqJ7LmjA8RPQphRSMI1jeRJm59wLDWP0/BeiFY+mhXb93ZQLl8MnIrUu
	 LHFYYKdNmh57rQbRxyx5FL2O5WIZ49Zs47b3U+bnsq47ofswtajs9FV2ZrQA2Y2PQA
	 4c/snCkcOgOtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965F7C83F27
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175323419357.867.13753589558725969282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7aeb6ab5f758ffe4efac39cd79f1de7ee6d075dfd2dea024b3517247760ca96f
Date: Wed, 23 Jul 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753234193
