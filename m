Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FCC0346AD7
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 23:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774998894; cv=none; b=jZfgXy7hJs/qVOdOyW/iNyT1DNnN5MIk6szto9ONO9wwCdn7pZ9mrLb5zTRZXBwtOP19L1wn83kFNA/Ytd7ZJsU0BCxmziljMSP7/L1xy5NzNIzfo1kpki/5x5Z91inB23I2/Y4LKAvu1DupswwwiMcMKwqx+ZtviB8ssmS5dXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774998894; c=relaxed/simple;
	bh=TV/G+JQZB+QBlbDxwtL8VM2d30ldkOs39gpCqE+nsQ4=;
	h=To:Subject:From:Message-Id:Date; b=JqKHTZ+L5LbePbvWXFDLpF1R1hLE7Up6M/Kai9Ntp22L8IntQN3hRg+XcjKSKE7T56uvVSHot7weMLkGJsV0QFS3yv3lUrfmpbtShE2uUwCb3HVnHEvzCXxXJ1fGg29wXO9dSzQnqCaB1K09UWD25ocDGXxOgxLbE5rU2kX/fyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ClryuY8b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ClryuY8b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3319C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 23:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774998893;
	bh=TV/G+JQZB+QBlbDxwtL8VM2d30ldkOs39gpCqE+nsQ4=;
	h=To:Subject:From:Date:From;
	b=ClryuY8bYrQEUn+FmYaHwi6iRmEkvZpSXuP6IXt0l4iRrFacqXKEReMSx97upGjJ7
	 8ceju2G4oaJdWVda1DCk5CW1zAa603lOLhmPNswgvJLWQd43qxCMP2NRJHVAmaiS8b
	 jfHz+Ji/kJPkBZQQRCOVPvORNy+sn9ftkTNCsm5UodqR7KqMoB9DXrVdyuqV3WtMUp
	 bpQFtm8Ua9Cs7cRcqUaYTKKulKy3AxMSsf7yHaw1ISxAKX4UfOGBG7fgysFwM650g7
	 2RqNxjAJ9lfWGLMEYOZgksxRasNiT9KJHyUy/bBrMIUS68LJ03xZCU6DhSFrB2G61E
	 UwHhTyqM+yo8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A1210F9309
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 23:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177499889359.23650.17352913332632709294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f384eb8872c41aed26ddd2f44fabb4ce03cd745f998e9588db0f486891da635
Date: Tue, 31 Mar 2026 23:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774998893
