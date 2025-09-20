Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F8411DFF7
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758385794; cv=none; b=DdBZCHC601c/Kvhk19X0FICMVIXLuov2uqjDfVmErJKeAx5D8q9ypW1gIvBqly8DICqXjMA07BnRUImQes0H9SfKssIvioWurI0v/vX9S+QAqDgsJ6DiZYai/1T0xNSPT7dOIxdKjm+O5+wZACXDz1aPcBifsFp/IoKxixDUNys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758385794; c=relaxed/simple;
	bh=uJGLYN4ZLAUmmOMU+KWZgefauHKGtyd7KL3GsPzOrZA=;
	h=To:Subject:From:Message-Id:Date; b=arFzyo+0Ph6yacNi5rnQRqgh5byMOvkxur5VGhGYQU19OxzV2iVFnISYOddEtEe+OgRLaWZl6yMkdXT0H5k3hVBuVZqG9ITv35OIBRt5eQpjkfkqz9JgbKjT73AoAYBRdzNRig2xzouj8M3c9DFB4lvYH3USaQi/lndlbZvWXuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qmJGRpIj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qmJGRpIj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9BA7C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758385793;
	bh=uJGLYN4ZLAUmmOMU+KWZgefauHKGtyd7KL3GsPzOrZA=;
	h=To:Subject:From:Date:From;
	b=qmJGRpIj2UkLEDiRT8yE1Zm8eU5m0pM2vpjMcpUsJXerUp93H5+yES+Qvfv/vyUqM
	 kFKapj4eqSuZfnDn8zXXgIzKvIAMFlRShmy/O6ph22osDTim+M93NlfV5Cn5JGcBvY
	 zhLOiwnjwbLCZocb4htVGbAl6X6jAhY4Y0DetOyzqa9Vp9k2fqHbEipE1tIRsV3vjg
	 n7UmLNpsIRotvQNJpRtJ0fVJYyDJ78bS/il7qLjvhPVERkzgx3DJwBokiYwzqT2IsX
	 yobt2YfmxROEAJqHTpCGsIh6hPGdHrKIfunkpNX7rL3konCu60pVSzHOCwYguHVJcE
	 KPzGBSE5m6CDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972C8CAC5A7
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175838579358.10180.1083406665672612839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b5aaedf9eebfdc18aa53e80e1ed2d810c89a11ad15525a9766ee5c94203c80f
Date: Sat, 20 Sep 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758385793
