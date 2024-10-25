Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B1321217F
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729863354; cv=none; b=uCfnURYSLFcaCT+SYc5X+uMS9fMJ0Gerea7rZzlAOQckZdQugtD71GsbdOj6nFJ79HTgCysESkZzAm+pqdOjq+tS24xQhY9OUb1nOtiMTf/ufY8sj0K8EDNIpGjEGHVW4+qfAZn9KbaKg+jQNzpkJmjMrtfglZ7G9X/JXW3AbEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729863354; c=relaxed/simple;
	bh=LT1Xsl6U/6Wwp5zP/aosXWrtE1AAInZljvx7rWjAmkc=;
	h=To:Subject:From:Message-Id:Date; b=Z8Y7msH8PZamk21ltprT9ojQ+BA7RRRo5MeRX+Z/EV8TergSHD5xLDdKrIrC/5zKNW/ob0blTtClUEeXYGtDesv/AcKIwGmgr8QRdCIeEVNxd2+JQBKwkzMezpovZmyyGvFcOUN1/dthAESaTasnLlEtPGoQiy58MVkavGI0w5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G5STTbVH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G5STTbVH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6457C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729863353;
	bh=LT1Xsl6U/6Wwp5zP/aosXWrtE1AAInZljvx7rWjAmkc=;
	h=To:Subject:From:Date:From;
	b=G5STTbVHAjdPOCA0ZFuHYQtK2OCpnOodSvigkH9vCGanDXrenjWqmQ3AWzN7C1WkG
	 fI3/waVLU2b/9ymtDEpcYfJIFR79oxG0+ygIZ0YUgRB6k0XHpwnJ89N8qr4Uly96nT
	 BsS0rZAKDPn6bJui51+fOH/QqYhqCNUYl7cOjkrGIybHcB6DYPAxLrZkiFRAQ/+x9j
	 dzH1koFuqmMKp4IDrEKTPHQJOkubgw6YSEdK+pY4+V8IiytfiLYCEmwi0mogGOi/Vo
	 +1P6ZR/GQYhqlXWwYphfIsUNz1TP3sj0SQBqvUYKLmzRhfRjNFVxYO6gZzm5Bz6cG+
	 5HyZzr7h8WsYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92965D0C60D
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172986335359.5702.11141736417896283542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca0925ada2a888762950e0a559364877f6780a1ee3eb3d9d80627fcc1b6f4afb
Date: Fri, 25 Oct 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729863353
