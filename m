Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13AEC21ABD7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769612034; cv=none; b=uccksi0sTzUJZrUOW47tQGj1pLe+kiTTVRmGBl7JgJ/CQRQVpHUvARE7WMPpgRRWGTuHSrgWD8n22Yg2ko/+hROHm/wEdfGuzK2HoXKBcUwSe9f91299SaEhB6JBP1FobMTWJlNZZR7gVyeXALM33iOLky6pRmqJT+gbDBVDtBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769612034; c=relaxed/simple;
	bh=etqnBXWGU8fG8USlpax8i+DhuyNJvQ1TNTPudzQ0Gzg=;
	h=To:Subject:From:Message-Id:Date; b=RXxRB8l49YDg0ZN6EXMT87rpdPpnlgUyw3xSiBlzHPhPcQMBmNKN81fspxw5zyiFn38ifjNcvBXQF5HdltD9+gySXB8GgtyT/lWp9HyTa3gNmlyqXtIJVPz1k8UL6Sn/FOVkbqOQljU2hDEfvKXb4l8h+jTLfgEs/YlZ0MS7xYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I/cQJICb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I/cQJICb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AECC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 14:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769612033;
	bh=etqnBXWGU8fG8USlpax8i+DhuyNJvQ1TNTPudzQ0Gzg=;
	h=To:Subject:From:Date:From;
	b=I/cQJICbUNN4Es8V+WE683co9ldHKOl7ZctBYuNj57foPrQO/XIm5GJ9iQicqd7CT
	 D/c14WiBR4U10jVbnB0Mxsl/rynJr/nq0aC4xJRAHOxszEe0yvkY2crL88ujpQSLgn
	 e6LtEHr6l5fC9Ub4kkGtNP01LUkj9zwYjAPRoJBB1jft+4ERoa1IBXeCx1iMZAtd8f
	 PFlC8wXYQt0Cy9D5/9RlBPEa0TYx6YsqpoGeZZzKrAZv6V3mdqAHDgN1rDLDV0w+Ug
	 Li8dk0YS/mkBiqoBgpfJpAJghOZGGXzEJsL2gJnSoJ8L6fiNar/vOkZfc0LJ4s6add
	 2J0fK4ARIIVqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906C7D3F076
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 14:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176961203358.6659.13151763398454830510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b73c9e20140125c818eca3cc17c369c4f2b243b11bc75618e33b70d9f4fcb728
Date: Wed, 28 Jan 2026 14:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769612033
