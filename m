Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E34C1F30BB
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789831834; cv=none; b=oH8j78oe+uQ0+AIiG5OyVwDaXbMIAHeYRN7Luvb9g3YrBbUeth4cl0XZr1G8cQzk0EftdPi3MZfviOxekIl5+kiJ/vtAKkU7XbrRtHrqKEt2fkyuVD03n1zH8KMJ2rPPR7iQU3KkIIDHWRy+olAMxQWSQQJon6N9wHkylh57oFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789831834; c=relaxed/simple;
	bh=rjxrP0OdfwSWzXZMUhs+IJ7s35xQRo41oKmRwWWKJOE=;
	h=To:Subject:From:Message-Id:Date; b=oy/qpVsOnm0JzPPy3uiUklcmtsJewKfigZtEkBB6/JsanNX5tXrbGFmYwCs8RWjafNtBqW09TKsZWwEY+CwoGAL8clTi0gcHvzUsZ/D5nwQbTw3hMPTvA1zuEI+QL0CgFinHjgEZI+7y1HPJnU2xFtKCW6Cr8DEld2cEbEK7mg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oI3ZNwiG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oI3ZNwiG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE375C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789831833;
	bh=rjxrP0OdfwSWzXZMUhs+IJ7s35xQRo41oKmRwWWKJOE=;
	h=To:Subject:From:Date:From;
	b=oI3ZNwiGuajwFDUfoufWpkjqFXHwqn7SHAIlar3Kp/x+7l15obqwiHRbNMCV0JLFj
	 plpDLO6VZU+UK4pxw8h6UJtyDXNkGX4mrTy5KB4jkbkwIxxnf2pcbS9FOGuEbVoc/U
	 OvMjrXwzs83CJMFe38Ep4GL+EZH2gJRhc3kmlj+50o3S94JzcSgP7SogEiQAg4+2pm
	 xdHnNpJFq8WAvrzvlVmtRh4s+jXA5Ht8pyNvzHi6PhkNdtwITNeTbkIcUxQLGYfDeL
	 7762DXWwBtRGJRLgfDdtujFUtMZgMkXw3ncDhmGuLXSAajQJsyGjRcsdY3LQIZrkzV
	 6CWtQzbamMBuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AC2C982D7
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178983183368.13019.6921782325905276261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76618a5acc7f5c0228ed5453c8176bc3f61625ead28640b48faa7ff2d2128378
Date: Sat, 19 Sep 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789831833
