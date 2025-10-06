Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2568017DFE7
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759774194; cv=none; b=YNMh/ujLKiqOweAcl8S+cz+vEwUND/UQbB7ciLd4KJhwR4cesOLba8T/d0ynR69BemkkQi05E9eZkF6tqJZuyjL2CtQVY7jocxJrXoqPNGZt9edCkUu9xVHJNZvpzoZfkFaZEILO8vvkoU19JVLvkmKh67IW+vmzx5x8ALNJaTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759774194; c=relaxed/simple;
	bh=z5gOmqHN3xhn4w3zHBEnVQloLcdPCYPXu9hKNF9aHqs=;
	h=To:Subject:From:Message-Id:Date; b=ZbjW+K2fata+nG5b4NHJJxvVXB1XFVusg/nNc+OAslQMoR53DEsc93tbJjQMnIE02vFAnGi1OPb4RugkhfKNzptJ7m97kZJTnEeQSI1gRR775guESfiaor9ayteQOlMSkszIn0hlP1Et/Rj7vqoKw1EY0O0PccyRxqa4L9gHksM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HURmXLEi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HURmXLEi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F92C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759774193;
	bh=z5gOmqHN3xhn4w3zHBEnVQloLcdPCYPXu9hKNF9aHqs=;
	h=To:Subject:From:Date:From;
	b=HURmXLEi45/m0+kdSq5OUDoTcLFR5W8EmUaMha9JBUF14Jz96BfnFMmIoIchsIoES
	 Wb34TticvdPy3LR0olG4NSnw9eIAZKGW0OpTdQI+WGcQ35VK9hUL9yDynrifgHHdE6
	 yA3/kwc4unU3W/6q4feSjM/ofG7wB3pa6fwAaItN5ojcLqU76nqwepz8KUeM4/UL2+
	 3TKdr8czN9UL06G4WplLzbTSckPBgYoudJPv1tOqZ3+H6KcPKnh+uxUbyBANGtrB59
	 GkeaJqxMbFR/6DfDnJKnJ4eMXStNtJ6S17tJJI+8RoruLnLrIuC/go3VL3lMtxjk+I
	 yr/YTL8iGviaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D05CCA470
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175977419357.15979.4615532287078972740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebdc302a8c21d433cee3b8cef8a5cefbf7550797f196a26aa4bdd7ff33dcf414
Date: Mon, 06 Oct 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759774193
