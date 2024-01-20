Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E2492106
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 17:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705770497; cv=none; b=O5XzCFLWAUAO+6j1IYT8zNddjCWzDJn/ANLgCNiB4f3vVGUOMXQoBm8kofSWlN9BRKGpcjhaemG8ehmSJqd6bsR4aCkXHzEfrFw/i9rPaROsZTmL/4J1Gyhln1C1EnEuW21IQq8pgmyP2P4Jw2AyavQZgt/maCaFWT8cCOvFmPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705770497; c=relaxed/simple;
	bh=AV6vMusNkaepDkpdHT1CBtml1malUq1ICjxqJAu98OI=;
	h=To:Subject:From:Message-Id:Date; b=IF1aHYvmgFkcfd0S6RvA4NUHQLm95HJ4s07b+9IbCfmTlBiAoscMNd5ecYURNasyj4dFaMZzSUEsr/5gyYjiU9LVsrJ2+bsvw+M8qVteWeeiwhUGBP7ZGVEdS095W3lhiMmWHOKHQuCOVdYT4MJg45lo5DCPQJ+YOqNtixPO17o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dVGZxAU/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dVGZxAU/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73F75C433F1
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 17:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705770496;
	bh=AV6vMusNkaepDkpdHT1CBtml1malUq1ICjxqJAu98OI=;
	h=To:Subject:From:Date:From;
	b=dVGZxAU/WZpDjsu+nRnOjqZE/OEBcPSFsruaAjW+PYUxgoZ/IDHs8wLgaopL6f3zC
	 HddBIo3gOZYieb0Xk0TpUj8ftUSUYJbvNVvNjx6liT98PJmdG2FYgLZMeM9liW4kci
	 f9qoWujiZtF0ubServGAXb6Xfuh8uPtM/0Q0YFM2rhpcu57zMcq4UR3m1I5wKjGBxm
	 42G1sVUMjwkbwOHEPMZm2GMeO51/vIsNZAgU0JdUulZrl8Y1rpwA/8jlHR93jiBpbj
	 tRodGS9Dn3vY+oMZWeelB2mQjaxd+lKL8fQ/Wvwpe1p+Q+LEO2yLdDrnhyLaU+Royd
	 bbmCap0eD7XAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C367C47258
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 17:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170577049637.12223.4905811449720011459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8102473ed93791e96940bb1233ba81927e165078a8f486df08bd83b9243a241a
Date: Sat, 20 Jan 2024 17:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705770496
