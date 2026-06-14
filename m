Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76D00397AF5
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 14:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781445994; cv=none; b=iF85Ik3t3bVjLowDNKGyp4eyWrkfnyQxsMJnFSu6r8c9AXWyuUrXrdKYj0S434vBT/fozGWlkKl2KtWDAz7NtcYu+whJGbhjlqKPLhCNQs3285I4gJq7NYuEU1sZwvPEHGh3ZQdbYCHUkYp3+EwXWSPgNwc5bwpC2dKapIpU7s4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781445994; c=relaxed/simple;
	bh=OWm9gzYfXH1yu3lgEiVYR0GarnvduD343xi5dRVK5B4=;
	h=To:Subject:From:Message-Id:Date; b=jhbUeAQPAKghNdr0Qo+h379bAly3GfPX5nrmAbZTTa+HaQpP2YJ6e+kzX6T41q/oYTKTpvT8mA/UAd4OzBW0/OOj0sIXXtlgF6eNu7ZNYxYURwqPJKtlJ2664XFVSIRxshqHLDSwTIFr5WAu9k6R4Fx5HGiQnvW18V02gD+C3E8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aAKNJ5EN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aAKNJ5EN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAD07C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 14:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781445993;
	bh=OWm9gzYfXH1yu3lgEiVYR0GarnvduD343xi5dRVK5B4=;
	h=To:Subject:From:Date:From;
	b=aAKNJ5ENOKZkrPRjNOByO9dVuZZ5kD3J7IP0s+SkoT6PQfklyQdQEib/YZkg7zd+o
	 vVk6pfWL4MXhtTzSLIa+HqoaY+DJOmEJWkc+hn6Sr4s34nWnBWjOwAnC6Gy2EB2dT+
	 bf50OBeLxhfVnIQ4EUokQUVEvdwVzJ5b984eC5UJrL57AupAx8b1JQBZFFxdwuSgFg
	 Y+qEBBdBclzR4QV8ShuNIeu8fQiSEdgs2qjCA12ZiNbtaf7iMQeM+Oogk7kzjGLH50
	 jTAB60TbP6XedvarOsz2IOVbNAg7nL1oTTLl6VUyApTdxP+ZoxMld3MzU29qrHeoT/
	 MzLbWY/K4BNLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC52CD98D2
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 14:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178144599370.9084.10855423603182906542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f6ae9a523e3de5e7a7f0b25571680935840c448258a91381e5c3cbfc7234b2d
Date: Sun, 14 Jun 2026 14:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781445993
