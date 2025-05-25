Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C93919E819
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748168994; cv=none; b=ep34iitagQtURWS5RFms3tWKNFhUnamjWP/jYfhTSQD1Cu7tc0Kg3k2jgh66YH7tOOwygyb8foPSpgM/VsNL3BaLT72xO/4Cz3BHVBy7zp9OEZyZsom2B2A1YHCvYLyINDxEzDGKXdMHhY5A+yiv6b1deGSmd005TD//WyL2O54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748168994; c=relaxed/simple;
	bh=SOn1R3U6jeGJyDUpK0oPfHerGc+TLuD5imtG1OyBZbo=;
	h=To:Subject:From:Message-Id:Date; b=lrJYL6CmxdiDZhSTiuSpdm/uHxKvZ/4yp8W6w7LLF1mIstWoN/1XpOqtYYfHxRrWSNT5TLHRE0DKFAmQJd4NNN/2dac/Zdmpg+87BGBLaXyd4/1uDYYsaH8uDnJQt2YRZF85HNf3zVlBaYBOzV2OKscYb26HiNj/zolv2x+25nc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e6a+l3Xb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e6a+l3Xb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A93C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748168993;
	bh=SOn1R3U6jeGJyDUpK0oPfHerGc+TLuD5imtG1OyBZbo=;
	h=To:Subject:From:Date:From;
	b=e6a+l3XbLUIusZ5/oX1vgqD+6Tuwr/cYgwtjpKsbKy0kf/wH+8H+sddPXysHo2fxf
	 rNddjYSQU3AgQqeb3CzR6bljahSngdfIXVASsR9gDWC4msbvNVSYpVbBDC8ZLYgJ75
	 7i/JI0jY6GHl2fd0gQqVKD0ZOE0T0kiSDIFhgwk3g3BZgVKULF47DuLaqV8Ehg6Ctp
	 g73n5m0AtpICADNknrehMoeGA//2jLVtRJAutl7WvcJ9JKE0kQCFwD/9drKDhxo5ck
	 Z8lOHoswhqi7Ok5CjVa+jThMkh7KneqA74nTfyfi8q4OhG0rau0G/qE6OvrwaXI4IM
	 o5HYU2D90kQpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B24C54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174816899357.15744.16031737034169898966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99183f216808430f5cb2e6e27d71fc4780d3e60b16ec27a7800971240c88e384
Date: Sun, 25 May 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748168993
