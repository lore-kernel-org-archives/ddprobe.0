Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0FB275AE6
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757713194; cv=none; b=W5gH9IN3dBZ2prUzu99cEUOhO36SL/40SoCc1Tz5Ft6nI3klR2d307N7Ht/tsKIJ8AKNleous62WBAtRiX/8pmfvgFFuFzcE+H73fVXfhtsX9cAZeXt1hEOSctjnt32Ph+x32G8VxwIP/cPZ5sFtHQGE1ECzK+6rC46BibkFxZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757713194; c=relaxed/simple;
	bh=8qjjhS3d9HSIdNWfGBIQ5N5R8QRt3xzwQr1YzmdxO3w=;
	h=To:Subject:From:Message-Id:Date; b=X/gvrmVdfwH8rsrH9+XhZf3jGhrEfH8ax7SZ9w4+SsoOJB0Q5EiqNVNb508cNmd+XBv8harfNpXmom4tW0mVrlTcP3l0Tp5W94AemdPpnFhFBHG9wXDnKlIA8fZiI9Y7+WM8CTZFMOeKJYaC5xwKXq3LwuUEyeAYsBsr5H8v/Ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V/lA5leo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V/lA5leo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C05C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757713193;
	bh=8qjjhS3d9HSIdNWfGBIQ5N5R8QRt3xzwQr1YzmdxO3w=;
	h=To:Subject:From:Date:From;
	b=V/lA5leokyLFufE/UANa3CueU5xyip8HIlYUJuDSHZG0v2mjAFHERyfktfsoh940M
	 AA79L0MTjS4fRak7zEtxEDPAFmpDbHqcg9iUz4CWDy3aoEKbl6TQNZn2HnCmlyGZPA
	 uqmxbivfEuqF+Sdz5ypUSVBygX/0jWGH3S8rFOQW+4k8FNjEmCRbOX88zX5ry+a0QS
	 VAXIk77ZmjFjjmqj6+C8fgGT5t1zKT21IGOl/YuPTV8K8WhnYWKCuj8jyHSrHtAuiy
	 5U+yz53sf0EqWA4anYv79eCwlQUFdIqWl37hcHQZCY4Q2jg0lp6+ox1oNTT2GbOAOW
	 q6hzjCC5l+lpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CB1CA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175771319359.17899.8379003060813103526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59db58c8eaf50266a7a687a9432d9ac56db9f667c6d3b95a52d0c88e5ebf5186
Date: Fri, 12 Sep 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757713193
